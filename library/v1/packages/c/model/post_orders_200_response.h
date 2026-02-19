/*
 * post_orders_200_response.h
 *
 * 
 */

#ifndef _post_orders_200_response_H_
#define _post_orders_200_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct post_orders_200_response_t post_orders_200_response_t;

#include "post_orders_200_response_bank_slip.h"
#include "post_orders_200_response_credit_card.h"
#include "post_orders_200_response_nu_pay.h"
#include "post_orders_200_response_order_items_inner.h"
#include "post_orders_200_response_pic_pay.h"
#include "post_orders_200_response_pix.h"
#include "post_orders_200_response_session.h"

// Enum STATUS for post_orders_200_response

typedef enum  { payconductor_api_post_orders_200_response_STATUS_NULL = 0, payconductor_api_post_orders_200_response_STATUS_Generating, payconductor_api_post_orders_200_response_STATUS_Pending, payconductor_api_post_orders_200_response_STATUS_Completed, payconductor_api_post_orders_200_response_STATUS_Failed, payconductor_api_post_orders_200_response_STATUS_Canceled, payconductor_api_post_orders_200_response_STATUS_Refunding, payconductor_api_post_orders_200_response_STATUS_Refunded, payconductor_api_post_orders_200_response_STATUS_InDispute, payconductor_api_post_orders_200_response_STATUS_Chargeback } payconductor_api_post_orders_200_response_STATUS_e;

char* post_orders_200_response_status_ToString(payconductor_api_post_orders_200_response_STATUS_e status);

payconductor_api_post_orders_200_response_STATUS_e post_orders_200_response_status_FromString(char* status);

// Enum PAYMENTMETHOD for post_orders_200_response

typedef enum  { payconductor_api_post_orders_200_response_PAYMENTMETHOD_NULL = 0, payconductor_api_post_orders_200_response_PAYMENTMETHOD_Pix, payconductor_api_post_orders_200_response_PAYMENTMETHOD_CreditCard, payconductor_api_post_orders_200_response_PAYMENTMETHOD_DebitCard, payconductor_api_post_orders_200_response_PAYMENTMETHOD_BankSlip, payconductor_api_post_orders_200_response_PAYMENTMETHOD_Crypto, payconductor_api_post_orders_200_response_PAYMENTMETHOD_ApplePay, payconductor_api_post_orders_200_response_PAYMENTMETHOD_NuPay, payconductor_api_post_orders_200_response_PAYMENTMETHOD_PicPay, payconductor_api_post_orders_200_response_PAYMENTMETHOD_AmazonPay, payconductor_api_post_orders_200_response_PAYMENTMETHOD_SepaDebit, payconductor_api_post_orders_200_response_PAYMENTMETHOD_GooglePay, payconductor_api_post_orders_200_response_PAYMENTMETHOD_Draft } payconductor_api_post_orders_200_response_PAYMENTMETHOD_e;

char* post_orders_200_response_payment_method_ToString(payconductor_api_post_orders_200_response_PAYMENTMETHOD_e payment_method);

payconductor_api_post_orders_200_response_PAYMENTMETHOD_e post_orders_200_response_payment_method_FromString(char* payment_method);



typedef struct post_orders_200_response_t {
    char *id; // string
    char *external_id; // string
    char *external_integration_key; // string
    char *external_integration_id; // string
    double amount; //numeric
    double cost_fee; //numeric
    struct post_orders_200_response_pix_t *pix; //model
    struct post_orders_200_response_bank_slip_t *bank_slip; //model
    struct post_orders_200_response_nu_pay_t *nu_pay; //model
    struct post_orders_200_response_pic_pay_t *pic_pay; //model
    struct post_orders_200_response_credit_card_t *credit_card; //model
    payconductor_api_post_orders_200_response_STATUS_e status; //enum
    payconductor_api_post_orders_200_response_PAYMENTMETHOD_e payment_method; //enum
    char *payed_at; // string
    char *error_code; // string
    char *error_message; // string
    list_t *order_items; //nonprimitive container
    struct post_orders_200_response_session_t *session; //model

    int _library_owned; // Is the library responsible for freeing this object?
} post_orders_200_response_t;

__attribute__((deprecated)) post_orders_200_response_t *post_orders_200_response_create(
    char *id,
    char *external_id,
    char *external_integration_key,
    char *external_integration_id,
    double amount,
    double cost_fee,
    post_orders_200_response_pix_t *pix,
    post_orders_200_response_bank_slip_t *bank_slip,
    post_orders_200_response_nu_pay_t *nu_pay,
    post_orders_200_response_pic_pay_t *pic_pay,
    post_orders_200_response_credit_card_t *credit_card,
    payconductor_api_post_orders_200_response_STATUS_e status,
    payconductor_api_post_orders_200_response_PAYMENTMETHOD_e payment_method,
    char *payed_at,
    char *error_code,
    char *error_message,
    list_t *order_items,
    post_orders_200_response_session_t *session
);

void post_orders_200_response_free(post_orders_200_response_t *post_orders_200_response);

post_orders_200_response_t *post_orders_200_response_parseFromJSON(cJSON *post_orders_200_responseJSON);

cJSON *post_orders_200_response_convertToJSON(post_orders_200_response_t *post_orders_200_response);

#endif /* _post_orders_200_response_H_ */

