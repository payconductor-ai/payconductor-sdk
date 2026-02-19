/*
 * post_withdraws_200_response_payout_account.h
 *
 * 
 */

#ifndef _post_withdraws_200_response_payout_account_H_
#define _post_withdraws_200_response_payout_account_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct post_withdraws_200_response_payout_account_t post_withdraws_200_response_payout_account_t;

#include "pix_type.h"



typedef struct post_withdraws_200_response_payout_account_t {
    char *id; // string
    char *owner_document; // string
    char *owner_name; // string
    char *pix_key; // string
    payconductor_api_pix_type__e pix_type; //referenced enum

    int _library_owned; // Is the library responsible for freeing this object?
} post_withdraws_200_response_payout_account_t;

__attribute__((deprecated)) post_withdraws_200_response_payout_account_t *post_withdraws_200_response_payout_account_create(
    char *id,
    char *owner_document,
    char *owner_name,
    char *pix_key,
    payconductor_api_pix_type__e pix_type
);

void post_withdraws_200_response_payout_account_free(post_withdraws_200_response_payout_account_t *post_withdraws_200_response_payout_account);

post_withdraws_200_response_payout_account_t *post_withdraws_200_response_payout_account_parseFromJSON(cJSON *post_withdraws_200_response_payout_accountJSON);

cJSON *post_withdraws_200_response_payout_account_convertToJSON(post_withdraws_200_response_payout_account_t *post_withdraws_200_response_payout_account);

#endif /* _post_withdraws_200_response_payout_account_H_ */

