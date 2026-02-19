/*
 * credit_card_installments.h
 *
 * Number of installments
 */

#ifndef _credit_card_installments_H_
#define _credit_card_installments_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct credit_card_installments_t credit_card_installments_t;




typedef struct credit_card_installments_t {

    int _library_owned; // Is the library responsible for freeing this object?
} credit_card_installments_t;

__attribute__((deprecated)) credit_card_installments_t *credit_card_installments_create(
);

void credit_card_installments_free(credit_card_installments_t *credit_card_installments);

credit_card_installments_t *credit_card_installments_parseFromJSON(cJSON *credit_card_installmentsJSON);

cJSON *credit_card_installments_convertToJSON(credit_card_installments_t *credit_card_installments);

#endif /* _credit_card_installments_H_ */

