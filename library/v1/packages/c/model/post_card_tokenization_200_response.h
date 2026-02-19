/*
 * post_card_tokenization_200_response.h
 *
 * 
 */

#ifndef _post_card_tokenization_200_response_H_
#define _post_card_tokenization_200_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct post_card_tokenization_200_response_t post_card_tokenization_200_response_t;




typedef struct post_card_tokenization_200_response_t {
    char *customer_id; // string
    char *token; // string

    int _library_owned; // Is the library responsible for freeing this object?
} post_card_tokenization_200_response_t;

__attribute__((deprecated)) post_card_tokenization_200_response_t *post_card_tokenization_200_response_create(
    char *customer_id,
    char *token
);

void post_card_tokenization_200_response_free(post_card_tokenization_200_response_t *post_card_tokenization_200_response);

post_card_tokenization_200_response_t *post_card_tokenization_200_response_parseFromJSON(cJSON *post_card_tokenization_200_responseJSON);

cJSON *post_card_tokenization_200_response_convertToJSON(post_card_tokenization_200_response_t *post_card_tokenization_200_response);

#endif /* _post_card_tokenization_200_response_H_ */

