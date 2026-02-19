/*
 * complete_card_data_expiration.h
 *
 * 
 */

#ifndef _complete_card_data_expiration_H_
#define _complete_card_data_expiration_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct complete_card_data_expiration_t complete_card_data_expiration_t;




typedef struct complete_card_data_expiration_t {
    double month; //numeric
    double year; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} complete_card_data_expiration_t;

__attribute__((deprecated)) complete_card_data_expiration_t *complete_card_data_expiration_create(
    double month,
    double year
);

void complete_card_data_expiration_free(complete_card_data_expiration_t *complete_card_data_expiration);

complete_card_data_expiration_t *complete_card_data_expiration_parseFromJSON(cJSON *complete_card_data_expirationJSON);

cJSON *complete_card_data_expiration_convertToJSON(complete_card_data_expiration_t *complete_card_data_expiration);

#endif /* _complete_card_data_expiration_H_ */

