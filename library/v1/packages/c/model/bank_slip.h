/*
 * bank_slip.h
 *
 * 
 */

#ifndef _bank_slip_H_
#define _bank_slip_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct bank_slip_t bank_slip_t;

#include "bank_slip_expiration_in_days.h"
#include "payment_method.h"



typedef struct bank_slip_t {
    payconductor_api_payment_method__e payment_method; //referenced enum
    struct bank_slip_expiration_in_days_t *expiration_in_days; //model

    int _library_owned; // Is the library responsible for freeing this object?
} bank_slip_t;

__attribute__((deprecated)) bank_slip_t *bank_slip_create(
    payconductor_api_payment_method__e payment_method,
    bank_slip_expiration_in_days_t *expiration_in_days
);

void bank_slip_free(bank_slip_t *bank_slip);

bank_slip_t *bank_slip_parseFromJSON(cJSON *bank_slipJSON);

cJSON *bank_slip_convertToJSON(bank_slip_t *bank_slip);

#endif /* _bank_slip_H_ */

