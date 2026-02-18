/*
 * post_withdraws_200_response_payed_at.h
 *
 * Date and time when the withdrawal was paid (ISO 8601 format)
 */

#ifndef _post_withdraws_200_response_payed_at_H_
#define _post_withdraws_200_response_payed_at_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct post_withdraws_200_response_payed_at_t post_withdraws_200_response_payed_at_t;




typedef struct post_withdraws_200_response_payed_at_t {

    int _library_owned; // Is the library responsible for freeing this object?
} post_withdraws_200_response_payed_at_t;

__attribute__((deprecated)) post_withdraws_200_response_payed_at_t *post_withdraws_200_response_payed_at_create(
);

void post_withdraws_200_response_payed_at_free(post_withdraws_200_response_payed_at_t *post_withdraws_200_response_payed_at);

post_withdraws_200_response_payed_at_t *post_withdraws_200_response_payed_at_parseFromJSON(cJSON *post_withdraws_200_response_payed_atJSON);

cJSON *post_withdraws_200_response_payed_at_convertToJSON(post_withdraws_200_response_payed_at_t *post_withdraws_200_response_payed_at);

#endif /* _post_withdraws_200_response_payed_at_H_ */

