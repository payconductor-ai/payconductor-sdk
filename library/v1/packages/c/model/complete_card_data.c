#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "complete_card_data.h"



static complete_card_data_t *complete_card_data_create_internal(
    char *cvv,
    complete_card_data_expiration_t *expiration,
    char *holder_name,
    char *number
    ) {
    complete_card_data_t *complete_card_data_local_var = malloc(sizeof(complete_card_data_t));
    if (!complete_card_data_local_var) {
        return NULL;
    }
    complete_card_data_local_var->cvv = cvv;
    complete_card_data_local_var->expiration = expiration;
    complete_card_data_local_var->holder_name = holder_name;
    complete_card_data_local_var->number = number;

    complete_card_data_local_var->_library_owned = 1;
    return complete_card_data_local_var;
}

__attribute__((deprecated)) complete_card_data_t *complete_card_data_create(
    char *cvv,
    complete_card_data_expiration_t *expiration,
    char *holder_name,
    char *number
    ) {
    return complete_card_data_create_internal (
        cvv,
        expiration,
        holder_name,
        number
        );
}

void complete_card_data_free(complete_card_data_t *complete_card_data) {
    if(NULL == complete_card_data){
        return ;
    }
    if(complete_card_data->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "complete_card_data_free");
        return ;
    }
    listEntry_t *listEntry;
    if (complete_card_data->cvv) {
        free(complete_card_data->cvv);
        complete_card_data->cvv = NULL;
    }
    if (complete_card_data->expiration) {
        complete_card_data_expiration_free(complete_card_data->expiration);
        complete_card_data->expiration = NULL;
    }
    if (complete_card_data->holder_name) {
        free(complete_card_data->holder_name);
        complete_card_data->holder_name = NULL;
    }
    if (complete_card_data->number) {
        free(complete_card_data->number);
        complete_card_data->number = NULL;
    }
    free(complete_card_data);
}

cJSON *complete_card_data_convertToJSON(complete_card_data_t *complete_card_data) {
    cJSON *item = cJSON_CreateObject();

    // complete_card_data->cvv
    if (!complete_card_data->cvv) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "cvv", complete_card_data->cvv) == NULL) {
    goto fail; //String
    }


    // complete_card_data->expiration
    if (!complete_card_data->expiration) {
        goto fail;
    }
    cJSON *expiration_local_JSON = complete_card_data_expiration_convertToJSON(complete_card_data->expiration);
    if(expiration_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "expiration", expiration_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }


    // complete_card_data->holder_name
    if (!complete_card_data->holder_name) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "holderName", complete_card_data->holder_name) == NULL) {
    goto fail; //String
    }


    // complete_card_data->number
    if (!complete_card_data->number) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "number", complete_card_data->number) == NULL) {
    goto fail; //String
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

complete_card_data_t *complete_card_data_parseFromJSON(cJSON *complete_card_dataJSON){

    complete_card_data_t *complete_card_data_local_var = NULL;

    // define the local variable for complete_card_data->expiration
    complete_card_data_expiration_t *expiration_local_nonprim = NULL;

    // complete_card_data->cvv
    cJSON *cvv = cJSON_GetObjectItemCaseSensitive(complete_card_dataJSON, "cvv");
    if (cJSON_IsNull(cvv)) {
        cvv = NULL;
    }
    if (!cvv) {
        goto end;
    }

    
    if(!cJSON_IsString(cvv))
    {
    goto end; //String
    }

    // complete_card_data->expiration
    cJSON *expiration = cJSON_GetObjectItemCaseSensitive(complete_card_dataJSON, "expiration");
    if (cJSON_IsNull(expiration)) {
        expiration = NULL;
    }
    if (!expiration) {
        goto end;
    }

    
    expiration_local_nonprim = complete_card_data_expiration_parseFromJSON(expiration); //nonprimitive

    // complete_card_data->holder_name
    cJSON *holder_name = cJSON_GetObjectItemCaseSensitive(complete_card_dataJSON, "holderName");
    if (cJSON_IsNull(holder_name)) {
        holder_name = NULL;
    }
    if (!holder_name) {
        goto end;
    }

    
    if(!cJSON_IsString(holder_name))
    {
    goto end; //String
    }

    // complete_card_data->number
    cJSON *number = cJSON_GetObjectItemCaseSensitive(complete_card_dataJSON, "number");
    if (cJSON_IsNull(number)) {
        number = NULL;
    }
    if (!number) {
        goto end;
    }

    
    if(!cJSON_IsString(number))
    {
    goto end; //String
    }


    complete_card_data_local_var = complete_card_data_create_internal (
        strdup(cvv->valuestring),
        expiration_local_nonprim,
        strdup(holder_name->valuestring),
        strdup(number->valuestring)
        );

    return complete_card_data_local_var;
end:
    if (expiration_local_nonprim) {
        complete_card_data_expiration_free(expiration_local_nonprim);
        expiration_local_nonprim = NULL;
    }
    return NULL;

}
