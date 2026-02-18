/*
 * pix.h
 *
 * 
 */

#ifndef _pix_H_
#define _pix_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct pix_t pix_t;

#include "pix_expiration_in_seconds.h"



typedef struct pix_t {
    char *payment_method; // string
    struct pix_expiration_in_seconds_t *expiration_in_seconds; //model

    int _library_owned; // Is the library responsible for freeing this object?
} pix_t;

__attribute__((deprecated)) pix_t *pix_create(
    char *payment_method,
    pix_expiration_in_seconds_t *expiration_in_seconds
);

void pix_free(pix_t *pix);

pix_t *pix_parseFromJSON(cJSON *pixJSON);

cJSON *pix_convertToJSON(pix_t *pix);

#endif /* _pix_H_ */

