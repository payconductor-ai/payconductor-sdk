/*
 * payment_method.h
 *
 * 
 */

#ifndef _payment_method_H_
#define _payment_method_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct payment_method_t payment_method_t;


// Enum  for payment_method

typedef enum { payconductor_api_payment_method__NULL = 0, payconductor_api_payment_method__Pix, payconductor_api_payment_method__CreditCard, payconductor_api_payment_method__DebitCard, payconductor_api_payment_method__BankSlip, payconductor_api_payment_method__Crypto, payconductor_api_payment_method__ApplePay, payconductor_api_payment_method__NuPay, payconductor_api_payment_method__PicPay, payconductor_api_payment_method__AmazonPay, payconductor_api_payment_method__SepaDebit, payconductor_api_payment_method__GooglePay, payconductor_api_payment_method__Draft } payconductor_api_payment_method__e;

char* payment_method_payment_method_ToString(payconductor_api_payment_method__e payment_method);

payconductor_api_payment_method__e payment_method_payment_method_FromString(char* payment_method);

cJSON *payment_method_convertToJSON(payconductor_api_payment_method__e payment_method);

payconductor_api_payment_method__e payment_method_parseFromJSON(cJSON *payment_methodJSON);

#endif /* _payment_method_H_ */

