#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "credit_card.h"



static credit_card_t *credit_card_create_internal(
    payconductor_api_payment_method__e payment_method,
    credit_card_card_t *card,
    credit_card_installments_t *installments,
    char *soft_descriptor
    ) {
    credit_card_t *credit_card_local_var = malloc(sizeof(credit_card_t));
    if (!credit_card_local_var) {
        return NULL;
    }
    credit_card_local_var->payment_method = payment_method;
    credit_card_local_var->card = card;
    credit_card_local_var->installments = installments;
    credit_card_local_var->soft_descriptor = soft_descriptor;

    credit_card_local_var->_library_owned = 1;
    return credit_card_local_var;
}

__attribute__((deprecated)) credit_card_t *credit_card_create(
    payconductor_api_payment_method__e payment_method,
    credit_card_card_t *card,
    credit_card_installments_t *installments,
    char *soft_descriptor
    ) {
    return credit_card_create_internal (
        payment_method,
        card,
        installments,
        soft_descriptor
        );
}

void credit_card_free(credit_card_t *credit_card) {
    if(NULL == credit_card){
        return ;
    }
    if(credit_card->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "credit_card_free");
        return ;
    }
    listEntry_t *listEntry;
    if (credit_card->card) {
        credit_card_card_free(credit_card->card);
        credit_card->card = NULL;
    }
    if (credit_card->installments) {
        credit_card_installments_free(credit_card->installments);
        credit_card->installments = NULL;
    }
    if (credit_card->soft_descriptor) {
        free(credit_card->soft_descriptor);
        credit_card->soft_descriptor = NULL;
    }
    free(credit_card);
}

cJSON *credit_card_convertToJSON(credit_card_t *credit_card) {
    cJSON *item = cJSON_CreateObject();

    // credit_card->payment_method
    if (payconductor_api_payment_method__NULL == credit_card->payment_method) {
        goto fail;
    }
    cJSON *payment_method_local_JSON = payment_method_convertToJSON(credit_card->payment_method);
    if(payment_method_local_JSON == NULL) {
        goto fail; // custom
    }
    cJSON_AddItemToObject(item, "paymentMethod", payment_method_local_JSON);
    if(item->child == NULL) {
        goto fail;
    }


    // credit_card->card
    if (!credit_card->card) {
        goto fail;
    }
    cJSON *card_local_JSON = credit_card_card_convertToJSON(credit_card->card);
    if(card_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "card", card_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }


    // credit_card->installments
    if (!credit_card->installments) {
        goto fail;
    }
    cJSON *installments_local_JSON = credit_card_installments_convertToJSON(credit_card->installments);
    if(installments_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "installments", installments_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }


    // credit_card->soft_descriptor
    if(credit_card->soft_descriptor) {
    if(cJSON_AddStringToObject(item, "softDescriptor", credit_card->soft_descriptor) == NULL) {
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

credit_card_t *credit_card_parseFromJSON(cJSON *credit_cardJSON){

    credit_card_t *credit_card_local_var = NULL;

    // define the local variable for credit_card->payment_method
    payconductor_api_payment_method__e payment_method_local_nonprim = 0;

    // define the local variable for credit_card->card
    credit_card_card_t *card_local_nonprim = NULL;

    // define the local variable for credit_card->installments
    credit_card_installments_t *installments_local_nonprim = NULL;

    // credit_card->payment_method
    cJSON *payment_method = cJSON_GetObjectItemCaseSensitive(credit_cardJSON, "paymentMethod");
    if (cJSON_IsNull(payment_method)) {
        payment_method = NULL;
    }
    if (!payment_method) {
        goto end;
    }

    
    payment_method_local_nonprim = payment_method_parseFromJSON(payment_method); //custom

    // credit_card->card
    cJSON *card = cJSON_GetObjectItemCaseSensitive(credit_cardJSON, "card");
    if (cJSON_IsNull(card)) {
        card = NULL;
    }
    if (!card) {
        goto end;
    }

    
    card_local_nonprim = credit_card_card_parseFromJSON(card); //nonprimitive

    // credit_card->installments
    cJSON *installments = cJSON_GetObjectItemCaseSensitive(credit_cardJSON, "installments");
    if (cJSON_IsNull(installments)) {
        installments = NULL;
    }
    if (!installments) {
        goto end;
    }

    
    installments_local_nonprim = credit_card_installments_parseFromJSON(installments); //nonprimitive

    // credit_card->soft_descriptor
    cJSON *soft_descriptor = cJSON_GetObjectItemCaseSensitive(credit_cardJSON, "softDescriptor");
    if (cJSON_IsNull(soft_descriptor)) {
        soft_descriptor = NULL;
    }
    if (soft_descriptor) { 
    if(!cJSON_IsString(soft_descriptor) && !cJSON_IsNull(soft_descriptor))
    {
    goto end; //String
    }
    }


    credit_card_local_var = credit_card_create_internal (
        payment_method_local_nonprim,
        card_local_nonprim,
        installments_local_nonprim,
        soft_descriptor && !cJSON_IsNull(soft_descriptor) ? strdup(soft_descriptor->valuestring) : NULL
        );

    return credit_card_local_var;
end:
    if (payment_method_local_nonprim) {
        payment_method_local_nonprim = 0;
    }
    if (card_local_nonprim) {
        credit_card_card_free(card_local_nonprim);
        card_local_nonprim = NULL;
    }
    if (installments_local_nonprim) {
        credit_card_installments_free(installments_local_nonprim);
        installments_local_nonprim = NULL;
    }
    return NULL;

}
