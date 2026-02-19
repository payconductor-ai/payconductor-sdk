#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "available_payment_methods.h"


char* available_payment_methods_available_payment_methods_ToString(payconductor_api_available_payment_methods__e available_payment_methods) {
    char *available_payment_methodsArray[] =  { "NULL", "Pix", "CreditCard", "DebitCard", "BankSlip", "Crypto", "ApplePay", "NuPay", "PicPay", "AmazonPay", "SepaDebit", "GooglePay", "Draft" };
    return available_payment_methodsArray[available_payment_methods];
}

payconductor_api_available_payment_methods__e available_payment_methods_available_payment_methods_FromString(char* available_payment_methods) {
    int stringToReturn = 0;
    char *available_payment_methodsArray[] =  { "NULL", "Pix", "CreditCard", "DebitCard", "BankSlip", "Crypto", "ApplePay", "NuPay", "PicPay", "AmazonPay", "SepaDebit", "GooglePay", "Draft" };
    size_t sizeofArray = sizeof(available_payment_methodsArray) / sizeof(available_payment_methodsArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(available_payment_methods, available_payment_methodsArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

cJSON *available_payment_methods_convertToJSON(payconductor_api_available_payment_methods__e available_payment_methods) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "available_payment_methods", available_payment_methods_available_payment_methods_ToString(available_payment_methods)) == NULL) {
        goto fail;
    }
    return item;
fail:
    cJSON_Delete(item);
    return NULL;
}

payconductor_api_available_payment_methods__e available_payment_methods_parseFromJSON(cJSON *available_payment_methodsJSON) {
    if(!cJSON_IsString(available_payment_methodsJSON) || (available_payment_methodsJSON->valuestring == NULL)) {
        return 0;
    }
    return available_payment_methods_available_payment_methods_FromString(available_payment_methodsJSON->valuestring);
}
