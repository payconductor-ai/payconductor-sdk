#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "customer_2_document_type.h"



static customer_2_document_type_t *customer_2_document_type_create_internal(
    ) {
    customer_2_document_type_t *customer_2_document_type_local_var = malloc(sizeof(customer_2_document_type_t));
    if (!customer_2_document_type_local_var) {
        return NULL;
    }

    customer_2_document_type_local_var->_library_owned = 1;
    return customer_2_document_type_local_var;
}

__attribute__((deprecated)) customer_2_document_type_t *customer_2_document_type_create(
    ) {
    return customer_2_document_type_create_internal (
        );
}

void customer_2_document_type_free(customer_2_document_type_t *customer_2_document_type) {
    if(NULL == customer_2_document_type){
        return ;
    }
    if(customer_2_document_type->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "customer_2_document_type_free");
        return ;
    }
    listEntry_t *listEntry;
    free(customer_2_document_type);
}

cJSON *customer_2_document_type_convertToJSON(customer_2_document_type_t *customer_2_document_type) {
    cJSON *item = cJSON_CreateObject();
    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

customer_2_document_type_t *customer_2_document_type_parseFromJSON(cJSON *customer_2_document_typeJSON){

    customer_2_document_type_t *customer_2_document_type_local_var = NULL;


    customer_2_document_type_local_var = customer_2_document_type_create_internal (
        );

    return customer_2_document_type_local_var;
end:
    return NULL;

}
