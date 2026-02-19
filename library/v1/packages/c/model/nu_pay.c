#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "nu_pay.h"



static nu_pay_t *nu_pay_create_internal(
    payconductor_api_payment_method__e payment_method,
    nu_pay_nu_pay_t *nu_pay
    ) {
    nu_pay_t *nu_pay_local_var = malloc(sizeof(nu_pay_t));
    if (!nu_pay_local_var) {
        return NULL;
    }
    nu_pay_local_var->payment_method = payment_method;
    nu_pay_local_var->nu_pay = nu_pay;

    nu_pay_local_var->_library_owned = 1;
    return nu_pay_local_var;
}

__attribute__((deprecated)) nu_pay_t *nu_pay_create(
    payconductor_api_payment_method__e payment_method,
    nu_pay_nu_pay_t *nu_pay
    ) {
    return nu_pay_create_internal (
        payment_method,
        nu_pay
        );
}

void nu_pay_free(nu_pay_t *nu_pay) {
    if(NULL == nu_pay){
        return ;
    }
    if(nu_pay->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "nu_pay_free");
        return ;
    }
    listEntry_t *listEntry;
    if (nu_pay->nu_pay) {
        nu_pay_nu_pay_free(nu_pay->nu_pay);
        nu_pay->nu_pay = NULL;
    }
    free(nu_pay);
}

cJSON *nu_pay_convertToJSON(nu_pay_t *nu_pay) {
    cJSON *item = cJSON_CreateObject();

    // nu_pay->payment_method
    if (payconductor_api_payment_method__NULL == nu_pay->payment_method) {
        goto fail;
    }
    cJSON *payment_method_local_JSON = payment_method_convertToJSON(nu_pay->payment_method);
    if(payment_method_local_JSON == NULL) {
        goto fail; // custom
    }
    cJSON_AddItemToObject(item, "paymentMethod", payment_method_local_JSON);
    if(item->child == NULL) {
        goto fail;
    }


    // nu_pay->nu_pay
    if (!nu_pay->nu_pay) {
        goto fail;
    }
    cJSON *nu_pay_local_JSON = nu_pay_nu_pay_convertToJSON(nu_pay->nu_pay);
    if(nu_pay_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "nuPay", nu_pay_local_JSON);
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

nu_pay_t *nu_pay_parseFromJSON(cJSON *nu_payJSON){

    nu_pay_t *nu_pay_local_var = NULL;

    // define the local variable for nu_pay->payment_method
    payconductor_api_payment_method__e payment_method_local_nonprim = 0;

    // define the local variable for nu_pay->nu_pay
    nu_pay_nu_pay_t *nu_pay_local_nonprim = NULL;

    // nu_pay->payment_method
    cJSON *payment_method = cJSON_GetObjectItemCaseSensitive(nu_payJSON, "paymentMethod");
    if (cJSON_IsNull(payment_method)) {
        payment_method = NULL;
    }
    if (!payment_method) {
        goto end;
    }

    
    payment_method_local_nonprim = payment_method_parseFromJSON(payment_method); //custom

    // nu_pay->nu_pay
    cJSON *nu_pay = cJSON_GetObjectItemCaseSensitive(nu_payJSON, "nuPay");
    if (cJSON_IsNull(nu_pay)) {
        nu_pay = NULL;
    }
    if (!nu_pay) {
        goto end;
    }

    
    nu_pay_local_nonprim = nu_pay_nu_pay_parseFromJSON(nu_pay); //nonprimitive


    nu_pay_local_var = nu_pay_create_internal (
        payment_method_local_nonprim,
        nu_pay_local_nonprim
        );

    return nu_pay_local_var;
end:
    if (payment_method_local_nonprim) {
        payment_method_local_nonprim = 0;
    }
    if (nu_pay_local_nonprim) {
        nu_pay_nu_pay_free(nu_pay_local_nonprim);
        nu_pay_local_nonprim = NULL;
    }
    return NULL;

}
