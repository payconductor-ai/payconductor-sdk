#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "pic_pay.h"



static pic_pay_t *pic_pay_create_internal(
    char *payment_method
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
    char *payment_method
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
    if (pic_pay->payment_method) {
        free(pic_pay->payment_method);
        pic_pay->payment_method = NULL;
    }
    free(pic_pay);
}

cJSON *pic_pay_convertToJSON(pic_pay_t *pic_pay) {
    cJSON *item = cJSON_CreateObject();

    // pic_pay->payment_method
    if (!pic_pay->payment_method) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "paymentMethod", pic_pay->payment_method) == NULL) {
    goto fail; //String
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

    // pic_pay->payment_method
    cJSON *payment_method = cJSON_GetObjectItemCaseSensitive(pic_payJSON, "paymentMethod");
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


    pic_pay_local_var = pic_pay_create_internal (
        strdup(payment_method->valuestring)
        );

    return pic_pay_local_var;
end:
    return NULL;

}
