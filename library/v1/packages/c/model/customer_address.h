/*
 * customer_address.h
 *
 * Schema for creating a new address
 */

#ifndef _customer_address_H_
#define _customer_address_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct customer_address_t customer_address_t;




typedef struct customer_address_t {
    char *city; // string
    char *country; // string
    char *neighborhood; // string
    char *number; // string
    char *state; // string
    char *street; // string
    char *zip_code; // string

    int _library_owned; // Is the library responsible for freeing this object?
} customer_address_t;

__attribute__((deprecated)) customer_address_t *customer_address_create(
    char *city,
    char *country,
    char *neighborhood,
    char *number,
    char *state,
    char *street,
    char *zip_code
);

void customer_address_free(customer_address_t *customer_address);

customer_address_t *customer_address_parseFromJSON(cJSON *customer_addressJSON);

cJSON *customer_address_convertToJSON(customer_address_t *customer_address);

#endif /* _customer_address_H_ */

