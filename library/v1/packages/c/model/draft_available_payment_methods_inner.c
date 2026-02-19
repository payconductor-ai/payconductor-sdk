#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "draft_available_payment_methods_inner.h"



static draft_available_payment_methods_inner_t *draft_available_payment_methods_inner_create_internal(
    ) {
    draft_available_payment_methods_inner_t *draft_available_payment_methods_inner_local_var = malloc(sizeof(draft_available_payment_methods_inner_t));
    if (!draft_available_payment_methods_inner_local_var) {
        return NULL;
    }

    draft_available_payment_methods_inner_local_var->_library_owned = 1;
    return draft_available_payment_methods_inner_local_var;
}

__attribute__((deprecated)) draft_available_payment_methods_inner_t *draft_available_payment_methods_inner_create(
    ) {
    return draft_available_payment_methods_inner_create_internal (
        );
}

void draft_available_payment_methods_inner_free(draft_available_payment_methods_inner_t *draft_available_payment_methods_inner) {
    if(NULL == draft_available_payment_methods_inner){
        return ;
    }
    if(draft_available_payment_methods_inner->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "draft_available_payment_methods_inner_free");
        return ;
    }
    listEntry_t *listEntry;
    free(draft_available_payment_methods_inner);
}

cJSON *draft_available_payment_methods_inner_convertToJSON(draft_available_payment_methods_inner_t *draft_available_payment_methods_inner) {
    cJSON *item = cJSON_CreateObject();
    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

draft_available_payment_methods_inner_t *draft_available_payment_methods_inner_parseFromJSON(cJSON *draft_available_payment_methods_innerJSON){

    draft_available_payment_methods_inner_t *draft_available_payment_methods_inner_local_var = NULL;


    draft_available_payment_methods_inner_local_var = draft_available_payment_methods_inner_create_internal (
        );

    return draft_available_payment_methods_inner_local_var;
end:
    return NULL;

}
