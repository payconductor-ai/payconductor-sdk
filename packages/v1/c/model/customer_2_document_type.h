/*
 * customer_2_document_type.h
 *
 * Document type: Cpf or Cnpj
 */

#ifndef _customer_2_document_type_H_
#define _customer_2_document_type_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct customer_2_document_type_t customer_2_document_type_t;




typedef struct customer_2_document_type_t {

    int _library_owned; // Is the library responsible for freeing this object?
} customer_2_document_type_t;

__attribute__((deprecated)) customer_2_document_type_t *customer_2_document_type_create(
);

void customer_2_document_type_free(customer_2_document_type_t *customer_2_document_type);

customer_2_document_type_t *customer_2_document_type_parseFromJSON(cJSON *customer_2_document_typeJSON);

cJSON *customer_2_document_type_convertToJSON(customer_2_document_type_t *customer_2_document_type);

#endif /* _customer_2_document_type_H_ */

