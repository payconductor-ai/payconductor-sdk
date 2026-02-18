#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "credit_card_card.h"



static credit_card_card_t *credit_card_card_create_internal(
    char *first_six_card_number,
    char *token,
    char *cvv,
    complete_card_data_expiration_t *expiration,
    char *holder_name,
    char *number
    ) {
    credit_card_card_t *credit_card_card_local_var = malloc(sizeof(credit_card_card_t));
    if (!credit_card_card_local_var) {
        return NULL;
    }
    credit_card_card_local_var->first_six_card_number = first_six_card_number;
    credit_card_card_local_var->token = token;
    credit_card_card_local_var->cvv = cvv;
    credit_card_card_local_var->expiration = expiration;
    credit_card_card_local_var->holder_name = holder_name;
    credit_card_card_local_var->number = number;

    credit_card_card_local_var->_library_owned = 1;
    return credit_card_card_local_var;
}

__attribute__((deprecated)) credit_card_card_t *credit_card_card_create(
    char *first_six_card_number,
    char *token,
    char *cvv,
    complete_card_data_expiration_t *expiration,
    char *holder_name,
    char *number
    ) {
    return credit_card_card_create_internal (
        first_six_card_number,
        token,
        cvv,
        expiration,
        holder_name,
        number
        );
}

void credit_card_card_free(credit_card_card_t *credit_card_card) {
    if(NULL == credit_card_card){
        return ;
    }
    if(credit_card_card->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "credit_card_card_free");
        return ;
    }
    listEntry_t *listEntry;
    if (credit_card_card->first_six_card_number) {
        free(credit_card_card->first_six_card_number);
        credit_card_card->first_six_card_number = NULL;
    }
    if (credit_card_card->token) {
        free(credit_card_card->token);
        credit_card_card->token = NULL;
    }
    if (credit_card_card->cvv) {
        free(credit_card_card->cvv);
        credit_card_card->cvv = NULL;
    }
    if (credit_card_card->expiration) {
        complete_card_data_expiration_free(credit_card_card->expiration);
        credit_card_card->expiration = NULL;
    }
    if (credit_card_card->holder_name) {
        free(credit_card_card->holder_name);
        credit_card_card->holder_name = NULL;
    }
    if (credit_card_card->number) {
        free(credit_card_card->number);
        credit_card_card->number = NULL;
    }
    free(credit_card_card);
}

cJSON *credit_card_card_convertToJSON(credit_card_card_t *credit_card_card) {
    cJSON *item = cJSON_CreateObject();

    // credit_card_card->first_six_card_number
    if(credit_card_card->first_six_card_number) {
    if(cJSON_AddStringToObject(item, "firstSixCardNumber", credit_card_card->first_six_card_number) == NULL) {
    goto fail; //String
    }
    }


    // credit_card_card->token
    if (!credit_card_card->token) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "token", credit_card_card->token) == NULL) {
    goto fail; //String
    }


    // credit_card_card->cvv
    if (!credit_card_card->cvv) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "cvv", credit_card_card->cvv) == NULL) {
    goto fail; //String
    }


    // credit_card_card->expiration
    if (!credit_card_card->expiration) {
        goto fail;
    }
    cJSON *expiration_local_JSON = complete_card_data_expiration_convertToJSON(credit_card_card->expiration);
    if(expiration_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "expiration", expiration_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }


    // credit_card_card->holder_name
    if (!credit_card_card->holder_name) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "holderName", credit_card_card->holder_name) == NULL) {
    goto fail; //String
    }


    // credit_card_card->number
    if (!credit_card_card->number) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "number", credit_card_card->number) == NULL) {
    goto fail; //String
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

credit_card_card_t *credit_card_card_parseFromJSON(cJSON *credit_card_cardJSON){

    credit_card_card_t *credit_card_card_local_var = NULL;

    // define the local variable for credit_card_card->expiration
    complete_card_data_expiration_t *expiration_local_nonprim = NULL;

    // credit_card_card->first_six_card_number
    cJSON *first_six_card_number = cJSON_GetObjectItemCaseSensitive(credit_card_cardJSON, "firstSixCardNumber");
    if (cJSON_IsNull(first_six_card_number)) {
        first_six_card_number = NULL;
    }
    if (first_six_card_number) { 
    if(!cJSON_IsString(first_six_card_number) && !cJSON_IsNull(first_six_card_number))
    {
    goto end; //String
    }
    }

    // credit_card_card->token
    cJSON *token = cJSON_GetObjectItemCaseSensitive(credit_card_cardJSON, "token");
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

    // credit_card_card->cvv
    cJSON *cvv = cJSON_GetObjectItemCaseSensitive(credit_card_cardJSON, "cvv");
    if (cJSON_IsNull(cvv)) {
        cvv = NULL;
    }
    if (!cvv) {
        goto end;
    }

    
    if(!cJSON_IsString(cvv))
    {
    goto end; //String
    }

    // credit_card_card->expiration
    cJSON *expiration = cJSON_GetObjectItemCaseSensitive(credit_card_cardJSON, "expiration");
    if (cJSON_IsNull(expiration)) {
        expiration = NULL;
    }
    if (!expiration) {
        goto end;
    }

    
    expiration_local_nonprim = complete_card_data_expiration_parseFromJSON(expiration); //nonprimitive

    // credit_card_card->holder_name
    cJSON *holder_name = cJSON_GetObjectItemCaseSensitive(credit_card_cardJSON, "holderName");
    if (cJSON_IsNull(holder_name)) {
        holder_name = NULL;
    }
    if (!holder_name) {
        goto end;
    }

    
    if(!cJSON_IsString(holder_name))
    {
    goto end; //String
    }

    // credit_card_card->number
    cJSON *number = cJSON_GetObjectItemCaseSensitive(credit_card_cardJSON, "number");
    if (cJSON_IsNull(number)) {
        number = NULL;
    }
    if (!number) {
        goto end;
    }

    
    if(!cJSON_IsString(number))
    {
    goto end; //String
    }


    credit_card_card_local_var = credit_card_card_create_internal (
        first_six_card_number && !cJSON_IsNull(first_six_card_number) ? strdup(first_six_card_number->valuestring) : NULL,
        strdup(token->valuestring),
        strdup(cvv->valuestring),
        expiration_local_nonprim,
        strdup(holder_name->valuestring),
        strdup(number->valuestring)
        );

    return credit_card_card_local_var;
end:
    if (expiration_local_nonprim) {
        complete_card_data_expiration_free(expiration_local_nonprim);
        expiration_local_nonprim = NULL;
    }
    return NULL;

}
