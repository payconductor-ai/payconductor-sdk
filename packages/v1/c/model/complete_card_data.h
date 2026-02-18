/*
 * complete_card_data.h
 *
 * 
 */

#ifndef _complete_card_data_H_
#define _complete_card_data_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct complete_card_data_t complete_card_data_t;

#include "complete_card_data_expiration.h"



typedef struct complete_card_data_t {
    char *cvv; // string
    struct complete_card_data_expiration_t *expiration; //model
    char *holder_name; // string
    char *number; // string

    int _library_owned; // Is the library responsible for freeing this object?
} complete_card_data_t;

__attribute__((deprecated)) complete_card_data_t *complete_card_data_create(
    char *cvv,
    complete_card_data_expiration_t *expiration,
    char *holder_name,
    char *number
);

void complete_card_data_free(complete_card_data_t *complete_card_data);

complete_card_data_t *complete_card_data_parseFromJSON(cJSON *complete_card_dataJSON);

cJSON *complete_card_data_convertToJSON(complete_card_data_t *complete_card_data);

#endif /* _complete_card_data_H_ */

