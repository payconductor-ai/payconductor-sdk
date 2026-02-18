#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "post_card_tokenization_request.h"



static post_card_tokenization_request_t *post_card_tokenization_request_create_internal(
    complete_card_data_t *card,
    int save_card,
    post_card_tokenization_request_customer_t *customer
    ) {
    post_card_tokenization_request_t *post_card_tokenization_request_local_var = malloc(sizeof(post_card_tokenization_request_t));
    if (!post_card_tokenization_request_local_var) {
        return NULL;
    }
    post_card_tokenization_request_local_var->card = card;
    post_card_tokenization_request_local_var->save_card = save_card;
    post_card_tokenization_request_local_var->customer = customer;

    post_card_tokenization_request_local_var->_library_owned = 1;
    return post_card_tokenization_request_local_var;
}

__attribute__((deprecated)) post_card_tokenization_request_t *post_card_tokenization_request_create(
    complete_card_data_t *card,
    int save_card,
    post_card_tokenization_request_customer_t *customer
    ) {
    return post_card_tokenization_request_create_internal (
        card,
        save_card,
        customer
        );
}

void post_card_tokenization_request_free(post_card_tokenization_request_t *post_card_tokenization_request) {
    if(NULL == post_card_tokenization_request){
        return ;
    }
    if(post_card_tokenization_request->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "post_card_tokenization_request_free");
        return ;
    }
    listEntry_t *listEntry;
    if (post_card_tokenization_request->card) {
        complete_card_data_free(post_card_tokenization_request->card);
        post_card_tokenization_request->card = NULL;
    }
    if (post_card_tokenization_request->customer) {
        post_card_tokenization_request_customer_free(post_card_tokenization_request->customer);
        post_card_tokenization_request->customer = NULL;
    }
    free(post_card_tokenization_request);
}

cJSON *post_card_tokenization_request_convertToJSON(post_card_tokenization_request_t *post_card_tokenization_request) {
    cJSON *item = cJSON_CreateObject();

    // post_card_tokenization_request->card
    if (!post_card_tokenization_request->card) {
        goto fail;
    }
    cJSON *card_local_JSON = complete_card_data_convertToJSON(post_card_tokenization_request->card);
    if(card_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "card", card_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }


    // post_card_tokenization_request->save_card
    if (!post_card_tokenization_request->save_card) {
        goto fail;
    }
    if(cJSON_AddBoolToObject(item, "saveCard", post_card_tokenization_request->save_card) == NULL) {
    goto fail; //Bool
    }


    // post_card_tokenization_request->customer
    if (!post_card_tokenization_request->customer) {
        goto fail;
    }
    cJSON *customer_local_JSON = post_card_tokenization_request_customer_convertToJSON(post_card_tokenization_request->customer);
    if(customer_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "customer", customer_local_JSON);
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

post_card_tokenization_request_t *post_card_tokenization_request_parseFromJSON(cJSON *post_card_tokenization_requestJSON){

    post_card_tokenization_request_t *post_card_tokenization_request_local_var = NULL;

    // define the local variable for post_card_tokenization_request->card
    complete_card_data_t *card_local_nonprim = NULL;

    // define the local variable for post_card_tokenization_request->customer
    post_card_tokenization_request_customer_t *customer_local_nonprim = NULL;

    // post_card_tokenization_request->card
    cJSON *card = cJSON_GetObjectItemCaseSensitive(post_card_tokenization_requestJSON, "card");
    if (cJSON_IsNull(card)) {
        card = NULL;
    }
    if (!card) {
        goto end;
    }

    
    card_local_nonprim = complete_card_data_parseFromJSON(card); //nonprimitive

    // post_card_tokenization_request->save_card
    cJSON *save_card = cJSON_GetObjectItemCaseSensitive(post_card_tokenization_requestJSON, "saveCard");
    if (cJSON_IsNull(save_card)) {
        save_card = NULL;
    }
    if (!save_card) {
        goto end;
    }

    
    if(!cJSON_IsBool(save_card))
    {
    goto end; //Bool
    }

    // post_card_tokenization_request->customer
    cJSON *customer = cJSON_GetObjectItemCaseSensitive(post_card_tokenization_requestJSON, "customer");
    if (cJSON_IsNull(customer)) {
        customer = NULL;
    }
    if (!customer) {
        goto end;
    }

    
    customer_local_nonprim = post_card_tokenization_request_customer_parseFromJSON(customer); //nonprimitive


    post_card_tokenization_request_local_var = post_card_tokenization_request_create_internal (
        card_local_nonprim,
        save_card->valueint,
        customer_local_nonprim
        );

    return post_card_tokenization_request_local_var;
end:
    if (card_local_nonprim) {
        complete_card_data_free(card_local_nonprim);
        card_local_nonprim = NULL;
    }
    if (customer_local_nonprim) {
        post_card_tokenization_request_customer_free(customer_local_nonprim);
        customer_local_nonprim = NULL;
    }
    return NULL;

}
