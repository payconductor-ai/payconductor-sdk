#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "complete_card_data_expiration.h"



static complete_card_data_expiration_t *complete_card_data_expiration_create_internal(
    double month,
    double year
    ) {
    complete_card_data_expiration_t *complete_card_data_expiration_local_var = malloc(sizeof(complete_card_data_expiration_t));
    if (!complete_card_data_expiration_local_var) {
        return NULL;
    }
    complete_card_data_expiration_local_var->month = month;
    complete_card_data_expiration_local_var->year = year;

    complete_card_data_expiration_local_var->_library_owned = 1;
    return complete_card_data_expiration_local_var;
}

__attribute__((deprecated)) complete_card_data_expiration_t *complete_card_data_expiration_create(
    double month,
    double year
    ) {
    return complete_card_data_expiration_create_internal (
        month,
        year
        );
}

void complete_card_data_expiration_free(complete_card_data_expiration_t *complete_card_data_expiration) {
    if(NULL == complete_card_data_expiration){
        return ;
    }
    if(complete_card_data_expiration->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "complete_card_data_expiration_free");
        return ;
    }
    listEntry_t *listEntry;
    free(complete_card_data_expiration);
}

cJSON *complete_card_data_expiration_convertToJSON(complete_card_data_expiration_t *complete_card_data_expiration) {
    cJSON *item = cJSON_CreateObject();

    // complete_card_data_expiration->month
    if (!complete_card_data_expiration->month) {
        goto fail;
    }
    if(cJSON_AddNumberToObject(item, "month", complete_card_data_expiration->month) == NULL) {
    goto fail; //Numeric
    }


    // complete_card_data_expiration->year
    if (!complete_card_data_expiration->year) {
        goto fail;
    }
    if(cJSON_AddNumberToObject(item, "year", complete_card_data_expiration->year) == NULL) {
    goto fail; //Numeric
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

complete_card_data_expiration_t *complete_card_data_expiration_parseFromJSON(cJSON *complete_card_data_expirationJSON){

    complete_card_data_expiration_t *complete_card_data_expiration_local_var = NULL;

    // complete_card_data_expiration->month
    cJSON *month = cJSON_GetObjectItemCaseSensitive(complete_card_data_expirationJSON, "month");
    if (cJSON_IsNull(month)) {
        month = NULL;
    }
    if (!month) {
        goto end;
    }

    
    if(!cJSON_IsNumber(month))
    {
    goto end; //Numeric
    }

    // complete_card_data_expiration->year
    cJSON *year = cJSON_GetObjectItemCaseSensitive(complete_card_data_expirationJSON, "year");
    if (cJSON_IsNull(year)) {
        year = NULL;
    }
    if (!year) {
        goto end;
    }

    
    if(!cJSON_IsNumber(year))
    {
    goto end; //Numeric
    }


    complete_card_data_expiration_local_var = complete_card_data_expiration_create_internal (
        month->valuedouble,
        year->valuedouble
        );

    return complete_card_data_expiration_local_var;
end:
    return NULL;

}
