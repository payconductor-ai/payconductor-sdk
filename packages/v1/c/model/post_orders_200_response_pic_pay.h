/*
 * post_orders_200_response_pic_pay.h
 *
 * 
 */

#ifndef _post_orders_200_response_pic_pay_H_
#define _post_orders_200_response_pic_pay_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct post_orders_200_response_pic_pay_t post_orders_200_response_pic_pay_t;




typedef struct post_orders_200_response_pic_pay_t {
    char *copy_and_paste_code; // string
    char *qr_code_url; // string

    int _library_owned; // Is the library responsible for freeing this object?
} post_orders_200_response_pic_pay_t;

__attribute__((deprecated)) post_orders_200_response_pic_pay_t *post_orders_200_response_pic_pay_create(
    char *copy_and_paste_code,
    char *qr_code_url
);

void post_orders_200_response_pic_pay_free(post_orders_200_response_pic_pay_t *post_orders_200_response_pic_pay);

post_orders_200_response_pic_pay_t *post_orders_200_response_pic_pay_parseFromJSON(cJSON *post_orders_200_response_pic_payJSON);

cJSON *post_orders_200_response_pic_pay_convertToJSON(post_orders_200_response_pic_pay_t *post_orders_200_response_pic_pay);

#endif /* _post_orders_200_response_pic_pay_H_ */

