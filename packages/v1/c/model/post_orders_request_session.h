/*
 * post_orders_request_session.h
 *
 * If externalSessionId or sessionId is provided and an existing session exists, it will be updated with the new data. Otherwise, a new session will be created.
 */

#ifndef _post_orders_request_session_H_
#define _post_orders_request_session_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct post_orders_request_session_t post_orders_request_session_t;




typedef struct post_orders_request_session_t {
    double expires_in_minutes; //numeric
    char *checkout_url; // string
    char *session_id; // string
    char *external_session_id; // string

    int _library_owned; // Is the library responsible for freeing this object?
} post_orders_request_session_t;

__attribute__((deprecated)) post_orders_request_session_t *post_orders_request_session_create(
    double expires_in_minutes,
    char *checkout_url,
    char *session_id,
    char *external_session_id
);

void post_orders_request_session_free(post_orders_request_session_t *post_orders_request_session);

post_orders_request_session_t *post_orders_request_session_parseFromJSON(cJSON *post_orders_request_sessionJSON);

cJSON *post_orders_request_session_convertToJSON(post_orders_request_session_t *post_orders_request_session);

#endif /* _post_orders_request_session_H_ */

