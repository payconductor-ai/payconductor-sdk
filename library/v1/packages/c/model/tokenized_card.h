/*
 * tokenized_card.h
 *
 * 
 */

#ifndef _tokenized_card_H_
#define _tokenized_card_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct tokenized_card_t tokenized_card_t;




typedef struct tokenized_card_t {
    char *first_six_card_number; // string
    char *token; // string

    int _library_owned; // Is the library responsible for freeing this object?
} tokenized_card_t;

__attribute__((deprecated)) tokenized_card_t *tokenized_card_create(
    char *first_six_card_number,
    char *token
);

void tokenized_card_free(tokenized_card_t *tokenized_card);

tokenized_card_t *tokenized_card_parseFromJSON(cJSON *tokenized_cardJSON);

cJSON *tokenized_card_convertToJSON(tokenized_card_t *tokenized_card);

#endif /* _tokenized_card_H_ */

