/*
 * nu_pay.h
 *
 * 
 */

#ifndef _nu_pay_H_
#define _nu_pay_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct nu_pay_t nu_pay_t;

#include "nu_pay_nu_pay.h"
#include "payment_method.h"



typedef struct nu_pay_t {
    payconductor_api_payment_method__e payment_method; //referenced enum
    struct nu_pay_nu_pay_t *nu_pay; //model

    int _library_owned; // Is the library responsible for freeing this object?
} nu_pay_t;

__attribute__((deprecated)) nu_pay_t *nu_pay_create(
    payconductor_api_payment_method__e payment_method,
    nu_pay_nu_pay_t *nu_pay
);

void nu_pay_free(nu_pay_t *nu_pay);

nu_pay_t *nu_pay_parseFromJSON(cJSON *nu_payJSON);

cJSON *nu_pay_convertToJSON(nu_pay_t *nu_pay);

#endif /* _nu_pay_H_ */

