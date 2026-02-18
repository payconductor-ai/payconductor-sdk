#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "post_orders_200_response_nu_pay.h"



static post_orders_200_response_nu_pay_t *post_orders_200_response_nu_pay_create_internal(
    char *payment_url
    ) {
    post_orders_200_response_nu_pay_t *post_orders_200_response_nu_pay_local_var = malloc(sizeof(post_orders_200_response_nu_pay_t));
    if (!post_orders_200_response_nu_pay_local_var) {
        return NULL;
    }
    post_orders_200_response_nu_pay_local_var->payment_url = payment_url;

    post_orders_200_response_nu_pay_local_var->_library_owned = 1;
    return post_orders_200_response_nu_pay_local_var;
}

__attribute__((deprecated)) post_orders_200_response_nu_pay_t *post_orders_200_response_nu_pay_create(
    char *payment_url
    ) {
    return post_orders_200_response_nu_pay_create_internal (
        payment_url
        );
}

void post_orders_200_response_nu_pay_free(post_orders_200_response_nu_pay_t *post_orders_200_response_nu_pay) {
    if(NULL == post_orders_200_response_nu_pay){
        return ;
    }
    if(post_orders_200_response_nu_pay->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "post_orders_200_response_nu_pay_free");
        return ;
    }
    listEntry_t *listEntry;
    if (post_orders_200_response_nu_pay->payment_url) {
        free(post_orders_200_response_nu_pay->payment_url);
        post_orders_200_response_nu_pay->payment_url = NULL;
    }
    free(post_orders_200_response_nu_pay);
}

cJSON *post_orders_200_response_nu_pay_convertToJSON(post_orders_200_response_nu_pay_t *post_orders_200_response_nu_pay) {
    cJSON *item = cJSON_CreateObject();

    // post_orders_200_response_nu_pay->payment_url
    if (!post_orders_200_response_nu_pay->payment_url) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "paymentUrl", post_orders_200_response_nu_pay->payment_url) == NULL) {
    goto fail; //String
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

post_orders_200_response_nu_pay_t *post_orders_200_response_nu_pay_parseFromJSON(cJSON *post_orders_200_response_nu_payJSON){

    post_orders_200_response_nu_pay_t *post_orders_200_response_nu_pay_local_var = NULL;

    // post_orders_200_response_nu_pay->payment_url
    cJSON *payment_url = cJSON_GetObjectItemCaseSensitive(post_orders_200_response_nu_payJSON, "paymentUrl");
    if (cJSON_IsNull(payment_url)) {
        payment_url = NULL;
    }
    if (!payment_url) {
        goto end;
    }

    
    if(!cJSON_IsString(payment_url))
    {
    goto end; //String
    }


    post_orders_200_response_nu_pay_local_var = post_orders_200_response_nu_pay_create_internal (
        strdup(payment_url->valuestring)
        );

    return post_orders_200_response_nu_pay_local_var;
end:
    return NULL;

}
