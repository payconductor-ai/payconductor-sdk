#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "post_orders_200_response_credit_card.h"



static post_orders_200_response_credit_card_t *post_orders_200_response_credit_card_create_internal(
    char *authorization_code
    ) {
    post_orders_200_response_credit_card_t *post_orders_200_response_credit_card_local_var = malloc(sizeof(post_orders_200_response_credit_card_t));
    if (!post_orders_200_response_credit_card_local_var) {
        return NULL;
    }
    post_orders_200_response_credit_card_local_var->authorization_code = authorization_code;

    post_orders_200_response_credit_card_local_var->_library_owned = 1;
    return post_orders_200_response_credit_card_local_var;
}

__attribute__((deprecated)) post_orders_200_response_credit_card_t *post_orders_200_response_credit_card_create(
    char *authorization_code
    ) {
    return post_orders_200_response_credit_card_create_internal (
        authorization_code
        );
}

void post_orders_200_response_credit_card_free(post_orders_200_response_credit_card_t *post_orders_200_response_credit_card) {
    if(NULL == post_orders_200_response_credit_card){
        return ;
    }
    if(post_orders_200_response_credit_card->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "post_orders_200_response_credit_card_free");
        return ;
    }
    listEntry_t *listEntry;
    if (post_orders_200_response_credit_card->authorization_code) {
        free(post_orders_200_response_credit_card->authorization_code);
        post_orders_200_response_credit_card->authorization_code = NULL;
    }
    free(post_orders_200_response_credit_card);
}

cJSON *post_orders_200_response_credit_card_convertToJSON(post_orders_200_response_credit_card_t *post_orders_200_response_credit_card) {
    cJSON *item = cJSON_CreateObject();

    // post_orders_200_response_credit_card->authorization_code
    if(post_orders_200_response_credit_card->authorization_code) {
    if(cJSON_AddStringToObject(item, "authorizationCode", post_orders_200_response_credit_card->authorization_code) == NULL) {
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

post_orders_200_response_credit_card_t *post_orders_200_response_credit_card_parseFromJSON(cJSON *post_orders_200_response_credit_cardJSON){

    post_orders_200_response_credit_card_t *post_orders_200_response_credit_card_local_var = NULL;

    // post_orders_200_response_credit_card->authorization_code
    cJSON *authorization_code = cJSON_GetObjectItemCaseSensitive(post_orders_200_response_credit_cardJSON, "authorizationCode");
    if (cJSON_IsNull(authorization_code)) {
        authorization_code = NULL;
    }
    if (authorization_code) { 
    if(!cJSON_IsString(authorization_code) && !cJSON_IsNull(authorization_code))
    {
    goto end; //String
    }
    }


    post_orders_200_response_credit_card_local_var = post_orders_200_response_credit_card_create_internal (
        authorization_code && !cJSON_IsNull(authorization_code) ? strdup(authorization_code->valuestring) : NULL
        );

    return post_orders_200_response_credit_card_local_var;
end:
    return NULL;

}
