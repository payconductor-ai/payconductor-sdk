/*
 * merchant_input.h
 *
 * Merchant data for order or withdrawal
 */

#ifndef _merchant_input_H_
#define _merchant_input_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct merchant_input_t merchant_input_t;




typedef struct merchant_input_t {
    char *document; // string
    char *email; // string
    char *name; // string

    int _library_owned; // Is the library responsible for freeing this object?
} merchant_input_t;

__attribute__((deprecated)) merchant_input_t *merchant_input_create(
    char *document,
    char *email,
    char *name
);

void merchant_input_free(merchant_input_t *merchant_input);

merchant_input_t *merchant_input_parseFromJSON(cJSON *merchant_inputJSON);

cJSON *merchant_input_convertToJSON(merchant_input_t *merchant_input);

#endif /* _merchant_input_H_ */

