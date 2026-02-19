#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "post_orders_request_payment.h"


char* post_orders_request_payment_available_payment_methods_ToString(payconductor_api_post_orders_request_payment__e available_payment_methods) {
    char *available_payment_methodsArray[] =  { "NULL", "Pix", "CreditCard", "DebitCard", "BankSlip", "Crypto", "ApplePay", "NuPay", "PicPay", "AmazonPay", "SepaDebit", "GooglePay", "Draft" };
    return available_payment_methodsArray[available_payment_methods - 1];
}

payconductor_api_post_orders_request_payment__e post_orders_request_payment_available_payment_methods_FromString(char* available_payment_methods) {
    int stringToReturn = 0;
    char *available_payment_methodsArray[] =  { "NULL", "Pix", "CreditCard", "DebitCard", "BankSlip", "Crypto", "ApplePay", "NuPay", "PicPay", "AmazonPay", "SepaDebit", "GooglePay", "Draft" };
    size_t sizeofArray = sizeof(available_payment_methodsArray) / sizeof(available_payment_methodsArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(available_payment_methods, available_payment_methodsArray[stringToReturn]) == 0) {
            return stringToReturn + 1;
        }
        stringToReturn++;
    }
    return 0;
}

static post_orders_request_payment_t *post_orders_request_payment_create_internal(
    payconductor_api_payment_method__e payment_method,
    draft_expiration_in_seconds_t *expiration_in_seconds,
    credit_card_card_t *card,
    credit_card_installments_t *installments,
    char *soft_descriptor,
    bank_slip_expiration_in_days_t *expiration_in_days,
    nu_pay_nu_pay_t *nu_pay,
    list_t *available_payment_methods
    ) {
    post_orders_request_payment_t *post_orders_request_payment_local_var = malloc(sizeof(post_orders_request_payment_t));
    if (!post_orders_request_payment_local_var) {
        return NULL;
    }
    post_orders_request_payment_local_var->payment_method = payment_method;
    post_orders_request_payment_local_var->expiration_in_seconds = expiration_in_seconds;
    post_orders_request_payment_local_var->card = card;
    post_orders_request_payment_local_var->installments = installments;
    post_orders_request_payment_local_var->soft_descriptor = soft_descriptor;
    post_orders_request_payment_local_var->expiration_in_days = expiration_in_days;
    post_orders_request_payment_local_var->nu_pay = nu_pay;
    post_orders_request_payment_local_var->available_payment_methods = available_payment_methods;

    post_orders_request_payment_local_var->_library_owned = 1;
    return post_orders_request_payment_local_var;
}

__attribute__((deprecated)) post_orders_request_payment_t *post_orders_request_payment_create(
    payconductor_api_payment_method__e payment_method,
    draft_expiration_in_seconds_t *expiration_in_seconds,
    credit_card_card_t *card,
    credit_card_installments_t *installments,
    char *soft_descriptor,
    bank_slip_expiration_in_days_t *expiration_in_days,
    nu_pay_nu_pay_t *nu_pay,
    list_t *available_payment_methods
    ) {
    return post_orders_request_payment_create_internal (
        payment_method,
        expiration_in_seconds,
        card,
        installments,
        soft_descriptor,
        expiration_in_days,
        nu_pay,
        available_payment_methods
        );
}

void post_orders_request_payment_free(post_orders_request_payment_t *post_orders_request_payment) {
    if(NULL == post_orders_request_payment){
        return ;
    }
    if(post_orders_request_payment->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "post_orders_request_payment_free");
        return ;
    }
    listEntry_t *listEntry;
    if (post_orders_request_payment->expiration_in_seconds) {
        draft_expiration_in_seconds_free(post_orders_request_payment->expiration_in_seconds);
        post_orders_request_payment->expiration_in_seconds = NULL;
    }
    if (post_orders_request_payment->card) {
        credit_card_card_free(post_orders_request_payment->card);
        post_orders_request_payment->card = NULL;
    }
    if (post_orders_request_payment->installments) {
        credit_card_installments_free(post_orders_request_payment->installments);
        post_orders_request_payment->installments = NULL;
    }
    if (post_orders_request_payment->soft_descriptor) {
        free(post_orders_request_payment->soft_descriptor);
        post_orders_request_payment->soft_descriptor = NULL;
    }
    if (post_orders_request_payment->expiration_in_days) {
        bank_slip_expiration_in_days_free(post_orders_request_payment->expiration_in_days);
        post_orders_request_payment->expiration_in_days = NULL;
    }
    if (post_orders_request_payment->nu_pay) {
        nu_pay_nu_pay_free(post_orders_request_payment->nu_pay);
        post_orders_request_payment->nu_pay = NULL;
    }
    if (post_orders_request_payment->available_payment_methods) {
        list_ForEach(listEntry, post_orders_request_payment->available_payment_methods) {
            available_payment_methods_free(listEntry->data);
        }
        list_freeList(post_orders_request_payment->available_payment_methods);
        post_orders_request_payment->available_payment_methods = NULL;
    }
    free(post_orders_request_payment);
}

