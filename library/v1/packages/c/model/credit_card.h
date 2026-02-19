/*
 * credit_card.h
 *
 * 
 */

#ifndef _credit_card_H_
#define _credit_card_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct credit_card_t credit_card_t;

#include "credit_card_card.h"
#include "credit_card_installments.h"



typedef struct credit_card_t {
    char *payment_method; // string
    struct credit_card_card_t *card; //model
    struct credit_card_installments_t *installments; //model
    char *soft_descriptor; // string

    int _library_owned; // Is the library responsible for freeing this object?
} credit_card_t;

__attribute__((deprecated)) credit_card_t *credit_card_create(
    char *payment_method,
    credit_card_card_t *card,
    credit_card_installments_t *installments,
    char *soft_descriptor
);

void credit_card_free(credit_card_t *credit_card);

credit_card_t *credit_card_parseFromJSON(cJSON *credit_cardJSON);

cJSON *credit_card_convertToJSON(credit_card_t *credit_card);

#endif /* _credit_card_H_ */

