/*
 * draft_available_payment_methods_inner.h
 *
 * 
 */

#ifndef _draft_available_payment_methods_inner_H_
#define _draft_available_payment_methods_inner_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct draft_available_payment_methods_inner_t draft_available_payment_methods_inner_t;




typedef struct draft_available_payment_methods_inner_t {

    int _library_owned; // Is the library responsible for freeing this object?
} draft_available_payment_methods_inner_t;

__attribute__((deprecated)) draft_available_payment_methods_inner_t *draft_available_payment_methods_inner_create(
);

void draft_available_payment_methods_inner_free(draft_available_payment_methods_inner_t *draft_available_payment_methods_inner);

draft_available_payment_methods_inner_t *draft_available_payment_methods_inner_parseFromJSON(cJSON *draft_available_payment_methods_innerJSON);

cJSON *draft_available_payment_methods_inner_convertToJSON(draft_available_payment_methods_inner_t *draft_available_payment_methods_inner);

#endif /* _draft_available_payment_methods_inner_H_ */