cJSON *post_orders_request_payment_convertToJSON(post_orders_request_payment_t *post_orders_request_payment) {
    cJSON *item = cJSON_CreateObject();

    // post_orders_request_payment->payment_method
    if (payconductor_api_payment_method__NULL == post_orders_request_payment->payment_method) {
        goto fail;
    }
    cJSON *payment_method_local_JSON = payment_method_convertToJSON(post_orders_request_payment->payment_method);
    if(payment_method_local_JSON == NULL) {
        goto fail; // custom
    }
    cJSON_AddItemToObject(item, "paymentMethod", payment_method_local_JSON);
    if(item->child == NULL) {
        goto fail;
    }


    // post_orders_request_payment->expiration_in_seconds
    if(post_orders_request_payment->expiration_in_seconds) {
    cJSON *expiration_in_seconds_local_JSON = draft_expiration_in_seconds_convertToJSON(post_orders_request_payment->expiration_in_seconds);
    if(expiration_in_seconds_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "expirationInSeconds", expiration_in_seconds_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // post_orders_request_payment->card
    if (!post_orders_request_payment->card) {
        goto fail;
    }
    cJSON *card_local_JSON = credit_card_card_convertToJSON(post_orders_request_payment->card);
    if(card_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "card", card_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }


    // post_orders_request_payment->installments
    if (!post_orders_request_payment->installments) {
        goto fail;
    }
    cJSON *installments_local_JSON = credit_card_installments_convertToJSON(post_orders_request_payment->installments);
    if(installments_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "installments", installments_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }


    // post_orders_request_payment->soft_descriptor
    if(post_orders_request_payment->soft_descriptor) {
    if(cJSON_AddStringToObject(item, "softDescriptor", post_orders_request_payment->soft_descriptor) == NULL) {
    goto fail; //String
    }
    }


    // post_orders_request_payment->expiration_in_days
    if(post_orders_request_payment->expiration_in_days) {
    cJSON *expiration_in_days_local_JSON = bank_slip_expiration_in_days_convertToJSON(post_orders_request_payment->expiration_in_days);
    if(expiration_in_days_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "expirationInDays", expiration_in_days_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // post_orders_request_payment->nu_pay
    if (!post_orders_request_payment->nu_pay) {
        goto fail;
    }
    cJSON *nu_pay_local_JSON = nu_pay_nu_pay_convertToJSON(post_orders_request_payment->nu_pay);
    if(nu_pay_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "nuPay", nu_pay_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }


    // post_orders_request_payment->available_payment_methods
    if(post_orders_request_payment->available_payment_methods != payconductor_api_list_AVAILABLEPAYMENTMETHODS_NULL) {
    cJSON *available_payment_methods = cJSON_AddArrayToObject(item, "availablePaymentMethods");
    if(available_payment_methods == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *available_payment_methodsListEntry;
    if (post_orders_request_payment->available_payment_methods) {
    list_ForEach(available_payment_methodsListEntry, post_orders_request_payment->available_payment_methods) {
    cJSON *itemLocal = available_payment_methods_convertToJSON((payconductor_api_post_orders_request_payment__e)available_payment_methodsListEntry->data);
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

post_orders_request_payment_t *post_orders_request_payment_parseFromJSON(cJSON *post_orders_request_paymentJSON){

    post_orders_request_payment_t *post_orders_request_payment_local_var = NULL;

    // define the local variable for post_orders_request_payment->payment_method
    payconductor_api_payment_method__e payment_method_local_nonprim = 0;

    // define the local variable for post_orders_request_payment->expiration_in_seconds
    draft_expiration_in_seconds_t *expiration_in_seconds_local_nonprim = NULL;

    // define the local variable for post_orders_request_payment->card
    credit_card_card_t *card_local_nonprim = NULL;

    // define the local variable for post_orders_request_payment->installments
    credit_card_installments_t *installments_local_nonprim = NULL;

    // define the local variable for post_orders_request_payment->expiration_in_days
    bank_slip_expiration_in_days_t *expiration_in_days_local_nonprim = NULL;

    // define the local variable for post_orders_request_payment->nu_pay
    nu_pay_nu_pay_t *nu_pay_local_nonprim = NULL;

    // define the local list for post_orders_request_payment->available_payment_methods
    list_t *available_payment_methodsList = NULL;

    // post_orders_request_payment->payment_method
    cJSON *payment_method = cJSON_GetObjectItemCaseSensitive(post_orders_request_paymentJSON, "paymentMethod");
    if (cJSON_IsNull(payment_method)) {
        payment_method = NULL;
    }
    if (!payment_method) {
        goto end;
    }

    
    payment_method_local_nonprim = payment_method_parseFromJSON(payment_method); //custom

    // post_orders_request_payment->expiration_in_seconds
    cJSON *expiration_in_seconds = cJSON_GetObjectItemCaseSensitive(post_orders_request_paymentJSON, "expirationInSeconds");
    if (cJSON_IsNull(expiration_in_seconds)) {
        expiration_in_seconds = NULL;
    }
    if (expiration_in_seconds) { 
    expiration_in_seconds_local_nonprim = draft_expiration_in_seconds_parseFromJSON(expiration_in_seconds); //nonprimitive
    }

    // post_orders_request_payment->card
    cJSON *card = cJSON_GetObjectItemCaseSensitive(post_orders_request_paymentJSON, "card");
    if (cJSON_IsNull(card)) {
        card = NULL;
    }
    if (!card) {
        goto end;
    }

    
    card_local_nonprim = credit_card_card_parseFromJSON(card); //nonprimitive

    // post_orders_request_payment->installments
    cJSON *installments = cJSON_GetObjectItemCaseSensitive(post_orders_request_paymentJSON, "installments");
    if (cJSON_IsNull(installments)) {
        installments = NULL;
    }
    if (!installments) {
        goto end;
    }

    
    installments_local_nonprim = credit_card_installments_parseFromJSON(installments); //nonprimitive

    // post_orders_request_payment->soft_descriptor
    cJSON *soft_descriptor = cJSON_GetObjectItemCaseSensitive(post_orders_request_paymentJSON, "softDescriptor");
    if (cJSON_IsNull(soft_descriptor)) {
        soft_descriptor = NULL;
    }
    if (soft_descriptor) { 
    if(!cJSON_IsString(soft_descriptor) && !cJSON_IsNull(soft_descriptor))
    {
    goto end; //String
    }
    }

    // post_orders_request_payment->expiration_in_days
    cJSON *expiration_in_days = cJSON_GetObjectItemCaseSensitive(post_orders_request_paymentJSON, "expirationInDays");
    if (cJSON_IsNull(expiration_in_days)) {
        expiration_in_days = NULL;
    }
    if (expiration_in_days) { 
    expiration_in_days_local_nonprim = bank_slip_expiration_in_days_parseFromJSON(expiration_in_days); //nonprimitive
    }

    // post_orders_request_payment->nu_pay
    cJSON *nu_pay = cJSON_GetObjectItemCaseSensitive(post_orders_request_paymentJSON, "nuPay");
    if (cJSON_IsNull(nu_pay)) {
        nu_pay = NULL;
    }
    if (!nu_pay) {
        goto end;
    }

    
    nu_pay_local_nonprim = nu_pay_nu_pay_parseFromJSON(nu_pay); //nonprimitive

    // post_orders_request_payment->available_payment_methods
    cJSON *available_payment_methods = cJSON_GetObjectItemCaseSensitive(post_orders_request_paymentJSON, "availablePaymentMethods");
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
        post_orders_request_payment_available_payment_methods_e available_payment_methodsItem = available_payment_methods_parseFromJSON(available_payment_methods_local_nonprimitive);

        list_addElement(available_payment_methodsList, (void *)available_payment_methodsItem);
    }
    }


    post_orders_request_payment_local_var = post_orders_request_payment_create_internal (
        payment_method_local_nonprim,
        expiration_in_seconds ? expiration_in_seconds_local_nonprim : NULL,
        card_local_nonprim,
        installments_local_nonprim,
        soft_descriptor && !cJSON_IsNull(soft_descriptor) ? strdup(soft_descriptor->valuestring) : NULL,
        expiration_in_days ? expiration_in_days_local_nonprim : NULL,
        nu_pay_local_nonprim,
        available_payment_methods ? available_payment_methodsList : NULL
        );

    return post_orders_request_payment_local_var;
end:
    if (payment_method_local_nonprim) {
        payment_method_local_nonprim = 0;
    }
    if (expiration_in_seconds_local_nonprim) {
        draft_expiration_in_seconds_free(expiration_in_seconds_local_nonprim);
        expiration_in_seconds_local_nonprim = NULL;
    }
    if (card_local_nonprim) {
        credit_card_card_free(card_local_nonprim);
        card_local_nonprim = NULL;
    }
    if (installments_local_nonprim) {
        credit_card_installments_free(installments_local_nonprim);
        installments_local_nonprim = NULL;
    }
    if (expiration_in_days_local_nonprim) {
        bank_slip_expiration_in_days_free(expiration_in_days_local_nonprim);
        expiration_in_days_local_nonprim = NULL;
    }
    if (nu_pay_local_nonprim) {
        nu_pay_nu_pay_free(nu_pay_local_nonprim);
        nu_pay_local_nonprim = NULL;
    }
    if (available_payment_methodsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, available_payment_methodsList) {
            available_payment_methods_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(available_payment_methodsList);
        available_payment_methodsList = NULL;
    }
    return NULL;

}
