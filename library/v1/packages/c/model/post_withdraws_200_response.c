#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "post_withdraws_200_response.h"



static post_withdraws_200_response_t *post_withdraws_200_response_create_internal(
    char *id,
    char *external_id,
    char *external_integration_key,
    char *external_integration_id,
    double cost_fee,
    payconductor_api_status__e status,
    char *error_code,
    char *error_message,
    post_withdraws_200_response_payed_at_t *payed_at,
    post_withdraws_200_response_payout_account_t *payout_account
    ) {
    post_withdraws_200_response_t *post_withdraws_200_response_local_var = malloc(sizeof(post_withdraws_200_response_t));
    if (!post_withdraws_200_response_local_var) {
        return NULL;
    }
    post_withdraws_200_response_local_var->id = id;
    post_withdraws_200_response_local_var->external_id = external_id;
    post_withdraws_200_response_local_var->external_integration_key = external_integration_key;
    post_withdraws_200_response_local_var->external_integration_id = external_integration_id;
    post_withdraws_200_response_local_var->cost_fee = cost_fee;
    post_withdraws_200_response_local_var->status = status;
    post_withdraws_200_response_local_var->error_code = error_code;
    post_withdraws_200_response_local_var->error_message = error_message;
    post_withdraws_200_response_local_var->payed_at = payed_at;
    post_withdraws_200_response_local_var->payout_account = payout_account;

    post_withdraws_200_response_local_var->_library_owned = 1;
    return post_withdraws_200_response_local_var;
}

__attribute__((deprecated)) post_withdraws_200_response_t *post_withdraws_200_response_create(
    char *id,
    char *external_id,
    char *external_integration_key,
    char *external_integration_id,
    double cost_fee,
    payconductor_api_status__e status,
    char *error_code,
    char *error_message,
    post_withdraws_200_response_payed_at_t *payed_at,
    post_withdraws_200_response_payout_account_t *payout_account
    ) {
    return post_withdraws_200_response_create_internal (
        id,
        external_id,
        external_integration_key,
        external_integration_id,
        cost_fee,
        status,
        error_code,
        error_message,
        payed_at,
        payout_account
        );
}

void post_withdraws_200_response_free(post_withdraws_200_response_t *post_withdraws_200_response) {
    if(NULL == post_withdraws_200_response){
        return ;
    }
    if(post_withdraws_200_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "post_withdraws_200_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (post_withdraws_200_response->id) {
        free(post_withdraws_200_response->id);
        post_withdraws_200_response->id = NULL;
    }
    if (post_withdraws_200_response->external_id) {
        free(post_withdraws_200_response->external_id);
        post_withdraws_200_response->external_id = NULL;
    }
    if (post_withdraws_200_response->external_integration_key) {
        free(post_withdraws_200_response->external_integration_key);
        post_withdraws_200_response->external_integration_key = NULL;
    }
    if (post_withdraws_200_response->external_integration_id) {
        free(post_withdraws_200_response->external_integration_id);
        post_withdraws_200_response->external_integration_id = NULL;
    }
    if (post_withdraws_200_response->error_code) {
        free(post_withdraws_200_response->error_code);
        post_withdraws_200_response->error_code = NULL;
    }
    if (post_withdraws_200_response->error_message) {
        free(post_withdraws_200_response->error_message);
        post_withdraws_200_response->error_message = NULL;
    }
    if (post_withdraws_200_response->payed_at) {
        post_withdraws_200_response_payed_at_free(post_withdraws_200_response->payed_at);
        post_withdraws_200_response->payed_at = NULL;
    }
    if (post_withdraws_200_response->payout_account) {
        post_withdraws_200_response_payout_account_free(post_withdraws_200_response->payout_account);
        post_withdraws_200_response->payout_account = NULL;
    }
    free(post_withdraws_200_response);
}

