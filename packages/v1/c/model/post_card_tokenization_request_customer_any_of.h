/*
 * post_card_tokenization_request_customer_any_of.h
 *
 * 
 */

#ifndef _post_card_tokenization_request_customer_any_of_H_
#define _post_card_tokenization_request_customer_any_of_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct post_card_tokenization_request_customer_any_of_t post_card_tokenization_request_customer_any_of_t;




typedef struct post_card_tokenization_request_customer_any_of_t {
    char *id; // string

    int _library_owned; // Is the library responsible for freeing this object?
} post_card_tokenization_request_customer_any_of_t;

__attribute__((deprecated)) post_card_tokenization_request_customer_any_of_t *post_card_tokenization_request_customer_any_of_create(
    char *id
);

void post_card_tokenization_request_customer_any_of_free(post_card_tokenization_request_customer_any_of_t *post_card_tokenization_request_customer_any_of);

post_card_tokenization_request_customer_any_of_t *post_card_tokenization_request_customer_any_of_parseFromJSON(cJSON *post_card_tokenization_request_customer_any_ofJSON);

cJSON *post_card_tokenization_request_customer_any_of_convertToJSON(post_card_tokenization_request_customer_any_of_t *post_card_tokenization_request_customer_any_of);

#endif /* _post_card_tokenization_request_customer_any_of_H_ */

