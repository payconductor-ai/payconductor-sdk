/*
 * customer_1.h
 *
 * Schema for creating a new customer
 */

#ifndef _customer_1_H_
#define _customer_1_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct customer_1_t customer_1_t;

#include "customer_address.h"

// Enum DOCUMENTTYPE for customer_1

typedef enum  { payconductor_api_customer_1_DOCUMENTTYPE_NULL = 0, payconductor_api_customer_1_DOCUMENTTYPE_Cpf, payconductor_api_customer_1_DOCUMENTTYPE_Cnpj } payconductor_api_customer_1_DOCUMENTTYPE_e;

char* customer_1_document_type_ToString(payconductor_api_customer_1_DOCUMENTTYPE_e document_type);

payconductor_api_customer_1_DOCUMENTTYPE_e customer_1_document_type_FromString(char* document_type);



typedef struct customer_1_t {
    struct customer_address_t *address; //model
    char *document_number; // string
    payconductor_api_customer_1_DOCUMENTTYPE_e document_type; //enum
    char *email; // string
    char *name; // string
    char *phone_number; // string

    int _library_owned; // Is the library responsible for freeing this object?
} customer_1_t;

__attribute__((deprecated)) customer_1_t *customer_1_create(
    customer_address_t *address,
    char *document_number,
    payconductor_api_customer_1_DOCUMENTTYPE_e document_type,
    char *email,
    char *name,
    char *phone_number
);

void customer_1_free(customer_1_t *customer_1);

customer_1_t *customer_1_parseFromJSON(cJSON *customer_1JSON);

cJSON *customer_1_convertToJSON(customer_1_t *customer_1);

#endif /* _customer_1_H_ */

