#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "post_orders_200_response_pic_pay.h"



static post_orders_200_response_pic_pay_t *post_orders_200_response_pic_pay_create_internal(
    char *copy_and_paste_code,
    char *qr_code_url
    ) {
    post_orders_200_response_pic_pay_t *post_orders_200_response_pic_pay_local_var = malloc(sizeof(post_orders_200_response_pic_pay_t));
    if (!post_orders_200_response_pic_pay_local_var) {
        return NULL;
    }
    post_orders_200_response_pic_pay_local_var->copy_and_paste_code = copy_and_paste_code;
    post_orders_200_response_pic_pay_local_var->qr_code_url = qr_code_url;

    post_orders_200_response_pic_pay_local_var->_library_owned = 1;
    return post_orders_200_response_pic_pay_local_var;
}

__attribute__((deprecated)) post_orders_200_response_pic_pay_t *post_orders_200_response_pic_pay_create(
    char *copy_and_paste_code,
    char *qr_code_url
    ) {
    return post_orders_200_response_pic_pay_create_internal (
        copy_and_paste_code,
        qr_code_url
        );
}

void post_orders_200_response_pic_pay_free(post_orders_200_response_pic_pay_t *post_orders_200_response_pic_pay) {
    if(NULL == post_orders_200_response_pic_pay){
        return ;
    }
    if(post_orders_200_response_pic_pay->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "post_orders_200_response_pic_pay_free");
        return ;
    }
    listEntry_t *listEntry;
    if (post_orders_200_response_pic_pay->copy_and_paste_code) {
        free(post_orders_200_response_pic_pay->copy_and_paste_code);
        post_orders_200_response_pic_pay->copy_and_paste_code = NULL;
    }
    if (post_orders_200_response_pic_pay->qr_code_url) {
        free(post_orders_200_response_pic_pay->qr_code_url);
        post_orders_200_response_pic_pay->qr_code_url = NULL;
    }
    free(post_orders_200_response_pic_pay);
}

cJSON *post_orders_200_response_pic_pay_convertToJSON(post_orders_200_response_pic_pay_t *post_orders_200_response_pic_pay) {
    cJSON *item = cJSON_CreateObject();

    // post_orders_200_response_pic_pay->copy_and_paste_code
    if (!post_orders_200_response_pic_pay->copy_and_paste_code) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "copyAndPasteCode", post_orders_200_response_pic_pay->copy_and_paste_code) == NULL) {
    goto fail; //String
    }


    // post_orders_200_response_pic_pay->qr_code_url
    if (!post_orders_200_response_pic_pay->qr_code_url) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "qrCodeUrl", post_orders_200_response_pic_pay->qr_code_url) == NULL) {
    goto fail; //String
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

post_orders_200_response_pic_pay_t *post_orders_200_response_pic_pay_parseFromJSON(cJSON *post_orders_200_response_pic_payJSON){

    post_orders_200_response_pic_pay_t *post_orders_200_response_pic_pay_local_var = NULL;

    // post_orders_200_response_pic_pay->copy_and_paste_code
    cJSON *copy_and_paste_code = cJSON_GetObjectItemCaseSensitive(post_orders_200_response_pic_payJSON, "copyAndPasteCode");
    if (cJSON_IsNull(copy_and_paste_code)) {
        copy_and_paste_code = NULL;
    }
    if (!copy_and_paste_code) {
        goto end;
    }

    
    if(!cJSON_IsString(copy_and_paste_code))
    {
    goto end; //String
    }

    // post_orders_200_response_pic_pay->qr_code_url
    cJSON *qr_code_url = cJSON_GetObjectItemCaseSensitive(post_orders_200_response_pic_payJSON, "qrCodeUrl");
    if (cJSON_IsNull(qr_code_url)) {
        qr_code_url = NULL;
    }
    if (!qr_code_url) {
        goto end;
    }

    
    if(!cJSON_IsString(qr_code_url))
    {
    goto end; //String
    }


    post_orders_200_response_pic_pay_local_var = post_orders_200_response_pic_pay_create_internal (
        strdup(copy_and_paste_code->valuestring),
        strdup(qr_code_url->valuestring)
        );

    return post_orders_200_response_pic_pay_local_var;
end:
    return NULL;

}
