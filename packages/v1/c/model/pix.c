#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "pix.h"



static pix_t *pix_create_internal(
    char *payment_method,
    pix_expiration_in_seconds_t *expiration_in_seconds
    ) {
    pix_t *pix_local_var = malloc(sizeof(pix_t));
    if (!pix_local_var) {
        return NULL;
    }
    pix_local_var->payment_method = payment_method;
    pix_local_var->expiration_in_seconds = expiration_in_seconds;

    pix_local_var->_library_owned = 1;
    return pix_local_var;
}

__attribute__((deprecated)) pix_t *pix_create(
    char *payment_method,
    pix_expiration_in_seconds_t *expiration_in_seconds
    ) {
    return pix_create_internal (
        payment_method,
        expiration_in_seconds
        );
}

void pix_free(pix_t *pix) {
    if(NULL == pix){
        return ;
    }
    if(pix->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "pix_free");
        return ;
    }
    listEntry_t *listEntry;
    if (pix->payment_method) {
        free(pix->payment_method);
        pix->payment_method = NULL;
    }
    if (pix->expiration_in_seconds) {
        pix_expiration_in_seconds_free(pix->expiration_in_seconds);
        pix->expiration_in_seconds = NULL;
    }
    free(pix);
}

cJSON *pix_convertToJSON(pix_t *pix) {
    cJSON *item = cJSON_CreateObject();

    // pix->payment_method
    if (!pix->payment_method) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "paymentMethod", pix->payment_method) == NULL) {
    goto fail; //String
    }


    // pix->expiration_in_seconds
    if(pix->expiration_in_seconds) {
    cJSON *expiration_in_seconds_local_JSON = pix_expiration_in_seconds_convertToJSON(pix->expiration_in_seconds);
    if(expiration_in_seconds_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "expirationInSeconds", expiration_in_seconds_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

pix_t *pix_parseFromJSON(cJSON *pixJSON){

    pix_t *pix_local_var = NULL;

    // define the local variable for pix->expiration_in_seconds
    pix_expiration_in_seconds_t *expiration_in_seconds_local_nonprim = NULL;

    // pix->payment_method
    cJSON *payment_method = cJSON_GetObjectItemCaseSensitive(pixJSON, "paymentMethod");
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

    // pix->expiration_in_seconds
    cJSON *expiration_in_seconds = cJSON_GetObjectItemCaseSensitive(pixJSON, "expirationInSeconds");
    if (cJSON_IsNull(expiration_in_seconds)) {
        expiration_in_seconds = NULL;
    }
    if (expiration_in_seconds) { 
    expiration_in_seconds_local_nonprim = pix_expiration_in_seconds_parseFromJSON(expiration_in_seconds); //nonprimitive
    }


    pix_local_var = pix_create_internal (
        strdup(payment_method->valuestring),
        expiration_in_seconds ? expiration_in_seconds_local_nonprim : NULL
        );

    return pix_local_var;
end:
    if (expiration_in_seconds_local_nonprim) {
        pix_expiration_in_seconds_free(expiration_in_seconds_local_nonprim);
        expiration_in_seconds_local_nonprim = NULL;
    }
    return NULL;

}
