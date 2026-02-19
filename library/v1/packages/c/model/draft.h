/*
 * draft.h
 *
 * Used to create an order without generating a real payment. Use to create orders that will be paid later
 */

#ifndef _draft_H_
#define _draft_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct draft_t draft_t;

#include "available_payment_methods.h"
#include "draft_expiration_in_seconds.h"
#include "payment_method.h"

// Enum  for draft

typedef enum  { payconductor_api_draft__NULL = 0, payconductor_api_draft__Pix, payconductor_api_draft__CreditCard, payconductor_api_draft__DebitCard, payconductor_api_draft__BankSlip, payconductor_api_draft__Crypto, payconductor_api_draft__ApplePay, payconductor_api_draft__NuPay, payconductor_api_draft__PicPay, payconductor_api_draft__AmazonPay, payconductor_api_draft__SepaDebit, payconductor_api_draft__GooglePay, payconductor_api_draft__Draft } payconductor_api_draft__e;

char* draft_available_payment_methods_ToString(payconductor_api_draft__e available_payment_methods);

payconductor_api_draft__e draft_available_payment_methods_FromString(char* available_payment_methods);



typedef struct draft_t {
    payconductor_api_payment_method__e payment_method; //referenced enum
    struct draft_expiration_in_seconds_t *expiration_in_seconds; //model
    list_t *available_payment_methods; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} draft_t;

__attribute__((deprecated)) draft_t *draft_create(
    payconductor_api_payment_method__e payment_method,
    draft_expiration_in_seconds_t *expiration_in_seconds,
    list_t *available_payment_methods
);

void draft_free(draft_t *draft);

draft_t *draft_parseFromJSON(cJSON *draftJSON);

cJSON *draft_convertToJSON(draft_t *draft);

#endif /* _draft_H_ */

