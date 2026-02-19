#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "credit_card_installments.h"



static credit_card_installments_t *credit_card_installments_create_internal(
    ) {
    credit_card_installments_t *credit_card_installments_local_var = malloc(sizeof(credit_card_installments_t));
    if (!credit_card_installments_local_var) {
        return NULL;
    }

    credit_card_installments_local_var->_library_owned = 1;
    return credit_card_installments_local_var;
}

__attribute__((deprecated)) credit_card_installments_t *credit_card_installments_create(
    ) {
    return credit_card_installments_create_internal (
        );
}

void credit_card_installments_free(credit_card_installments_t *credit_card_installments) {
    if(NULL == credit_card_installments){
        return ;
    }
    if(credit_card_installments->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "credit_card_installments_free");
        return ;
    }
    listEntry_t *listEntry;
    free(credit_card_installments);
}

cJSON *credit_card_installments_convertToJSON(credit_card_installments_t *credit_card_installments) {
    cJSON *item = cJSON_CreateObject();
    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

credit_card_installments_t *credit_card_installments_parseFromJSON(cJSON *credit_card_installmentsJSON){

    credit_card_installments_t *credit_card_installments_local_var = NULL;


    credit_card_installments_local_var = credit_card_installments_create_internal (
        );

    return credit_card_installments_local_var;
end:
    return NULL;

}
