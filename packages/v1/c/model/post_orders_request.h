/*
 * post_orders_request.h
 *
 * 
 */

#ifndef _post_orders_request_H_
#define _post_orders_request_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct post_orders_request_t post_orders_request_t;

#include "customer.h"
#include "merchant_input.h"
#include "object.h"
#include "post_orders_request_fingerprints.h"
#include "post_orders_request_items_inner.h"
#include "post_orders_request_payment.h"
#include "post_orders_request_session.h"



typedef struct post_orders_request_t {
    double charge_amount; //numeric
    char *client_ip; // string
    struct customer_t *customer; //model
    double discount_amount; //numeric
    char *external_id; // string
    struct post_orders_request_fingerprints_t *fingerprints; //model
    list_t *items; //nonprimitive container
    struct merchant_input_t *merchant; //model
    struct post_orders_request_payment_t *payment; //model
    double split_amount_total; //numeric
    struct post_orders_request_session_t *session; //model
    double shipping_fee; //numeric
    double tax_fee; //numeric
    object_t *metadata; //object

    int _library_owned; // Is the library responsible for freeing this object?
} post_orders_request_t;

__attribute__((deprecated)) post_orders_request_t *post_orders_request_create(
    double charge_amount,
    char *client_ip,
    customer_t *customer,
    double discount_amount,
    char *external_id,
    post_orders_request_fingerprints_t *fingerprints,
    list_t *items,
    merchant_input_t *merchant,
    post_orders_request_payment_t *payment,
    double split_amount_total,
    post_orders_request_session_t *session,
    double shipping_fee,
    double tax_fee,
    object_t *metadata
);

void post_orders_request_free(post_orders_request_t *post_orders_request);

post_orders_request_t *post_orders_request_parseFromJSON(cJSON *post_orders_requestJSON);

cJSON *post_orders_request_convertToJSON(post_orders_request_t *post_orders_request);

#endif /* _post_orders_request_H_ */

