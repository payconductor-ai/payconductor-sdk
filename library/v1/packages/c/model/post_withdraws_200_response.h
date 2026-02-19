/*
 * post_withdraws_200_response.h
 *
 * 
 */

#ifndef _post_withdraws_200_response_H_
#define _post_withdraws_200_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct post_withdraws_200_response_t post_withdraws_200_response_t;

#include "post_withdraws_200_response_payed_at.h"
#include "post_withdraws_200_response_payout_account.h"
#include "status.h"



typedef struct post_withdraws_200_response_t {
    char *id; // string
    char *external_id; // string
    char *external_integration_key; // string
    char *external_integration_id; // string
    double cost_fee; //numeric
    payconductor_api_status__e status; //referenced enum
    char *error_code; // string
    char *error_message; // string
    struct post_withdraws_200_response_payed_at_t *payed_at; //model
    struct post_withdraws_200_response_payout_account_t *payout_account; //model

    int _library_owned; // Is the library responsible for freeing this object?
} post_withdraws_200_response_t;

__attribute__((deprecated)) post_withdraws_200_response_t *post_withdraws_200_response_create(
    char *id,
    char *external_id,
    char *external_integration_key,
    char *external_integration_id,
    double cost_fee,
    payconductor_api_status__e status,
    char *error_code,
    char *error_message,
    post_withdraws_200_response_payed_at_t *payed_at,
    post_withdraws_200_response_payout_account_t *payout_account
);

void post_withdraws_200_response_free(post_withdraws_200_response_t *post_withdraws_200_response);

post_withdraws_200_response_t *post_withdraws_200_response_parseFromJSON(cJSON *post_withdraws_200_responseJSON);

cJSON *post_withdraws_200_response_convertToJSON(post_withdraws_200_response_t *post_withdraws_200_response);

#endif /* _post_withdraws_200_response_H_ */

