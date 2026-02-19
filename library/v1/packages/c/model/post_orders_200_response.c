#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "post_orders_200_response.h"



static post_orders_200_response_t *post_orders_200_response_create_internal(
    char *id,
    char *external_id,
    char *external_integration_key,
    char *external_integration_id,
    double amount,
    double cost_fee,
    post_orders_200_response_pix_t *pix,
    post_orders_200_response_bank_slip_t *bank_slip,
    post_orders_200_response_nu_pay_t *nu_pay,
    post_orders_200_response_pic_pay_t *pic_pay,
    post_orders_200_response_credit_card_t *credit_card,
    payconductor_api_status__e status,
    payconductor_api_payment_method__e payment_method,
    char *payed_at,
    char *error_code,
    char *error_message,
    list_t *order_items,
    post_orders_200_response_session_t *session
    ) {
    post_orders_200_response_t *post_orders_200_response_local_var = malloc(sizeof(post_orders_200_response_t));
    if (!post_orders_200_response_local_var) {
        return NULL;
    }
    post_orders_200_response_local_var->id = id;
    post_orders_200_response_local_var->external_id = external_id;
    post_orders_200_response_local_var->external_integration_key = external_integration_key;
    post_orders_200_response_local_var->external_integration_id = external_integration_id;
    post_orders_200_response_local_var->amount = amount;
    post_orders_200_response_local_var->cost_fee = cost_fee;
    post_orders_200_response_local_var->pix = pix;
    post_orders_200_response_local_var->bank_slip = bank_slip;
    post_orders_200_response_local_var->nu_pay = nu_pay;
    post_orders_200_response_local_var->pic_pay = pic_pay;
    post_orders_200_response_local_var->credit_card = credit_card;
    post_orders_200_response_local_var->status = status;
    post_orders_200_response_local_var->payment_method = payment_method;
    post_orders_200_response_local_var->payed_at = payed_at;
    post_orders_200_response_local_var->error_code = error_code;
    post_orders_200_response_local_var->error_message = error_message;
    post_orders_200_response_local_var->order_items = order_items;
    post_orders_200_response_local_var->session = session;

    post_orders_200_response_local_var->_library_owned = 1;
    return post_orders_200_response_local_var;
}

__attribute__((deprecated)) post_orders_200_response_t *post_orders_200_response_create(
    char *id,
    char *external_id,
    char *external_integration_key,
    char *external_integration_id,
    double amount,
    double cost_fee,
    post_orders_200_response_pix_t *pix,
    post_orders_200_response_bank_slip_t *bank_slip,
    post_orders_200_response_nu_pay_t *nu_pay,
    post_orders_200_response_pic_pay_t *pic_pay,
    post_orders_200_response_credit_card_t *credit_card,
    payconductor_api_status__e status,
    payconductor_api_payment_method__e payment_method,
    char *payed_at,
    char *error_code,
    char *error_message,
    list_t *order_items,
    post_orders_200_response_session_t *session
    ) {
    return post_orders_200_response_create_internal (
        id,
        external_id,
        external_integration_key,
        external_integration_id,
        amount,
        cost_fee,
        pix,
        bank_slip,
        nu_pay,
        pic_pay,
        credit_card,
        status,
        payment_method,
        payed_at,
        error_code,
        error_message,
        order_items,
        session
        );
}

