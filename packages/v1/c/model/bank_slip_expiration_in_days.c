#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "bank_slip_expiration_in_days.h"



static bank_slip_expiration_in_days_t *bank_slip_expiration_in_days_create_internal(
    ) {
    bank_slip_expiration_in_days_t *bank_slip_expiration_in_days_local_var = malloc(sizeof(bank_slip_expiration_in_days_t));
    if (!bank_slip_expiration_in_days_local_var) {
        return NULL;
    }

    bank_slip_expiration_in_days_local_var->_library_owned = 1;
    return bank_slip_expiration_in_days_local_var;
}

__attribute__((deprecated)) bank_slip_expiration_in_days_t *bank_slip_expiration_in_days_create(
    ) {
    return bank_slip_expiration_in_days_create_internal (
        );
}

void bank_slip_expiration_in_days_free(bank_slip_expiration_in_days_t *bank_slip_expiration_in_days) {
    if(NULL == bank_slip_expiration_in_days){
        return ;
    }
    if(bank_slip_expiration_in_days->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "bank_slip_expiration_in_days_free");
        return ;
    }
    listEntry_t *listEntry;
    free(bank_slip_expiration_in_days);
}

cJSON *bank_slip_expiration_in_days_convertToJSON(bank_slip_expiration_in_days_t *bank_slip_expiration_in_days) {
    cJSON *item = cJSON_CreateObject();
    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

bank_slip_expiration_in_days_t *bank_slip_expiration_in_days_parseFromJSON(cJSON *bank_slip_expiration_in_daysJSON){

    bank_slip_expiration_in_days_t *bank_slip_expiration_in_days_local_var = NULL;


    bank_slip_expiration_in_days_local_var = bank_slip_expiration_in_days_create_internal (
        );

    return bank_slip_expiration_in_days_local_var;
end:
    return NULL;

}
