/*
 * post_orders_200_response_credit_card.h
 *
 * 
 */

#ifndef _post_orders_200_response_credit_card_H_
#define _post_orders_200_response_credit_card_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct post_orders_200_response_credit_card_t post_orders_200_response_credit_card_t;




typedef struct post_orders_200_response_credit_card_t {
    char *authorization_code; // string

    int _library_owned; // Is the library responsible for freeing this object?
} post_orders_200_response_credit_card_t;

__attribute__((deprecated)) post_orders_200_response_credit_card_t *post_orders_200_response_credit_card_create(
    char *authorization_code
);

void post_orders_200_response_credit_card_free(post_orders_200_response_credit_card_t *post_orders_200_response_credit_card);

post_orders_200_response_credit_card_t *post_orders_200_response_credit_card_parseFromJSON(cJSON *post_orders_200_response_credit_cardJSON);

cJSON *post_orders_200_response_credit_card_convertToJSON(post_orders_200_response_credit_card_t *post_orders_200_response_credit_card);

#endif /* _post_orders_200_response_credit_card_H_ */

