/*
 * draft.h
 *
 * Used to create an order without generating a real payment. Use to create orders that will be paid later
 */

#ifndef _draft_H_
#define _draft_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct draft_t draft_t;

#include "draft_available_payment_methods_inner.h"
#include "draft_expiration_in_seconds.h"



typedef struct draft_t {
    char *payment_method; // string
    struct draft_expiration_in_seconds_t *expiration_in_seconds; //model
    list_t *available_payment_methods; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} draft_t;

__attribute__((deprecated)) draft_t *draft_create(
    char *payment_method,
    draft_expiration_in_seconds_t *expiration_in_seconds,
    list_t *available_payment_methods
);

void draft_free(draft_t *draft);

draft_t *draft_parseFromJSON(cJSON *draftJSON);

cJSON *draft_convertToJSON(draft_t *draft);

#endif /* _draft_H_ */

