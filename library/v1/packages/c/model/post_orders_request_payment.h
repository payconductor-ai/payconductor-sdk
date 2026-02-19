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

#include "available_payment_methods.h"
#include "bank_slip.h"
#include "bank_slip_expiration_in_days.h"
#include "credit_card.h"
#include "credit_card_card.h"
#include "credit_card_installments.h"
#include "draft.h"
#include "draft_expiration_in_seconds.h"
#include "nu_pay.h"
#include "nu_pay_nu_pay.h"
#include "payment_method.h"
#include "pic_pay.h"
#include "pix.h"

// Enum  for post_orders_request_payment

typedef enum  { payconductor_api_post_orders_request_payment__NULL = 0, payconductor_api_post_orders_request_payment__Pix, payconductor_api_post_orders_request_payment__CreditCard, payconductor_api_post_orders_request_payment__DebitCard, payconductor_api_post_orders_request_payment__BankSlip, payconductor_api_post_orders_request_payment__Crypto, payconductor_api_post_orders_request_payment__ApplePay, payconductor_api_post_orders_request_payment__NuPay, payconductor_api_post_orders_request_payment__PicPay, payconductor_api_post_orders_request_payment__AmazonPay, payconductor_api_post_orders_request_payment__SepaDebit, payconductor_api_post_orders_request_payment__GooglePay, payconductor_api_post_orders_request_payment__Draft } payconductor_api_post_orders_request_payment__e;

char* post_orders_request_payment_available_payment_methods_ToString(payconductor_api_post_orders_request_payment__e available_payment_methods);

payconductor_api_post_orders_request_payment__e post_orders_request_payment_available_payment_methods_FromString(char* available_payment_methods);



typedef struct post_orders_request_payment_t {
    payconductor_api_payment_method__e payment_method; //referenced enum
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
    payconductor_api_payment_method__e payment_method,
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