void post_orders_200_response_free(post_orders_200_response_t *post_orders_200_response) {
    if(NULL == post_orders_200_response){
        return ;
    }
    if(post_orders_200_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "post_orders_200_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (post_orders_200_response->id) {
        free(post_orders_200_response->id);
        post_orders_200_response->id = NULL;
    }
    if (post_orders_200_response->external_id) {
        free(post_orders_200_response->external_id);
        post_orders_200_response->external_id = NULL;
    }
    if (post_orders_200_response->external_integration_key) {
        free(post_orders_200_response->external_integration_key);
        post_orders_200_response->external_integration_key = NULL;
    }
    if (post_orders_200_response->external_integration_id) {
        free(post_orders_200_response->external_integration_id);
        post_orders_200_response->external_integration_id = NULL;
    }
    if (post_orders_200_response->pix) {
        post_orders_200_response_pix_free(post_orders_200_response->pix);
        post_orders_200_response->pix = NULL;
    }
    if (post_orders_200_response->bank_slip) {
        post_orders_200_response_bank_slip_free(post_orders_200_response->bank_slip);
        post_orders_200_response->bank_slip = NULL;
    }
    if (post_orders_200_response->nu_pay) {
        post_orders_200_response_nu_pay_free(post_orders_200_response->nu_pay);
        post_orders_200_response->nu_pay = NULL;
    }
    if (post_orders_200_response->pic_pay) {
        post_orders_200_response_pic_pay_free(post_orders_200_response->pic_pay);
        post_orders_200_response->pic_pay = NULL;
    }
    if (post_orders_200_response->credit_card) {
        post_orders_200_response_credit_card_free(post_orders_200_response->credit_card);
        post_orders_200_response->credit_card = NULL;
    }
    if (post_orders_200_response->payed_at) {
        free(post_orders_200_response->payed_at);
        post_orders_200_response->payed_at = NULL;
    }
    if (post_orders_200_response->error_code) {
        free(post_orders_200_response->error_code);
        post_orders_200_response->error_code = NULL;
    }
    if (post_orders_200_response->error_message) {
        free(post_orders_200_response->error_message);
        post_orders_200_response->error_message = NULL;
    }
    if (post_orders_200_response->order_items) {
        list_ForEach(listEntry, post_orders_200_response->order_items) {
            post_orders_200_response_order_items_inner_free(listEntry->data);
        }
        list_freeList(post_orders_200_response->order_items);
        post_orders_200_response->order_items = NULL;
    }
    if (post_orders_200_response->session) {
        post_orders_200_response_session_free(post_orders_200_response->session);
        post_orders_200_response->session = NULL;
    }
    free(post_orders_200_response);
}

