/*
 * post_orders_200_response_session.h
 *
 * 
 */

#ifndef _post_orders_200_response_session_H_
#define _post_orders_200_response_session_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct post_orders_200_response_session_t post_orders_200_response_session_t;




typedef struct post_orders_200_response_session_t {
    char *session_id; // string

    int _library_owned; // Is the library responsible for freeing this object?
} post_orders_200_response_session_t;

__attribute__((deprecated)) post_orders_200_response_session_t *post_orders_200_response_session_create(
    char *session_id
);

void post_orders_200_response_session_free(post_orders_200_response_session_t *post_orders_200_response_session);

post_orders_200_response_session_t *post_orders_200_response_session_parseFromJSON(cJSON *post_orders_200_response_sessionJSON);

cJSON *post_orders_200_response_session_convertToJSON(post_orders_200_response_session_t *post_orders_200_response_session);

#endif /* _post_orders_200_response_session_H_ */

