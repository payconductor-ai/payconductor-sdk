/*
 * post_orders_by_id_confirm_200_response.h
 *
 * 
 */

#ifndef _post_orders_by_id_confirm_200_response_H_
#define _post_orders_by_id_confirm_200_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct post_orders_by_id_confirm_200_response_t post_orders_by_id_confirm_200_response_t;

#include "payment_method.h"
#include "post_orders_200_response_bank_slip.h"
#include "post_orders_200_response_nu_pay.h"
#include "post_orders_200_response_pic_pay.h"
#include "post_orders_200_response_pix.h"
#include "status.h"



typedef struct post_orders_by_id_confirm_200_response_t {
    char *id; // string
    char *external_id; // string
    double amount; //numeric
    double cost_fee; //numeric
    struct post_orders_200_response_pix_t *pix; //model
    struct post_orders_200_response_bank_slip_t *bank_slip; //model
    struct post_orders_200_response_nu_pay_t *nu_pay; //model
    struct post_orders_200_response_pic_pay_t *pic_pay; //model
    payconductor_api_status__e status; //referenced enum
    payconductor_api_payment_method__e payment_method; //referenced enum
    char *payed_at; // string
    char *error_code; // string
    char *error_message; // string

    int _library_owned; // Is the library responsible for freeing this object?
} post_orders_by_id_confirm_200_response_t;

__attribute__((deprecated)) post_orders_by_id_confirm_200_response_t *post_orders_by_id_confirm_200_response_create(
    char *id,
    char *external_id,
    double amount,
    double cost_fee,
    post_orders_200_response_pix_t *pix,
    post_orders_200_response_bank_slip_t *bank_slip,
    post_orders_200_response_nu_pay_t *nu_pay,
    post_orders_200_response_pic_pay_t *pic_pay,
    payconductor_api_status__e status,
    payconductor_api_payment_method__e payment_method,
    char *payed_at,
    char *error_code,
    char *error_message
);

void post_orders_by_id_confirm_200_response_free(post_orders_by_id_confirm_200_response_t *post_orders_by_id_confirm_200_response);

post_orders_by_id_confirm_200_response_t *post_orders_by_id_confirm_200_response_parseFromJSON(cJSON *post_orders_by_id_confirm_200_responseJSON);

cJSON *post_orders_by_id_confirm_200_response_convertToJSON(post_orders_by_id_confirm_200_response_t *post_orders_by_id_confirm_200_response);

#endif /* _post_orders_by_id_confirm_200_response_H_ */

