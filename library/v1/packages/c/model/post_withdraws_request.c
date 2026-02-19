#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "post_withdraws_request.h"



static post_withdraws_request_t *post_withdraws_request_create_internal(
    double amount,
    char *external_id,
    merchant_input_t *merchant,
    post_withdraws_request_payout_account_t *payout_account
    ) {
    post_withdraws_request_t *post_withdraws_request_local_var = malloc(sizeof(post_withdraws_request_t));
    if (!post_withdraws_request_local_var) {
        return NULL;
    }
    post_withdraws_request_local_var->amount = amount;
    post_withdraws_request_local_var->external_id = external_id;
    post_withdraws_request_local_var->merchant = merchant;
    post_withdraws_request_local_var->payout_account = payout_account;

    post_withdraws_request_local_var->_library_owned = 1;
    return post_withdraws_request_local_var;
}

__attribute__((deprecated)) post_withdraws_request_t *post_withdraws_request_create(
    double amount,
    char *external_id,
    merchant_input_t *merchant,
    post_withdraws_request_payout_account_t *payout_account
    ) {
    return post_withdraws_request_create_internal (
        amount,
        external_id,
        merchant,
        payout_account
        );
}

void post_withdraws_request_free(post_withdraws_request_t *post_withdraws_request) {
    if(NULL == post_withdraws_request){
        return ;
    }
    if(post_withdraws_request->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "post_withdraws_request_free");
        return ;
    }
    listEntry_t *listEntry;
    if (post_withdraws_request->external_id) {
        free(post_withdraws_request->external_id);
        post_withdraws_request->external_id = NULL;
    }
    if (post_withdraws_request->merchant) {
        merchant_input_free(post_withdraws_request->merchant);
        post_withdraws_request->merchant = NULL;
    }
    if (post_withdraws_request->payout_account) {
        post_withdraws_request_payout_account_free(post_withdraws_request->payout_account);
        post_withdraws_request->payout_account = NULL;
    }
    free(post_withdraws_request);
}

cJSON *post_withdraws_request_convertToJSON(post_withdraws_request_t *post_withdraws_request) {
    cJSON *item = cJSON_CreateObject();

    // post_withdraws_request->amount
    if (!post_withdraws_request->amount) {
        goto fail;
    }
    if(cJSON_AddNumberToObject(item, "amount", post_withdraws_request->amount) == NULL) {
    goto fail; //Numeric
    }


    // post_withdraws_request->external_id
    if(post_withdraws_request->external_id) {
    if(cJSON_AddStringToObject(item, "externalId", post_withdraws_request->external_id) == NULL) {
    goto fail; //String
    }
    }


    // post_withdraws_request->merchant
    if(post_withdraws_request->merchant) {
    cJSON *merchant_local_JSON = merchant_input_convertToJSON(post_withdraws_request->merchant);
    if(merchant_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "merchant", merchant_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // post_withdraws_request->payout_account
    if (!post_withdraws_request->payout_account) {
        goto fail;
    }
    cJSON *payout_account_local_JSON = post_withdraws_request_payout_account_convertToJSON(post_withdraws_request->payout_account);
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

post_withdraws_request_t *post_withdraws_request_parseFromJSON(cJSON *post_withdraws_requestJSON){

    post_withdraws_request_t *post_withdraws_request_local_var = NULL;

    // define the local variable for post_withdraws_request->merchant
    merchant_input_t *merchant_local_nonprim = NULL;

    // define the local variable for post_withdraws_request->payout_account
    post_withdraws_request_payout_account_t *payout_account_local_nonprim = NULL;

    // post_withdraws_request->amount
    cJSON *amount = cJSON_GetObjectItemCaseSensitive(post_withdraws_requestJSON, "amount");
    if (cJSON_IsNull(amount)) {
        amount = NULL;
    }
    if (!amount) {
        goto end;
    }

    
    if(!cJSON_IsNumber(amount))
    {
    goto end; //Numeric
    }

    // post_withdraws_request->external_id
    cJSON *external_id = cJSON_GetObjectItemCaseSensitive(post_withdraws_requestJSON, "externalId");
    if (cJSON_IsNull(external_id)) {
        external_id = NULL;
    }
    if (external_id) { 
    if(!cJSON_IsString(external_id) && !cJSON_IsNull(external_id))
    {
    goto end; //String
    }
    }

    // post_withdraws_request->merchant
    cJSON *merchant = cJSON_GetObjectItemCaseSensitive(post_withdraws_requestJSON, "merchant");
    if (cJSON_IsNull(merchant)) {
        merchant = NULL;
    }
    if (merchant) { 
    merchant_local_nonprim = merchant_input_parseFromJSON(merchant); //nonprimitive
    }

    // post_withdraws_request->payout_account
    cJSON *payout_account = cJSON_GetObjectItemCaseSensitive(post_withdraws_requestJSON, "payoutAccount");
    if (cJSON_IsNull(payout_account)) {
        payout_account = NULL;
    }
    if (!payout_account) {
        goto end;
    }

    
    payout_account_local_nonprim = post_withdraws_request_payout_account_parseFromJSON(payout_account); //nonprimitive


    post_withdraws_request_local_var = post_withdraws_request_create_internal (
        amount->valuedouble,
        external_id && !cJSON_IsNull(external_id) ? strdup(external_id->valuestring) : NULL,
        merchant ? merchant_local_nonprim : NULL,
        payout_account_local_nonprim
        );

    return post_withdraws_request_local_var;
end:
    if (merchant_local_nonprim) {
        merchant_input_free(merchant_local_nonprim);
        merchant_local_nonprim = NULL;
    }
    if (payout_account_local_nonprim) {
        post_withdraws_request_payout_account_free(payout_account_local_nonprim);
        payout_account_local_nonprim = NULL;
    }
    return NULL;

}
