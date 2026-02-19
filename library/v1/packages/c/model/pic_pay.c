#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "pic_pay.h"



static pic_pay_t *pic_pay_create_internal(
    payconductor_api_payment_method__e payment_method
    ) {
    pic_pay_t *pic_pay_local_var = malloc(sizeof(pic_pay_t));
    if (!pic_pay_local_var) {
        return NULL;
    }
    pic_pay_local_var->payment_method = payment_method;

    pic_pay_local_var->_library_owned = 1;
    return pic_pay_local_var;
}

__attribute__((deprecated)) pic_pay_t *pic_pay_create(
    payconductor_api_payment_method__e payment_method
    ) {
    return pic_pay_create_internal (
        payment_method
        );
}

void pic_pay_free(pic_pay_t *pic_pay) {
    if(NULL == pic_pay){
        return ;
    }
    if(pic_pay->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "pic_pay_free");
        return ;
    }
    listEntry_t *listEntry;
    free(pic_pay);
}

cJSON *pic_pay_convertToJSON(pic_pay_t *pic_pay) {
    cJSON *item = cJSON_CreateObject();

    // pic_pay->payment_method
    if (payconductor_api_payment_method__NULL == pic_pay->payment_method) {
        goto fail;
    }
    cJSON *payment_method_local_JSON = payment_method_convertToJSON(pic_pay->payment_method);
    if(payment_method_local_JSON == NULL) {
        goto fail; // custom
    }
    cJSON_AddItemToObject(item, "paymentMethod", payment_method_local_JSON);
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

pic_pay_t *pic_pay_parseFromJSON(cJSON *pic_payJSON){

    pic_pay_t *pic_pay_local_var = NULL;

    // define the local variable for pic_pay->payment_method
    payconductor_api_payment_method__e payment_method_local_nonprim = 0;

    // pic_pay->payment_method
    cJSON *payment_method = cJSON_GetObjectItemCaseSensitive(pic_payJSON, "paymentMethod");
    if (cJSON_IsNull(payment_method)) {
        payment_method = NULL;
    }
    if (!payment_method) {
        goto end;
    }

    
    payment_method_local_nonprim = payment_method_parseFromJSON(payment_method); //custom


    pic_pay_local_var = pic_pay_create_internal (
        payment_method_local_nonprim
        );

    return pic_pay_local_var;
end:
    if (payment_method_local_nonprim) {
        payment_method_local_nonprim = 0;
    }
    return NULL;

}