cJSON *post_withdraws_200_response_convertToJSON(post_withdraws_200_response_t *post_withdraws_200_response) {
    cJSON *item = cJSON_CreateObject();

    // post_withdraws_200_response->id
    if (!post_withdraws_200_response->id) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "id", post_withdraws_200_response->id) == NULL) {
    goto fail; //String
    }


    // post_withdraws_200_response->external_id
    if (!post_withdraws_200_response->external_id) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "externalId", post_withdraws_200_response->external_id) == NULL) {
    goto fail; //String
    }


    // post_withdraws_200_response->external_integration_key
    if (!post_withdraws_200_response->external_integration_key) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "externalIntegrationKey", post_withdraws_200_response->external_integration_key) == NULL) {
    goto fail; //String
    }


    // post_withdraws_200_response->external_integration_id
    if (!post_withdraws_200_response->external_integration_id) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "externalIntegrationId", post_withdraws_200_response->external_integration_id) == NULL) {
    goto fail; //String
    }


    // post_withdraws_200_response->cost_fee
    if (!post_withdraws_200_response->cost_fee) {
        goto fail;
    }
    if(cJSON_AddNumberToObject(item, "costFee", post_withdraws_200_response->cost_fee) == NULL) {
    goto fail; //Numeric
    }


    // post_withdraws_200_response->status
    if (payconductor_api_status__NULL == post_withdraws_200_response->status) {
        goto fail;
    }
    cJSON *status_local_JSON = status_convertToJSON(post_withdraws_200_response->status);
    if(status_local_JSON == NULL) {
        goto fail; // custom
    }
    cJSON_AddItemToObject(item, "status", status_local_JSON);
    if(item->child == NULL) {
        goto fail;
    }


    // post_withdraws_200_response->error_code
    if (!post_withdraws_200_response->error_code) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "errorCode", post_withdraws_200_response->error_code) == NULL) {
    goto fail; //String
    }


    // post_withdraws_200_response->error_message
    if (!post_withdraws_200_response->error_message) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "errorMessage", post_withdraws_200_response->error_message) == NULL) {
    goto fail; //String
    }


    // post_withdraws_200_response->payed_at
    if (!post_withdraws_200_response->payed_at) {
        goto fail;
    }
    cJSON *payed_at_local_JSON = post_withdraws_200_response_payed_at_convertToJSON(post_withdraws_200_response->payed_at);
    if(payed_at_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "payedAt", payed_at_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }


    // post_withdraws_200_response->payout_account
    if (!post_withdraws_200_response->payout_account) {
        goto fail;
    }
    cJSON *payout_account_local_JSON = post_withdraws_200_response_payout_account_convertToJSON(post_withdraws_200_response->payout_account);
    if(payout_account_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "payoutAccount", payout_account_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

post_withdraws_200_response_t *post_withdraws_200_response_parseFromJSON(cJSON *post_withdraws_200_responseJSON){

    post_withdraws_200_response_t *post_withdraws_200_response_local_var = NULL;

    // define the local variable for post_withdraws_200_response->status
    payconductor_api_status__e status_local_nonprim = 0;

    // define the local variable for post_withdraws_200_response->payed_at
    post_withdraws_200_response_payed_at_t *payed_at_local_nonprim = NULL;

    // define the local variable for post_withdraws_200_response->payout_account
    post_withdraws_200_response_payout_account_t *payout_account_local_nonprim = NULL;

    // post_withdraws_200_response->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(post_withdraws_200_responseJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (!id) {
        goto end;
    }

    
    if(!cJSON_IsString(id))
    {
    goto end; //String
    }

    // post_withdraws_200_response->external_id
    cJSON *external_id = cJSON_GetObjectItemCaseSensitive(post_withdraws_200_responseJSON, "externalId");
    if (cJSON_IsNull(external_id)) {
        external_id = NULL;
    }
    if (!external_id) {
        goto end;
    }

    
    if(!cJSON_IsString(external_id))
    {
    goto end; //String
    }

    // post_withdraws_200_response->external_integration_key
    cJSON *external_integration_key = cJSON_GetObjectItemCaseSensitive(post_withdraws_200_responseJSON, "externalIntegrationKey");
    if (cJSON_IsNull(external_integration_key)) {
        external_integration_key = NULL;
    }
    if (!external_integration_key) {
        goto end;
    }

    
    if(!cJSON_IsString(external_integration_key))
    {
    goto end; //String
    }

    // post_withdraws_200_response->external_integration_id
    cJSON *external_integration_id = cJSON_GetObjectItemCaseSensitive(post_withdraws_200_responseJSON, "externalIntegrationId");
    if (cJSON_IsNull(external_integration_id)) {
        external_integration_id = NULL;
    }
    if (!external_integration_id) {
        goto end;
    }

    
    if(!cJSON_IsString(external_integration_id))
    {
    goto end; //String
    }

    // post_withdraws_200_response->cost_fee
    cJSON *cost_fee = cJSON_GetObjectItemCaseSensitive(post_withdraws_200_responseJSON, "costFee");
    if (cJSON_IsNull(cost_fee)) {
        cost_fee = NULL;
    }
    if (!cost_fee) {
        goto end;
    }

    
    if(!cJSON_IsNumber(cost_fee))
    {
    goto end; //Numeric
    }

    // post_withdraws_200_response->status
    cJSON *status = cJSON_GetObjectItemCaseSensitive(post_withdraws_200_responseJSON, "status");
    if (cJSON_IsNull(status)) {
        status = NULL;
    }
    if (!status) {
        goto end;
    }

    
    status_local_nonprim = status_parseFromJSON(status); //custom

    // post_withdraws_200_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(post_withdraws_200_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (!error_code) {
        goto end;
    }

    
    if(!cJSON_IsString(error_code))
    {
    goto end; //String
    }

    // post_withdraws_200_response->error_message
    cJSON *error_message = cJSON_GetObjectItemCaseSensitive(post_withdraws_200_responseJSON, "errorMessage");
    if (cJSON_IsNull(error_message)) {
        error_message = NULL;
    }
    if (!error_message) {
        goto end;
    }

    
    if(!cJSON_IsString(error_message))
    {
    goto end; //String
    }

    // post_withdraws_200_response->payed_at
    cJSON *payed_at = cJSON_GetObjectItemCaseSensitive(post_withdraws_200_responseJSON, "payedAt");
    if (cJSON_IsNull(payed_at)) {
        payed_at = NULL;
    }
    if (!payed_at) {
        goto end;
    }

    
    payed_at_local_nonprim = post_withdraws_200_response_payed_at_parseFromJSON(payed_at); //nonprimitive

    // post_withdraws_200_response->payout_account
    cJSON *payout_account = cJSON_GetObjectItemCaseSensitive(post_withdraws_200_responseJSON, "payoutAccount");
    if (cJSON_IsNull(payout_account)) {
        payout_account = NULL;
    }
    if (!payout_account) {
        goto end;
    }

    
    payout_account_local_nonprim = post_withdraws_200_response_payout_account_parseFromJSON(payout_account); //nonprimitive


    post_withdraws_200_response_local_var = post_withdraws_200_response_create_internal (
        strdup(id->valuestring),
        strdup(external_id->valuestring),
        strdup(external_integration_key->valuestring),
        strdup(external_integration_id->valuestring),
        cost_fee->valuedouble,
        status_local_nonprim,
        strdup(error_code->valuestring),
        strdup(error_message->valuestring),
        payed_at_local_nonprim,
        payout_account_local_nonprim
        );

    return post_withdraws_200_response_local_var;
end:
    if (status_local_nonprim) {
        status_local_nonprim = 0;
    }
    if (payed_at_local_nonprim) {
        post_withdraws_200_response_payed_at_free(payed_at_local_nonprim);
        payed_at_local_nonprim = NULL;
    }
    if (payout_account_local_nonprim) {
        post_withdraws_200_response_payout_account_free(payout_account_local_nonprim);
        payout_account_local_nonprim = NULL;
    }
    return NULL;

}
