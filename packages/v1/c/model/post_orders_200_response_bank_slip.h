/*
 * post_orders_200_response_bank_slip.h
 *
 * 
 */

#ifndef _post_orders_200_response_bank_slip_H_
#define _post_orders_200_response_bank_slip_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct post_orders_200_response_bank_slip_t post_orders_200_response_bank_slip_t;




typedef struct post_orders_200_response_bank_slip_t {
    char *bar_code; // string
    char *digitable_line; // string
    char *pdf_url; // string

    int _library_owned; // Is the library responsible for freeing this object?
} post_orders_200_response_bank_slip_t;

__attribute__((deprecated)) post_orders_200_response_bank_slip_t *post_orders_200_response_bank_slip_create(
    char *bar_code,
    char *digitable_line,
    char *pdf_url
);

void post_orders_200_response_bank_slip_free(post_orders_200_response_bank_slip_t *post_orders_200_response_bank_slip);

post_orders_200_response_bank_slip_t *post_orders_200_response_bank_slip_parseFromJSON(cJSON *post_orders_200_response_bank_slipJSON);

cJSON *post_orders_200_response_bank_slip_convertToJSON(post_orders_200_response_bank_slip_t *post_orders_200_response_bank_slip);

#endif /* _post_orders_200_response_bank_slip_H_ */

