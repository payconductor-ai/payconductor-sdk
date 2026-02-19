/*
 * customer_2.h
 *
 * Schema for creating a new customer
 */

#ifndef _customer_2_H_
#define _customer_2_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct customer_2_t customer_2_t;

#include "customer_2_document_type.h"
#include "customer_address.h"



typedef struct customer_2_t {
    struct customer_address_t *address; //model
    char *document_number; // string
    struct customer_2_document_type_t *document_type; //model
    char *email; // string
    char *name; // string
    char *phone_number; // string

    int _library_owned; // Is the library responsible for freeing this object?
} customer_2_t;

__attribute__((deprecated)) customer_2_t *customer_2_create(
    customer_address_t *address,
    char *document_number,
    customer_2_document_type_t *document_type,
    char *email,
    char *name,
    char *phone_number
);

void customer_2_free(customer_2_t *customer_2);

customer_2_t *customer_2_parseFromJSON(cJSON *customer_2JSON);

cJSON *customer_2_convertToJSON(customer_2_t *customer_2);

#endif /* _customer_2_H_ */

