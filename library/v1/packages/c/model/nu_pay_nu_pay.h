/*
 * nu_pay_nu_pay.h
 *
 * Specific data for NuPay payment
 */

#ifndef _nu_pay_nu_pay_H_
#define _nu_pay_nu_pay_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct nu_pay_nu_pay_t nu_pay_nu_pay_t;




typedef struct nu_pay_nu_pay_t {
    char *cancel_url; // string
    char *merchant_name; // string
    char *return_url; // string
    char *store_name; // string

    int _library_owned; // Is the library responsible for freeing this object?
} nu_pay_nu_pay_t;

__attribute__((deprecated)) nu_pay_nu_pay_t *nu_pay_nu_pay_create(
    char *cancel_url,
    char *merchant_name,
    char *return_url,
    char *store_name
);

void nu_pay_nu_pay_free(nu_pay_nu_pay_t *nu_pay_nu_pay);

nu_pay_nu_pay_t *nu_pay_nu_pay_parseFromJSON(cJSON *nu_pay_nu_payJSON);

cJSON *nu_pay_nu_pay_convertToJSON(nu_pay_nu_pay_t *nu_pay_nu_pay);

#endif /* _nu_pay_nu_pay_H_ */

