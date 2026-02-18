#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "post_card_tokenization_request_customer_any_of.h"



static post_card_tokenization_request_customer_any_of_t *post_card_tokenization_request_customer_any_of_create_internal(
    char *id
    ) {
    post_card_tokenization_request_customer_any_of_t *post_card_tokenization_request_customer_any_of_local_var = malloc(sizeof(post_card_tokenization_request_customer_any_of_t));
    if (!post_card_tokenization_request_customer_any_of_local_var) {
        return NULL;
    }
    post_card_tokenization_request_customer_any_of_local_var->id = id;

    post_card_tokenization_request_customer_any_of_local_var->_library_owned = 1;
    return post_card_tokenization_request_customer_any_of_local_var;
}

__attribute__((deprecated)) post_card_tokenization_request_customer_any_of_t *post_card_tokenization_request_customer_any_of_create(
    char *id
    ) {
    return post_card_tokenization_request_customer_any_of_create_internal (
        id
        );
}

void post_card_tokenization_request_customer_any_of_free(post_card_tokenization_request_customer_any_of_t *post_card_tokenization_request_customer_any_of) {
    if(NULL == post_card_tokenization_request_customer_any_of){
        return ;
    }
    if(post_card_tokenization_request_customer_any_of->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "post_card_tokenization_request_customer_any_of_free");
        return ;
    }
    listEntry_t *listEntry;
    if (post_card_tokenization_request_customer_any_of->id) {
        free(post_card_tokenization_request_customer_any_of->id);
        post_card_tokenization_request_customer_any_of->id = NULL;
    }
    free(post_card_tokenization_request_customer_any_of);
}

cJSON *post_card_tokenization_request_customer_any_of_convertToJSON(post_card_tokenization_request_customer_any_of_t *post_card_tokenization_request_customer_any_of) {
    cJSON *item = cJSON_CreateObject();

    // post_card_tokenization_request_customer_any_of->id
    if (!post_card_tokenization_request_customer_any_of->id) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "id", post_card_tokenization_request_customer_any_of->id) == NULL) {
    goto fail; //String
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

post_card_tokenization_request_customer_any_of_t *post_card_tokenization_request_customer_any_of_parseFromJSON(cJSON *post_card_tokenization_request_customer_any_ofJSON){

    post_card_tokenization_request_customer_any_of_t *post_card_tokenization_request_customer_any_of_local_var = NULL;

    // post_card_tokenization_request_customer_any_of->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(post_card_tokenization_request_customer_any_ofJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (!id) {
        goto end;
    }

    
    if(!cJSON_IsString(id))
    {
    goto end; //String
    }


    post_card_tokenization_request_customer_any_of_local_var = post_card_tokenization_request_customer_any_of_create_internal (
        strdup(id->valuestring)
        );

    return post_card_tokenization_request_customer_any_of_local_var;
end:
    return NULL;

}
