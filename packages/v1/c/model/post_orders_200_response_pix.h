/*
 * post_orders_200_response_pix.h
 *
 * PIX data
 */

#ifndef _post_orders_200_response_pix_H_
#define _post_orders_200_response_pix_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct post_orders_200_response_pix_t post_orders_200_response_pix_t;




typedef struct post_orders_200_response_pix_t {
    char *copy_and_paste_code; // string
    char *qr_code_url; // string
    char *end_to_end_id; // string

    int _library_owned; // Is the library responsible for freeing this object?
} post_orders_200_response_pix_t;

__attribute__((deprecated)) post_orders_200_response_pix_t *post_orders_200_response_pix_create(
    char *copy_and_paste_code,
    char *qr_code_url,
    char *end_to_end_id
);

void post_orders_200_response_pix_free(post_orders_200_response_pix_t *post_orders_200_response_pix);

post_orders_200_response_pix_t *post_orders_200_response_pix_parseFromJSON(cJSON *post_orders_200_response_pixJSON);

cJSON *post_orders_200_response_pix_convertToJSON(post_orders_200_response_pix_t *post_orders_200_response_pix);

#endif /* _post_orders_200_response_pix_H_ */

