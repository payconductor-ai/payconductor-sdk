#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "bank_slip.h"



static bank_slip_t *bank_slip_create_internal(
    payconductor_api_payment_method__e payment_method,
    bank_slip_expiration_in_days_t *expiration_in_days
    ) {
    bank_slip_t *bank_slip_local_var = malloc(sizeof(bank_slip_t));
    if (!bank_slip_local_var) {
        return NULL;
    }
    bank_slip_local_var->payment_method = payment_method;
    bank_slip_local_var->expiration_in_days = expiration_in_days;

    bank_slip_local_var->_library_owned = 1;
    return bank_slip_local_var;
}

__attribute__((deprecated)) bank_slip_t *bank_slip_create(
    payconductor_api_payment_method__e payment_method,
    bank_slip_expiration_in_days_t *expiration_in_days
    ) {
    return bank_slip_create_internal (
        payment_method,
        expiration_in_days
        );
}

void bank_slip_free(bank_slip_t *bank_slip) {
    if(NULL == bank_slip){
        return ;
    }
    if(bank_slip->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "bank_slip_free");
        return ;
    }
    listEntry_t *listEntry;
    if (bank_slip->expiration_in_days) {
        bank_slip_expiration_in_days_free(bank_slip->expiration_in_days);
        bank_slip->expiration_in_days = NULL;
    }
    free(bank_slip);
}

cJSON *bank_slip_convertToJSON(bank_slip_t *bank_slip) {
    cJSON *item = cJSON_CreateObject();

    // bank_slip->payment_method
    if (payconductor_api_payment_method__NULL == bank_slip->payment_method) {
        goto fail;
    }
    cJSON *payment_method_local_JSON = payment_method_convertToJSON(bank_slip->payment_method);
    if(payment_method_local_JSON == NULL) {
        goto fail; // custom
    }
    cJSON_AddItemToObject(item, "paymentMethod", payment_method_local_JSON);
    if(item->child == NULL) {
        goto fail;
    }


    // bank_slip->expiration_in_days
    if(bank_slip->expiration_in_days) {
    cJSON *expiration_in_days_local_JSON = bank_slip_expiration_in_days_convertToJSON(bank_slip->expiration_in_days);
    if(expiration_in_days_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "expirationInDays", expiration_in_days_local_JSON);
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

bank_slip_t *bank_slip_parseFromJSON(cJSON *bank_slipJSON){

    bank_slip_t *bank_slip_local_var = NULL;

    // define the local variable for bank_slip->payment_method
    payconductor_api_payment_method__e payment_method_local_nonprim = 0;

    // define the local variable for bank_slip->expiration_in_days
    bank_slip_expiration_in_days_t *expiration_in_days_local_nonprim = NULL;

    // bank_slip->payment_method
    cJSON *payment_method = cJSON_GetObjectItemCaseSensitive(bank_slipJSON, "paymentMethod");
    if (cJSON_IsNull(payment_method)) {
        payment_method = NULL;
    }
    if (!payment_method) {
        goto end;
    }

    
    payment_method_local_nonprim = payment_method_parseFromJSON(payment_method); //custom

    // bank_slip->expiration_in_days
    cJSON *expiration_in_days = cJSON_GetObjectItemCaseSensitive(bank_slipJSON, "expirationInDays");
    if (cJSON_IsNull(expiration_in_days)) {
        expiration_in_days = NULL;
    }
    if (expiration_in_days) { 
    expiration_in_days_local_nonprim = bank_slip_expiration_in_days_parseFromJSON(expiration_in_days); //nonprimitive
    }


    bank_slip_local_var = bank_slip_create_internal (
        payment_method_local_nonprim,
        expiration_in_days ? expiration_in_days_local_nonprim : NULL
        );

    return bank_slip_local_var;
end:
    if (payment_method_local_nonprim) {
        payment_method_local_nonprim = 0;
    }
    if (expiration_in_days_local_nonprim) {
        bank_slip_expiration_in_days_free(expiration_in_days_local_nonprim);
        expiration_in_days_local_nonprim = NULL;
    }
    return NULL;

}
