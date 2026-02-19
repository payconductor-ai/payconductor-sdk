/*
 * post_withdraws_request.h
 *
 * 
 */

#ifndef _post_withdraws_request_H_
#define _post_withdraws_request_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct post_withdraws_request_t post_withdraws_request_t;

#include "merchant_input.h"
#include "post_withdraws_request_payout_account.h"



typedef struct post_withdraws_request_t {
    double amount; //numeric
    char *external_id; // string
    struct merchant_input_t *merchant; //model
    struct post_withdraws_request_payout_account_t *payout_account; //model

    int _library_owned; // Is the library responsible for freeing this object?
} post_withdraws_request_t;

__attribute__((deprecated)) post_withdraws_request_t *post_withdraws_request_create(
    double amount,
    char *external_id,
    merchant_input_t *merchant,
    post_withdraws_request_payout_account_t *payout_account
);

void post_withdraws_request_free(post_withdraws_request_t *post_withdraws_request);

post_withdraws_request_t *post_withdraws_request_parseFromJSON(cJSON *post_withdraws_requestJSON);

cJSON *post_withdraws_request_convertToJSON(post_withdraws_request_t *post_withdraws_request);

#endif /* _post_withdraws_request_H_ */

