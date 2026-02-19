/*
 * post_orders_request_payment.h
 *
 * Payment data for the order (Pix, Credit Card, Bank Slip, NuPay, etc...)
 */

#ifndef _post_orders_request_payment_H_
#define _post_orders_request_payment_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct post_orders_request_payment_t post_orders_request_payment_t;

#include "bank_slip.h"
#include "bank_slip_expiration_in_days.h"
#include "credit_card.h"
#include "credit_card_card.h"
#include "credit_card_installments.h"
#include "draft.h"
#include "draft_available_payment_methods_inner.h"
#include "draft_expiration_in_seconds.h"
#include "nu_pay.h"
#include "nu_pay_nu_pay.h"
#include "pic_pay.h"
#include "pix.h"



typedef struct post_orders_request_payment_t {
    char *payment_method; // string
    struct draft_expiration_in_seconds_t *expiration_in_seconds; //model
    struct credit_card_card_t *card; //model
    struct credit_card_installments_t *installments; //model
    char *soft_descriptor; // string
    struct bank_slip_expiration_in_days_t *expiration_in_days; //model
    struct nu_pay_nu_pay_t *nu_pay; //model
    list_t *available_payment_methods; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} post_orders_request_payment_t;

__attribute__((deprecated)) post_orders_request_payment_t *post_orders_request_payment_create(
    char *payment_method,
    draft_expiration_in_seconds_t *expiration_in_seconds,
    credit_card_card_t *card,
    credit_card_installments_t *installments,
    char *soft_descriptor,
    bank_slip_expiration_in_days_t *expiration_in_days,
    nu_pay_nu_pay_t *nu_pay,
    list_t *available_payment_methods
);

void post_orders_request_payment_free(post_orders_request_payment_t *post_orders_request_payment);

post_orders_request_payment_t *post_orders_request_payment_parseFromJSON(cJSON *post_orders_request_paymentJSON);

cJSON *post_orders_request_payment_convertToJSON(post_orders_request_payment_t *post_orders_request_payment);

#endif /* _post_orders_request_payment_H_ */

