/*
 * post_orders_request_fingerprints.h
 *
 * 
 */

#ifndef _post_orders_request_fingerprints_H_
#define _post_orders_request_fingerprints_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct post_orders_request_fingerprints_t post_orders_request_fingerprints_t;




typedef struct post_orders_request_fingerprints_t {
    char *threat_metrix_fingerprint_id; // string

    int _library_owned; // Is the library responsible for freeing this object?
} post_orders_request_fingerprints_t;

__attribute__((deprecated)) post_orders_request_fingerprints_t *post_orders_request_fingerprints_create(
    char *threat_metrix_fingerprint_id
);

void post_orders_request_fingerprints_free(post_orders_request_fingerprints_t *post_orders_request_fingerprints);

post_orders_request_fingerprints_t *post_orders_request_fingerprints_parseFromJSON(cJSON *post_orders_request_fingerprintsJSON);

cJSON *post_orders_request_fingerprints_convertToJSON(post_orders_request_fingerprints_t *post_orders_request_fingerprints);

#endif /* _post_orders_request_fingerprints_H_ */

