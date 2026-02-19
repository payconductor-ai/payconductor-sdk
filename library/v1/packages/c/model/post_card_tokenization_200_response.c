#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "post_card_tokenization_200_response.h"



static post_card_tokenization_200_response_t *post_card_tokenization_200_response_create_internal(
    char *customer_id,
    char *token
    ) {
    post_card_tokenization_200_response_t *post_card_tokenization_200_response_local_var = malloc(sizeof(post_card_tokenization_200_response_t));
    if (!post_card_tokenization_200_response_local_var) {
        return NULL;
    }
    post_card_tokenization_200_response_local_var->customer_id = customer_id;
    post_card_tokenization_200_response_local_var->token = token;

    post_card_tokenization_200_response_local_var->_library_owned = 1;
    return post_card_tokenization_200_response_local_var;
}

__attribute__((deprecated)) post_card_tokenization_200_response_t *post_card_tokenization_200_response_create(
    char *customer_id,
    char *token
    ) {
    return post_card_tokenization_200_response_create_internal (
        customer_id,
        token
        );
}

void post_card_tokenization_200_response_free(post_card_tokenization_200_response_t *post_card_tokenization_200_response) {
    if(NULL == post_card_tokenization_200_response){
        return ;
    }
    if(post_card_tokenization_200_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "post_card_tokenization_200_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (post_card_tokenization_200_response->customer_id) {
        free(post_card_tokenization_200_response->customer_id);
        post_card_tokenization_200_response->customer_id = NULL;
    }
    if (post_card_tokenization_200_response->token) {
        free(post_card_tokenization_200_response->token);
        post_card_tokenization_200_response->token = NULL;
    }
    free(post_card_tokenization_200_response);
}

cJSON *post_card_tokenization_200_response_convertToJSON(post_card_tokenization_200_response_t *post_card_tokenization_200_response) {
    cJSON *item = cJSON_CreateObject();

    // post_card_tokenization_200_response->customer_id
    if (!post_card_tokenization_200_response->customer_id) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "customerId", post_card_tokenization_200_response->customer_id) == NULL) {
    goto fail; //String
    }


    // post_card_tokenization_200_response->token
    if (!post_card_tokenization_200_response->token) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "token", post_card_tokenization_200_response->token) == NULL) {
    goto fail; //String
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

post_card_tokenization_200_response_t *post_card_tokenization_200_response_parseFromJSON(cJSON *post_card_tokenization_200_responseJSON){

    post_card_tokenization_200_response_t *post_card_tokenization_200_response_local_var = NULL;

    // post_card_tokenization_200_response->customer_id
    cJSON *customer_id = cJSON_GetObjectItemCaseSensitive(post_card_tokenization_200_responseJSON, "customerId");
    if (cJSON_IsNull(customer_id)) {
        customer_id = NULL;
    }
    if (!customer_id) {
        goto end;
    }

    
    if(!cJSON_IsString(customer_id))
    {
    goto end; //String
    }

    // post_card_tokenization_200_response->token
    cJSON *token = cJSON_GetObjectItemCaseSensitive(post_card_tokenization_200_responseJSON, "token");
    if (cJSON_IsNull(token)) {
        token = NULL;
    }
    if (!token) {
        goto end;
    }

    
    if(!cJSON_IsString(token))
    {
    goto end; //String
    }


    post_card_tokenization_200_response_local_var = post_card_tokenization_200_response_create_internal (
        strdup(customer_id->valuestring),
        strdup(token->valuestring)
        );

    return post_card_tokenization_200_response_local_var;
end:
    return NULL;

}
