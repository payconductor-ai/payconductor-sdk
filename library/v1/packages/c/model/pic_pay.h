/*
 * pic_pay.h
 *
 * 
 */

#ifndef _pic_pay_H_
#define _pic_pay_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct pic_pay_t pic_pay_t;

#include "payment_method.h"



typedef struct pic_pay_t {
    payconductor_api_payment_method__e payment_method; //referenced enum

    int _library_owned; // Is the library responsible for freeing this object?
} pic_pay_t;

__attribute__((deprecated)) pic_pay_t *pic_pay_create(
    payconductor_api_payment_method__e payment_method
);

void pic_pay_free(pic_pay_t *pic_pay);

pic_pay_t *pic_pay_parseFromJSON(cJSON *pic_payJSON);

cJSON *pic_pay_convertToJSON(pic_pay_t *pic_pay);

#endif /* _pic_pay_H_ */

