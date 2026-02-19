#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "draft.h"



static draft_t *draft_create_internal(
    char *payment_method,
    draft_expiration_in_seconds_t *expiration_in_seconds,
    list_t *available_payment_methods
    ) {
    draft_t *draft_local_var = malloc(sizeof(draft_t));
    if (!draft_local_var) {
        return NULL;
    }
    draft_local_var->payment_method = payment_method;
    draft_local_var->expiration_in_seconds = expiration_in_seconds;
    draft_local_var->available_payment_methods = available_payment_methods;

    draft_local_var->_library_owned = 1;
    return draft_local_var;
}

__attribute__((deprecated)) draft_t *draft_create(
    char *payment_method,
    draft_expiration_in_seconds_t *expiration_in_seconds,
    list_t *available_payment_methods
    ) {
    return draft_create_internal (
        payment_method,
        expiration_in_seconds,
        available_payment_methods
        );
}

void draft_free(draft_t *draft) {
    if(NULL == draft){
        return ;
    }
    if(draft->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "draft_free");
        return ;
    }
    listEntry_t *listEntry;
    if (draft->payment_method) {
        free(draft->payment_method);
        draft->payment_method = NULL;
    }
    if (draft->expiration_in_seconds) {
        draft_expiration_in_seconds_free(draft->expiration_in_seconds);
        draft->expiration_in_seconds = NULL;
    }
    if (draft->available_payment_methods) {
        list_ForEach(listEntry, draft->available_payment_methods) {
            draft_available_payment_methods_inner_free(listEntry->data);
        }
        list_freeList(draft->available_payment_methods);
        draft->available_payment_methods = NULL;
    }
    free(draft);
}

cJSON *draft_convertToJSON(draft_t *draft) {
    cJSON *item = cJSON_CreateObject();

    // draft->payment_method
    if (!draft->payment_method) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "paymentMethod", draft->payment_method) == NULL) {
    goto fail; //String
    }


    // draft->expiration_in_seconds
    if(draft->expiration_in_seconds) {
    cJSON *expiration_in_seconds_local_JSON = draft_expiration_in_seconds_convertToJSON(draft->expiration_in_seconds);
    if(expiration_in_seconds_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "expirationInSeconds", expiration_in_seconds_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // draft->available_payment_methods
    if(draft->available_payment_methods) {
    cJSON *available_payment_methods = cJSON_AddArrayToObject(item, "availablePaymentMethods");
    if(available_payment_methods == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *available_payment_methodsListEntry;
    if (draft->available_payment_methods) {
    list_ForEach(available_payment_methodsListEntry, draft->available_payment_methods) {
    cJSON *itemLocal = draft_available_payment_methods_inner_convertToJSON(available_payment_methodsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(available_payment_methods, itemLocal);
    }
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

draft_t *draft_parseFromJSON(cJSON *draftJSON){

    draft_t *draft_local_var = NULL;

    // define the local variable for draft->expiration_in_seconds
    draft_expiration_in_seconds_t *expiration_in_seconds_local_nonprim = NULL;

    // define the local list for draft->available_payment_methods
    list_t *available_payment_methodsList = NULL;

    // draft->payment_method
    cJSON *payment_method = cJSON_GetObjectItemCaseSensitive(draftJSON, "paymentMethod");
    if (cJSON_IsNull(payment_method)) {
        payment_method = NULL;
    }
    if (!payment_method) {
        goto end;
    }

    
    if(!cJSON_IsString(payment_method))
    {
    goto end; //String
    }

    // draft->expiration_in_seconds
    cJSON *expiration_in_seconds = cJSON_GetObjectItemCaseSensitive(draftJSON, "expirationInSeconds");
    if (cJSON_IsNull(expiration_in_seconds)) {
        expiration_in_seconds = NULL;
    }
    if (expiration_in_seconds) { 
    expiration_in_seconds_local_nonprim = draft_expiration_in_seconds_parseFromJSON(expiration_in_seconds); //nonprimitive
    }

    // draft->available_payment_methods
    cJSON *available_payment_methods = cJSON_GetObjectItemCaseSensitive(draftJSON, "availablePaymentMethods");
    if (cJSON_IsNull(available_payment_methods)) {
        available_payment_methods = NULL;
    }
    if (available_payment_methods) { 
    cJSON *available_payment_methods_local_nonprimitive = NULL;
    if(!cJSON_IsArray(available_payment_methods)){
        goto end; //nonprimitive container
    }

    available_payment_methodsList = list_createList();

    cJSON_ArrayForEach(available_payment_methods_local_nonprimitive,available_payment_methods )
    {
        if(!cJSON_IsObject(available_payment_methods_local_nonprimitive)){
            goto end;
        }
        draft_available_payment_methods_inner_t *available_payment_methodsItem = draft_available_payment_methods_inner_parseFromJSON(available_payment_methods_local_nonprimitive);

        list_addElement(available_payment_methodsList, available_payment_methodsItem);
    }
    }


    draft_local_var = draft_create_internal (
        strdup(payment_method->valuestring),
        expiration_in_seconds ? expiration_in_seconds_local_nonprim : NULL,
        available_payment_methods ? available_payment_methodsList : NULL
        );

    return draft_local_var;
end:
    if (expiration_in_seconds_local_nonprim) {
        draft_expiration_in_seconds_free(expiration_in_seconds_local_nonprim);
        expiration_in_seconds_local_nonprim = NULL;
    }
    if (available_payment_methodsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, available_payment_methodsList) {
            draft_available_payment_methods_inner_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(available_payment_methodsList);
        available_payment_methodsList = NULL;
    }
    return NULL;

}
