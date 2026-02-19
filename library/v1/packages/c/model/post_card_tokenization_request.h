/*
 * post_card_tokenization_request.h
 *
 * Data for creating a customer card
 */

#ifndef _post_card_tokenization_request_H_
#define _post_card_tokenization_request_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct post_card_tokenization_request_t post_card_tokenization_request_t;

#include "complete_card_data.h"
#include "post_card_tokenization_request_customer.h"



typedef struct post_card_tokenization_request_t {
    struct complete_card_data_t *card; //model
    int save_card; //boolean
    struct post_card_tokenization_request_customer_t *customer; //model

    int _library_owned; // Is the library responsible for freeing this object?
} post_card_tokenization_request_t;

__attribute__((deprecated)) post_card_tokenization_request_t *post_card_tokenization_request_create(
    complete_card_data_t *card,
    int save_card,
    post_card_tokenization_request_customer_t *customer
);

void post_card_tokenization_request_free(post_card_tokenization_request_t *post_card_tokenization_request);

post_card_tokenization_request_t *post_card_tokenization_request_parseFromJSON(cJSON *post_card_tokenization_requestJSON);

cJSON *post_card_tokenization_request_convertToJSON(post_card_tokenization_request_t *post_card_tokenization_request);

#endif /* _post_card_tokenization_request_H_ */

