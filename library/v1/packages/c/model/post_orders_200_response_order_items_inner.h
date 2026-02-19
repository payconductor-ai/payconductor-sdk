/*
 * post_orders_200_response_order_items_inner.h
 *
 * 
 */

#ifndef _post_orders_200_response_order_items_inner_H_
#define _post_orders_200_response_order_items_inner_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct post_orders_200_response_order_items_inner_t post_orders_200_response_order_items_inner_t;




typedef struct post_orders_200_response_order_items_inner_t {
    char *external_id; // string
    char *id; // string
    char *name; // string
    double qty; //numeric
    double total_amount; //numeric
    double total_net_amount; //numeric
    double unity_price; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} post_orders_200_response_order_items_inner_t;

__attribute__((deprecated)) post_orders_200_response_order_items_inner_t *post_orders_200_response_order_items_inner_create(
    char *external_id,
    char *id,
    char *name,
    double qty,
    double total_amount,
    double total_net_amount,
    double unity_price
);

void post_orders_200_response_order_items_inner_free(post_orders_200_response_order_items_inner_t *post_orders_200_response_order_items_inner);

post_orders_200_response_order_items_inner_t *post_orders_200_response_order_items_inner_parseFromJSON(cJSON *post_orders_200_response_order_items_innerJSON);

cJSON *post_orders_200_response_order_items_inner_convertToJSON(post_orders_200_response_order_items_inner_t *post_orders_200_response_order_items_inner);

#endif /* _post_orders_200_response_order_items_inner_H_ */

