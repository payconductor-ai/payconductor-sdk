/*
 * credit_card_card.h
 *
 * 
 */

#ifndef _credit_card_card_H_
#define _credit_card_card_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct credit_card_card_t credit_card_card_t;

#include "complete_card_data.h"
#include "complete_card_data_expiration.h"
#include "tokenized_card.h"



typedef struct credit_card_card_t {
    char *first_six_card_number; // string
    char *token; // string
    char *cvv; // string
    struct complete_card_data_expiration_t *expiration; //model
    char *holder_name; // string
    char *number; // string

    int _library_owned; // Is the library responsible for freeing this object?
} credit_card_card_t;

__attribute__((deprecated)) credit_card_card_t *credit_card_card_create(
    char *first_six_card_number,
    char *token,
    char *cvv,
    complete_card_data_expiration_t *expiration,
    char *holder_name,
    char *number
);

void credit_card_card_free(credit_card_card_t *credit_card_card);

credit_card_card_t *credit_card_card_parseFromJSON(cJSON *credit_card_cardJSON);

cJSON *credit_card_card_convertToJSON(credit_card_card_t *credit_card_card);

#endif /* _credit_card_card_H_ */

