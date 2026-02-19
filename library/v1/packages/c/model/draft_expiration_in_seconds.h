/*
 * draft_expiration_in_seconds.h
 *
 * Order expiration time in seconds
 */

#ifndef _draft_expiration_in_seconds_H_
#define _draft_expiration_in_seconds_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct draft_expiration_in_seconds_t draft_expiration_in_seconds_t;




typedef struct draft_expiration_in_seconds_t {

    int _library_owned; // Is the library responsible for freeing this object?
} draft_expiration_in_seconds_t;

__attribute__((deprecated)) draft_expiration_in_seconds_t *draft_expiration_in_seconds_create(
);

void draft_expiration_in_seconds_free(draft_expiration_in_seconds_t *draft_expiration_in_seconds);

draft_expiration_in_seconds_t *draft_expiration_in_seconds_parseFromJSON(cJSON *draft_expiration_in_secondsJSON);

cJSON *draft_expiration_in_seconds_convertToJSON(draft_expiration_in_seconds_t *draft_expiration_in_seconds);

#endif /* _draft_expiration_in_seconds_H_ */

