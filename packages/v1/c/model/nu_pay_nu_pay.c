#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "nu_pay_nu_pay.h"



static nu_pay_nu_pay_t *nu_pay_nu_pay_create_internal(
    char *cancel_url,
    char *merchant_name,
    char *return_url,
    char *store_name
    ) {
    nu_pay_nu_pay_t *nu_pay_nu_pay_local_var = malloc(sizeof(nu_pay_nu_pay_t));
    if (!nu_pay_nu_pay_local_var) {
        return NULL;
    }
    nu_pay_nu_pay_local_var->cancel_url = cancel_url;
    nu_pay_nu_pay_local_var->merchant_name = merchant_name;
    nu_pay_nu_pay_local_var->return_url = return_url;
    nu_pay_nu_pay_local_var->store_name = store_name;

    nu_pay_nu_pay_local_var->_library_owned = 1;
    return nu_pay_nu_pay_local_var;
}

__attribute__((deprecated)) nu_pay_nu_pay_t *nu_pay_nu_pay_create(
    char *cancel_url,
    char *merchant_name,
    char *return_url,
    char *store_name
    ) {
    return nu_pay_nu_pay_create_internal (
        cancel_url,
        merchant_name,
        return_url,
        store_name
        );
}

void nu_pay_nu_pay_free(nu_pay_nu_pay_t *nu_pay_nu_pay) {
    if(NULL == nu_pay_nu_pay){
        return ;
    }
    if(nu_pay_nu_pay->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "nu_pay_nu_pay_free");
        return ;
    }
    listEntry_t *listEntry;
    if (nu_pay_nu_pay->cancel_url) {
        free(nu_pay_nu_pay->cancel_url);
        nu_pay_nu_pay->cancel_url = NULL;
    }
    if (nu_pay_nu_pay->merchant_name) {
        free(nu_pay_nu_pay->merchant_name);
        nu_pay_nu_pay->merchant_name = NULL;
    }
    if (nu_pay_nu_pay->return_url) {
        free(nu_pay_nu_pay->return_url);
        nu_pay_nu_pay->return_url = NULL;
    }
    if (nu_pay_nu_pay->store_name) {
        free(nu_pay_nu_pay->store_name);
        nu_pay_nu_pay->store_name = NULL;
    }
    free(nu_pay_nu_pay);
}

cJSON *nu_pay_nu_pay_convertToJSON(nu_pay_nu_pay_t *nu_pay_nu_pay) {
    cJSON *item = cJSON_CreateObject();

    // nu_pay_nu_pay->cancel_url
    if (!nu_pay_nu_pay->cancel_url) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "cancelUrl", nu_pay_nu_pay->cancel_url) == NULL) {
    goto fail; //String
    }


    // nu_pay_nu_pay->merchant_name
    if (!nu_pay_nu_pay->merchant_name) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "merchantName", nu_pay_nu_pay->merchant_name) == NULL) {
    goto fail; //String
    }


    // nu_pay_nu_pay->return_url
    if (!nu_pay_nu_pay->return_url) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "returnUrl", nu_pay_nu_pay->return_url) == NULL) {
    goto fail; //String
    }


    // nu_pay_nu_pay->store_name
    if(nu_pay_nu_pay->store_name) {
    if(cJSON_AddStringToObject(item, "storeName", nu_pay_nu_pay->store_name) == NULL) {
    goto fail; //String
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

nu_pay_nu_pay_t *nu_pay_nu_pay_parseFromJSON(cJSON *nu_pay_nu_payJSON){

    nu_pay_nu_pay_t *nu_pay_nu_pay_local_var = NULL;

    // nu_pay_nu_pay->cancel_url
    cJSON *cancel_url = cJSON_GetObjectItemCaseSensitive(nu_pay_nu_payJSON, "cancelUrl");
    if (cJSON_IsNull(cancel_url)) {
        cancel_url = NULL;
    }
    if (!cancel_url) {
        goto end;
    }

    
    if(!cJSON_IsString(cancel_url))
    {
    goto end; //String
    }

    // nu_pay_nu_pay->merchant_name
    cJSON *merchant_name = cJSON_GetObjectItemCaseSensitive(nu_pay_nu_payJSON, "merchantName");
    if (cJSON_IsNull(merchant_name)) {
        merchant_name = NULL;
    }
    if (!merchant_name) {
        goto end;
    }

    
    if(!cJSON_IsString(merchant_name))
    {
    goto end; //String
    }

    // nu_pay_nu_pay->return_url
    cJSON *return_url = cJSON_GetObjectItemCaseSensitive(nu_pay_nu_payJSON, "returnUrl");
    if (cJSON_IsNull(return_url)) {
        return_url = NULL;
    }
    if (!return_url) {
        goto end;
    }

    
    if(!cJSON_IsString(return_url))
    {
    goto end; //String
    }

    // nu_pay_nu_pay->store_name
    cJSON *store_name = cJSON_GetObjectItemCaseSensitive(nu_pay_nu_payJSON, "storeName");
    if (cJSON_IsNull(store_name)) {
        store_name = NULL;
    }
    if (store_name) { 
    if(!cJSON_IsString(store_name) && !cJSON_IsNull(store_name))
    {
    goto end; //String
    }
    }


    nu_pay_nu_pay_local_var = nu_pay_nu_pay_create_internal (
        strdup(cancel_url->valuestring),
        strdup(merchant_name->valuestring),
        strdup(return_url->valuestring),
        store_name && !cJSON_IsNull(store_name) ? strdup(store_name->valuestring) : NULL
        );

    return nu_pay_nu_pay_local_var;
end:
    return NULL;

}
