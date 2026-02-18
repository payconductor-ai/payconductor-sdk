/*
 * bank_slip_expiration_in_days.h
 *
 * Days until bank slip expires
 */

#ifndef _bank_slip_expiration_in_days_H_
#define _bank_slip_expiration_in_days_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct bank_slip_expiration_in_days_t bank_slip_expiration_in_days_t;




typedef struct bank_slip_expiration_in_days_t {

    int _library_owned; // Is the library responsible for freeing this object?
} bank_slip_expiration_in_days_t;

__attribute__((deprecated)) bank_slip_expiration_in_days_t *bank_slip_expiration_in_days_create(
);

void bank_slip_expiration_in_days_free(bank_slip_expiration_in_days_t *bank_slip_expiration_in_days);

bank_slip_expiration_in_days_t *bank_slip_expiration_in_days_parseFromJSON(cJSON *bank_slip_expiration_in_daysJSON);

cJSON *bank_slip_expiration_in_days_convertToJSON(bank_slip_expiration_in_days_t *bank_slip_expiration_in_days);

#endif /* _bank_slip_expiration_in_days_H_ */