cJSON *post_orders_200_response_convertToJSON(post_orders_200_response_t *post_orders_200_response) {
    cJSON *item = cJSON_CreateObject();

    // post_orders_200_response->id
    if (!post_orders_200_response->id) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "id", post_orders_200_response->id) == NULL) {
    goto fail; //String
    }


    // post_orders_200_response->external_id
    if (!post_orders_200_response->external_id) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "externalId", post_orders_200_response->external_id) == NULL) {
    goto fail; //String
    }


    // post_orders_200_response->external_integration_key
    if (!post_orders_200_response->external_integration_key) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "externalIntegrationKey", post_orders_200_response->external_integration_key) == NULL) {
    goto fail; //String
    }


    // post_orders_200_response->external_integration_id
    if (!post_orders_200_response->external_integration_id) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "externalIntegrationId", post_orders_200_response->external_integration_id) == NULL) {
    goto fail; //String
    }


    // post_orders_200_response->amount
    if (!post_orders_200_response->amount) {
        goto fail;
    }
    if(cJSON_AddNumberToObject(item, "amount", post_orders_200_response->amount) == NULL) {
    goto fail; //Numeric
    }


    // post_orders_200_response->cost_fee
    if (!post_orders_200_response->cost_fee) {
        goto fail;
    }
    if(cJSON_AddNumberToObject(item, "costFee", post_orders_200_response->cost_fee) == NULL) {
    goto fail; //Numeric
    }


    // post_orders_200_response->pix
    if(post_orders_200_response->pix) {
    cJSON *pix_local_JSON = post_orders_200_response_pix_convertToJSON(post_orders_200_response->pix);
    if(pix_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "pix", pix_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // post_orders_200_response->bank_slip
    if(post_orders_200_response->bank_slip) {
    cJSON *bank_slip_local_JSON = post_orders_200_response_bank_slip_convertToJSON(post_orders_200_response->bank_slip);
    if(bank_slip_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "bankSlip", bank_slip_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // post_orders_200_response->nu_pay
    if(post_orders_200_response->nu_pay) {
    cJSON *nu_pay_local_JSON = post_orders_200_response_nu_pay_convertToJSON(post_orders_200_response->nu_pay);
    if(nu_pay_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "nuPay", nu_pay_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // post_orders_200_response->pic_pay
    if(post_orders_200_response->pic_pay) {
    cJSON *pic_pay_local_JSON = post_orders_200_response_pic_pay_convertToJSON(post_orders_200_response->pic_pay);
    if(pic_pay_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "picPay", pic_pay_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // post_orders_200_response->credit_card
    if(post_orders_200_response->credit_card) {
    cJSON *credit_card_local_JSON = post_orders_200_response_credit_card_convertToJSON(post_orders_200_response->credit_card);
    if(credit_card_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "creditCard", credit_card_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // post_orders_200_response->status
    if (payconductor_api_status__NULL == post_orders_200_response->status) {
        goto fail;
    }
    cJSON *status_local_JSON = status_convertToJSON(post_orders_200_response->status);
    if(status_local_JSON == NULL) {
        goto fail; // custom
    }
    cJSON_AddItemToObject(item, "status", status_local_JSON);
    if(item->child == NULL) {
        goto fail;
    }


    // post_orders_200_response->payment_method
    if (payconductor_api_payment_method__NULL == post_orders_200_response->payment_method) {
        goto fail;
    }
    cJSON *payment_method_local_JSON = payment_method_convertToJSON(post_orders_200_response->payment_method);
    if(payment_method_local_JSON == NULL) {
        goto fail; // custom
    }
    cJSON_AddItemToObject(item, "paymentMethod", payment_method_local_JSON);
    if(item->child == NULL) {
        goto fail;
    }


    // post_orders_200_response->payed_at
    if (!post_orders_200_response->payed_at) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "payedAt", post_orders_200_response->payed_at) == NULL) {
    goto fail; //String
    }


    // post_orders_200_response->error_code
    if (!post_orders_200_response->error_code) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "errorCode", post_orders_200_response->error_code) == NULL) {
    goto fail; //String
    }


    // post_orders_200_response->error_message
    if (!post_orders_200_response->error_message) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "errorMessage", post_orders_200_response->error_message) == NULL) {
    goto fail; //String
    }


    // post_orders_200_response->order_items
    if (!post_orders_200_response->order_items) {
        goto fail;
    }
    cJSON *order_items = cJSON_AddArrayToObject(item, "orderItems");
    if(order_items == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *order_itemsListEntry;
    if (post_orders_200_response->order_items) {
    list_ForEach(order_itemsListEntry, post_orders_200_response->order_items) {
    cJSON *itemLocal = post_orders_200_response_order_items_inner_convertToJSON(order_itemsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(order_items, itemLocal);
    }
    }


    // post_orders_200_response->session
    if(post_orders_200_response->session) {
    cJSON *session_local_JSON = post_orders_200_response_session_convertToJSON(post_orders_200_response->session);
    if(session_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "session", session_local_JSON);
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

post_orders_200_response_t *post_orders_200_response_parseFromJSON(cJSON *post_orders_200_responseJSON){

    post_orders_200_response_t *post_orders_200_response_local_var = NULL;

    // define the local variable for post_orders_200_response->pix
    post_orders_200_response_pix_t *pix_local_nonprim = NULL;

    // define the local variable for post_orders_200_response->bank_slip
    post_orders_200_response_bank_slip_t *bank_slip_local_nonprim = NULL;

    // define the local variable for post_orders_200_response->nu_pay
    post_orders_200_response_nu_pay_t *nu_pay_local_nonprim = NULL;

    // define the local variable for post_orders_200_response->pic_pay
    post_orders_200_response_pic_pay_t *pic_pay_local_nonprim = NULL;

    // define the local variable for post_orders_200_response->credit_card
    post_orders_200_response_credit_card_t *credit_card_local_nonprim = NULL;

    // define the local variable for post_orders_200_response->status
    payconductor_api_status__e status_local_nonprim = 0;

    // define the local variable for post_orders_200_response->payment_method
    payconductor_api_payment_method__e payment_method_local_nonprim = 0;

    // define the local list for post_orders_200_response->order_items
    list_t *order_itemsList = NULL;

    // define the local variable for post_orders_200_response->session
    post_orders_200_response_session_t *session_local_nonprim = NULL;

    // post_orders_200_response->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(post_orders_200_responseJSON, "id");
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

    // post_orders_200_response->external_id
    cJSON *external_id = cJSON_GetObjectItemCaseSensitive(post_orders_200_responseJSON, "externalId");
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

    // post_orders_200_response->external_integration_key
    cJSON *external_integration_key = cJSON_GetObjectItemCaseSensitive(post_orders_200_responseJSON, "externalIntegrationKey");
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

    // post_orders_200_response->external_integration_id
    cJSON *external_integration_id = cJSON_GetObjectItemCaseSensitive(post_orders_200_responseJSON, "externalIntegrationId");
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

    // post_orders_200_response->amount
    cJSON *amount = cJSON_GetObjectItemCaseSensitive(post_orders_200_responseJSON, "amount");
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

    // post_orders_200_response->cost_fee
    cJSON *cost_fee = cJSON_GetObjectItemCaseSensitive(post_orders_200_responseJSON, "costFee");
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

    // post_orders_200_response->pix
    cJSON *pix = cJSON_GetObjectItemCaseSensitive(post_orders_200_responseJSON, "pix");
    if (cJSON_IsNull(pix)) {
        pix = NULL;
    }
    if (pix) { 
    pix_local_nonprim = post_orders_200_response_pix_parseFromJSON(pix); //nonprimitive
    }

    // post_orders_200_response->bank_slip
    cJSON *bank_slip = cJSON_GetObjectItemCaseSensitive(post_orders_200_responseJSON, "bankSlip");
    if (cJSON_IsNull(bank_slip)) {
        bank_slip = NULL;
    }
    if (bank_slip) { 
    bank_slip_local_nonprim = post_orders_200_response_bank_slip_parseFromJSON(bank_slip); //nonprimitive
    }

    // post_orders_200_response->nu_pay
    cJSON *nu_pay = cJSON_GetObjectItemCaseSensitive(post_orders_200_responseJSON, "nuPay");
    if (cJSON_IsNull(nu_pay)) {
        nu_pay = NULL;
    }
    if (nu_pay) { 
    nu_pay_local_nonprim = post_orders_200_response_nu_pay_parseFromJSON(nu_pay); //nonprimitive
    }

    // post_orders_200_response->pic_pay
    cJSON *pic_pay = cJSON_GetObjectItemCaseSensitive(post_orders_200_responseJSON, "picPay");
    if (cJSON_IsNull(pic_pay)) {
        pic_pay = NULL;
    }
    if (pic_pay) { 
    pic_pay_local_nonprim = post_orders_200_response_pic_pay_parseFromJSON(pic_pay); //nonprimitive
    }

    // post_orders_200_response->credit_card
    cJSON *credit_card = cJSON_GetObjectItemCaseSensitive(post_orders_200_responseJSON, "creditCard");
    if (cJSON_IsNull(credit_card)) {
        credit_card = NULL;
    }
    if (credit_card) { 
    credit_card_local_nonprim = post_orders_200_response_credit_card_parseFromJSON(credit_card); //nonprimitive
    }

    // post_orders_200_response->status
    cJSON *status = cJSON_GetObjectItemCaseSensitive(post_orders_200_responseJSON, "status");
    if (cJSON_IsNull(status)) {
        status = NULL;
    }
    if (!status) {
        goto end;
    }

    
    status_local_nonprim = status_parseFromJSON(status); //custom

    // post_orders_200_response->payment_method
    cJSON *payment_method = cJSON_GetObjectItemCaseSensitive(post_orders_200_responseJSON, "paymentMethod");
    if (cJSON_IsNull(payment_method)) {
        payment_method = NULL;
    }
    if (!payment_method) {
        goto end;
    }

    
    payment_method_local_nonprim = payment_method_parseFromJSON(payment_method); //custom

    // post_orders_200_response->payed_at
    cJSON *payed_at = cJSON_GetObjectItemCaseSensitive(post_orders_200_responseJSON, "payedAt");
    if (cJSON_IsNull(payed_at)) {
        payed_at = NULL;
    }
    if (!payed_at) {
        goto end;
    }

    
    if(!cJSON_IsString(payed_at))
    {
    goto end; //String
    }

    // post_orders_200_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(post_orders_200_responseJSON, "errorCode");
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

    // post_orders_200_response->error_message
    cJSON *error_message = cJSON_GetObjectItemCaseSensitive(post_orders_200_responseJSON, "errorMessage");
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

    // post_orders_200_response->order_items
    cJSON *order_items = cJSON_GetObjectItemCaseSensitive(post_orders_200_responseJSON, "orderItems");
    if (cJSON_IsNull(order_items)) {
        order_items = NULL;
    }
    if (!order_items) {
        goto end;
    }

    
    cJSON *order_items_local_nonprimitive = NULL;
    if(!cJSON_IsArray(order_items)){
        goto end; //nonprimitive container
    }

    order_itemsList = list_createList();

    cJSON_ArrayForEach(order_items_local_nonprimitive,order_items )
    {
        if(!cJSON_IsObject(order_items_local_nonprimitive)){
            goto end;
        }
        post_orders_200_response_order_items_inner_t *order_itemsItem = post_orders_200_response_order_items_inner_parseFromJSON(order_items_local_nonprimitive);

        list_addElement(order_itemsList, order_itemsItem);
    }

    // post_orders_200_response->session
    cJSON *session = cJSON_GetObjectItemCaseSensitive(post_orders_200_responseJSON, "session");
    if (cJSON_IsNull(session)) {
        session = NULL;
    }
    if (session) { 
    session_local_nonprim = post_orders_200_response_session_parseFromJSON(session); //nonprimitive
    }


    post_orders_200_response_local_var = post_orders_200_response_create_internal (
        strdup(id->valuestring),
        strdup(external_id->valuestring),
        strdup(external_integration_key->valuestring),
        strdup(external_integration_id->valuestring),
        amount->valuedouble,
        cost_fee->valuedouble,
        pix ? pix_local_nonprim : NULL,
        bank_slip ? bank_slip_local_nonprim : NULL,
        nu_pay ? nu_pay_local_nonprim : NULL,
        pic_pay ? pic_pay_local_nonprim : NULL,
        credit_card ? credit_card_local_nonprim : NULL,
        status_local_nonprim,
        payment_method_local_nonprim,
        strdup(payed_at->valuestring),
        strdup(error_code->valuestring),
        strdup(error_message->valuestring),
        order_itemsList,
        session ? session_local_nonprim : NULL
        );

    return post_orders_200_response_local_var;
end:
    if (pix_local_nonprim) {
        post_orders_200_response_pix_free(pix_local_nonprim);
        pix_local_nonprim = NULL;
    }
    if (bank_slip_local_nonprim) {
        post_orders_200_response_bank_slip_free(bank_slip_local_nonprim);
        bank_slip_local_nonprim = NULL;
    }
    if (nu_pay_local_nonprim) {
        post_orders_200_response_nu_pay_free(nu_pay_local_nonprim);
        nu_pay_local_nonprim = NULL;
    }
    if (pic_pay_local_nonprim) {
        post_orders_200_response_pic_pay_free(pic_pay_local_nonprim);
        pic_pay_local_nonprim = NULL;
    }
    if (credit_card_local_nonprim) {
        post_orders_200_response_credit_card_free(credit_card_local_nonprim);
        credit_card_local_nonprim = NULL;
    }
    if (status_local_nonprim) {
        status_local_nonprim = 0;
    }
    if (payment_method_local_nonprim) {
        payment_method_local_nonprim = 0;
    }
    if (order_itemsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, order_itemsList) {
            post_orders_200_response_order_items_inner_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(order_itemsList);
        order_itemsList = NULL;
    }
    if (session_local_nonprim) {
        post_orders_200_response_session_free(session_local_nonprim);
        session_local_nonprim = NULL;
    }
    return NULL;

}
