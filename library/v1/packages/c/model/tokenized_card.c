#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "tokenized_card.h"



static tokenized_card_t *tokenized_card_create_internal(
    char *first_six_card_number,
    char *token
    ) {
    tokenized_card_t *tokenized_card_local_var = malloc(sizeof(tokenized_card_t));
    if (!tokenized_card_local_var) {
        return NULL;
    }
    tokenized_card_local_var->first_six_card_number = first_six_card_number;
    tokenized_card_local_var->token = token;

    tokenized_card_local_var->_library_owned = 1;
    return tokenized_card_local_var;
}

__attribute__((deprecated)) tokenized_card_t *tokenized_card_create(
    char *first_six_card_number,
    char *token
    ) {
    return tokenized_card_create_internal (
        first_six_card_number,
        token
        );
}

void tokenized_card_free(tokenized_card_t *tokenized_card) {
    if(NULL == tokenized_card){
        return ;
    }
    if(tokenized_card->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "tokenized_card_free");
        return ;
    }
    listEntry_t *listEntry;
    if (tokenized_card->first_six_card_number) {
        free(tokenized_card->first_six_card_number);
        tokenized_card->first_six_card_number = NULL;
    }
    if (tokenized_card->token) {
        free(tokenized_card->token);
        tokenized_card->token = NULL;
    }
    free(tokenized_card);
}

cJSON *tokenized_card_convertToJSON(tokenized_card_t *tokenized_card) {
    cJSON *item = cJSON_CreateObject();

    // tokenized_card->first_six_card_number
    if(tokenized_card->first_six_card_number) {
    if(cJSON_AddStringToObject(item, "firstSixCardNumber", tokenized_card->first_six_card_number) == NULL) {
    goto fail; //String
    }
    }


    // tokenized_card->token
    if (!tokenized_card->token) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "token", tokenized_card->token) == NULL) {
    goto fail; //String
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

tokenized_card_t *tokenized_card_parseFromJSON(cJSON *tokenized_cardJSON){

    tokenized_card_t *tokenized_card_local_var = NULL;

    // tokenized_card->first_six_card_number
    cJSON *first_six_card_number = cJSON_GetObjectItemCaseSensitive(tokenized_cardJSON, "firstSixCardNumber");
    if (cJSON_IsNull(first_six_card_number)) {
        first_six_card_number = NULL;
    }
    if (first_six_card_number) { 
    if(!cJSON_IsString(first_six_card_number) && !cJSON_IsNull(first_six_card_number))
    {
    goto end; //String
    }
    }

    // tokenized_card->token
    cJSON *token = cJSON_GetObjectItemCaseSensitive(tokenized_cardJSON, "token");
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


    tokenized_card_local_var = tokenized_card_create_internal (
        first_six_card_number && !cJSON_IsNull(first_six_card_number) ? strdup(first_six_card_number->valuestring) : NULL,
        strdup(token->valuestring)
        );

    return tokenized_card_local_var;
end:
    return NULL;

}
