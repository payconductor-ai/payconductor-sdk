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
#include "document_type.h"



typedef struct customer_1_t {
    struct customer_address_t *address; //model
    char *document_number; // string
    payconductor_api_document_type__e document_type; //referenced enum
    char *email; // string
    char *name; // string
    char *phone_number; // string

    int _library_owned; // Is the library responsible for freeing this object?
} customer_1_t;

__attribute__((deprecated)) customer_1_t *customer_1_create(
    customer_address_t *address,
    char *document_number,
    payconductor_api_document_type__e document_type,
    char *email,
    char *name,
    char *phone_number
);

void customer_1_free(customer_1_t *customer_1);

customer_1_t *customer_1_parseFromJSON(cJSON *customer_1JSON);

cJSON *customer_1_convertToJSON(customer_1_t *customer_1);

#endif /* _customer_1_H_ */

