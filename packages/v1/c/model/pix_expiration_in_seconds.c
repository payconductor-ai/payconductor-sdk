#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "pix_expiration_in_seconds.h"



static pix_expiration_in_seconds_t *pix_expiration_in_seconds_create_internal(
    ) {
    pix_expiration_in_seconds_t *pix_expiration_in_seconds_local_var = malloc(sizeof(pix_expiration_in_seconds_t));
    if (!pix_expiration_in_seconds_local_var) {
        return NULL;
    }

    pix_expiration_in_seconds_local_var->_library_owned = 1;
    return pix_expiration_in_seconds_local_var;
}

__attribute__((deprecated)) pix_expiration_in_seconds_t *pix_expiration_in_seconds_create(
    ) {
    return pix_expiration_in_seconds_create_internal (
        );
}

void pix_expiration_in_seconds_free(pix_expiration_in_seconds_t *pix_expiration_in_seconds) {
    if(NULL == pix_expiration_in_seconds){
        return ;
    }
    if(pix_expiration_in_seconds->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "pix_expiration_in_seconds_free");
        return ;
    }
    listEntry_t *listEntry;
    free(pix_expiration_in_seconds);
}

cJSON *pix_expiration_in_seconds_convertToJSON(pix_expiration_in_seconds_t *pix_expiration_in_seconds) {
    cJSON *item = cJSON_CreateObject();
    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

pix_expiration_in_seconds_t *pix_expiration_in_seconds_parseFromJSON(cJSON *pix_expiration_in_secondsJSON){

    pix_expiration_in_seconds_t *pix_expiration_in_seconds_local_var = NULL;


    pix_expiration_in_seconds_local_var = pix_expiration_in_seconds_create_internal (
        );

    return pix_expiration_in_seconds_local_var;
end:
    return NULL;

}
