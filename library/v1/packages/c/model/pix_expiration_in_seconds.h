/*
 * pix_expiration_in_seconds.h
 *
 * PIX expiration time in seconds
 */

#ifndef _pix_expiration_in_seconds_H_
#define _pix_expiration_in_seconds_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct pix_expiration_in_seconds_t pix_expiration_in_seconds_t;




typedef struct pix_expiration_in_seconds_t {

    int _library_owned; // Is the library responsible for freeing this object?
} pix_expiration_in_seconds_t;

__attribute__((deprecated)) pix_expiration_in_seconds_t *pix_expiration_in_seconds_create(
);

void pix_expiration_in_seconds_free(pix_expiration_in_seconds_t *pix_expiration_in_seconds);

pix_expiration_in_seconds_t *pix_expiration_in_seconds_parseFromJSON(cJSON *pix_expiration_in_secondsJSON);

cJSON *pix_expiration_in_seconds_convertToJSON(pix_expiration_in_seconds_t *pix_expiration_in_seconds);

#endif /* _pix_expiration_in_seconds_H_ */

