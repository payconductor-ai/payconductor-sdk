/*
 * post_card_tokenization_request_customer.h
 *
 * 
 */

#ifndef _post_card_tokenization_request_customer_H_
#define _post_card_tokenization_request_customer_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct post_card_tokenization_request_customer_t post_card_tokenization_request_customer_t;

#include "customer_2.h"
#include "customer_2_document_type.h"
#include "customer_address.h"
#include "post_card_tokenization_request_customer_any_of.h"



typedef struct post_card_tokenization_request_customer_t {
    struct customer_address_t *address; //model
    char *document_number; // string
    struct customer_2_document_type_t *document_type; //model
    char *email; // string
    char *name; // string
    char *phone_number; // string
    char *id; // string

    int _library_owned; // Is the library responsible for freeing this object?
} post_card_tokenization_request_customer_t;

__attribute__((deprecated)) post_card_tokenization_request_customer_t *post_card_tokenization_request_customer_create(
    customer_address_t *address,
    char *document_number,
    customer_2_document_type_t *document_type,
    char *email,
    char *name,
    char *phone_number,
    char *id
);

void post_card_tokenization_request_customer_free(post_card_tokenization_request_customer_t *post_card_tokenization_request_customer);

post_card_tokenization_request_customer_t *post_card_tokenization_request_customer_parseFromJSON(cJSON *post_card_tokenization_request_customerJSON);

cJSON *post_card_tokenization_request_customer_convertToJSON(post_card_tokenization_request_customer_t *post_card_tokenization_request_customer);

#endif /* _post_card_tokenization_request_customer_H_ */

