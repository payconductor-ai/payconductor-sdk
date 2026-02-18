#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "post_orders_200_response_bank_slip.h"



static post_orders_200_response_bank_slip_t *post_orders_200_response_bank_slip_create_internal(
    char *bar_code,
    char *digitable_line,
    char *pdf_url
    ) {
    post_orders_200_response_bank_slip_t *post_orders_200_response_bank_slip_local_var = malloc(sizeof(post_orders_200_response_bank_slip_t));
    if (!post_orders_200_response_bank_slip_local_var) {
        return NULL;
    }
    post_orders_200_response_bank_slip_local_var->bar_code = bar_code;
    post_orders_200_response_bank_slip_local_var->digitable_line = digitable_line;
    post_orders_200_response_bank_slip_local_var->pdf_url = pdf_url;

    post_orders_200_response_bank_slip_local_var->_library_owned = 1;
    return post_orders_200_response_bank_slip_local_var;
}

__attribute__((deprecated)) post_orders_200_response_bank_slip_t *post_orders_200_response_bank_slip_create(
    char *bar_code,
    char *digitable_line,
    char *pdf_url
    ) {
    return post_orders_200_response_bank_slip_create_internal (
        bar_code,
        digitable_line,
        pdf_url
        );
}

void post_orders_200_response_bank_slip_free(post_orders_200_response_bank_slip_t *post_orders_200_response_bank_slip) {
    if(NULL == post_orders_200_response_bank_slip){
        return ;
    }
    if(post_orders_200_response_bank_slip->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "post_orders_200_response_bank_slip_free");
        return ;
    }
    listEntry_t *listEntry;
    if (post_orders_200_response_bank_slip->bar_code) {
        free(post_orders_200_response_bank_slip->bar_code);
        post_orders_200_response_bank_slip->bar_code = NULL;
    }
    if (post_orders_200_response_bank_slip->digitable_line) {
        free(post_orders_200_response_bank_slip->digitable_line);
        post_orders_200_response_bank_slip->digitable_line = NULL;
    }
    if (post_orders_200_response_bank_slip->pdf_url) {
        free(post_orders_200_response_bank_slip->pdf_url);
        post_orders_200_response_bank_slip->pdf_url = NULL;
    }
    free(post_orders_200_response_bank_slip);
}

cJSON *post_orders_200_response_bank_slip_convertToJSON(post_orders_200_response_bank_slip_t *post_orders_200_response_bank_slip) {
    cJSON *item = cJSON_CreateObject();

    // post_orders_200_response_bank_slip->bar_code
    if (!post_orders_200_response_bank_slip->bar_code) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "barCode", post_orders_200_response_bank_slip->bar_code) == NULL) {
    goto fail; //String
    }


    // post_orders_200_response_bank_slip->digitable_line
    if (!post_orders_200_response_bank_slip->digitable_line) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "digitableLine", post_orders_200_response_bank_slip->digitable_line) == NULL) {
    goto fail; //String
    }


    // post_orders_200_response_bank_slip->pdf_url
    if(post_orders_200_response_bank_slip->pdf_url) {
    if(cJSON_AddStringToObject(item, "pdfUrl", post_orders_200_response_bank_slip->pdf_url) == NULL) {
    goto fail; //String
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

post_orders_200_response_bank_slip_t *post_orders_200_response_bank_slip_parseFromJSON(cJSON *post_orders_200_response_bank_slipJSON){

    post_orders_200_response_bank_slip_t *post_orders_200_response_bank_slip_local_var = NULL;

    // post_orders_200_response_bank_slip->bar_code
    cJSON *bar_code = cJSON_GetObjectItemCaseSensitive(post_orders_200_response_bank_slipJSON, "barCode");
    if (cJSON_IsNull(bar_code)) {
        bar_code = NULL;
    }
    if (!bar_code) {
        goto end;
    }

    
    if(!cJSON_IsString(bar_code))
    {
    goto end; //String
    }

    // post_orders_200_response_bank_slip->digitable_line
    cJSON *digitable_line = cJSON_GetObjectItemCaseSensitive(post_orders_200_response_bank_slipJSON, "digitableLine");
    if (cJSON_IsNull(digitable_line)) {
        digitable_line = NULL;
    }
    if (!digitable_line) {
        goto end;
    }

    
    if(!cJSON_IsString(digitable_line))
    {
    goto end; //String
    }

    // post_orders_200_response_bank_slip->pdf_url
    cJSON *pdf_url = cJSON_GetObjectItemCaseSensitive(post_orders_200_response_bank_slipJSON, "pdfUrl");
    if (cJSON_IsNull(pdf_url)) {
        pdf_url = NULL;
    }
    if (pdf_url) { 
    if(!cJSON_IsString(pdf_url) && !cJSON_IsNull(pdf_url))
    {
    goto end; //String
    }
    }


    post_orders_200_response_bank_slip_local_var = post_orders_200_response_bank_slip_create_internal (
        strdup(bar_code->valuestring),
        strdup(digitable_line->valuestring),
        pdf_url && !cJSON_IsNull(pdf_url) ? strdup(pdf_url->valuestring) : NULL
        );

    return post_orders_200_response_bank_slip_local_var;
end:
    return NULL;

}
