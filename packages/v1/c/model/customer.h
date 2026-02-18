/*
 * customer.h
 *
 * Schema for creating a new customer
 */

#ifndef _customer_H_
#define _customer_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct customer_t customer_t;

#include "customer_address.h"

// Enum DOCUMENTTYPE for customer

typedef enum  { payconductor_api_customer_DOCUMENTTYPE_NULL = 0, payconductor_api_customer_DOCUMENTTYPE_Cpf, payconductor_api_customer_DOCUMENTTYPE_Cnpj } payconductor_api_customer_DOCUMENTTYPE_e;

char* customer_document_type_ToString(payconductor_api_customer_DOCUMENTTYPE_e document_type);

payconductor_api_customer_DOCUMENTTYPE_e customer_document_type_FromString(char* document_type);



typedef struct customer_t {
    struct customer_address_t *address; //model
    char *document_number; // string
    payconductor_api_customer_DOCUMENTTYPE_e document_type; //enum
    char *email; // string
    char *name; // string
    char *phone_number; // string

    int _library_owned; // Is the library responsible for freeing this object?
} customer_t;

__attribute__((deprecated)) customer_t *customer_create(
    customer_address_t *address,
    char *document_number,
    payconductor_api_customer_DOCUMENTTYPE_e document_type,
    char *email,
    char *name,
    char *phone_number
);

void customer_free(customer_t *customer);

customer_t *customer_parseFromJSON(cJSON *customerJSON);

cJSON *customer_convertToJSON(customer_t *customer);

#endif /* _customer_H_ */

