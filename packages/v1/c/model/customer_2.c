#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "customer_2.h"



static customer_2_t *customer_2_create_internal(
    customer_address_t *address,
    char *document_number,
    customer_2_document_type_t *document_type,
    char *email,
    char *name,
    char *phone_number
    ) {
    customer_2_t *customer_2_local_var = malloc(sizeof(customer_2_t));
    if (!customer_2_local_var) {
        return NULL;
    }
    customer_2_local_var->address = address;
    customer_2_local_var->document_number = document_number;
    customer_2_local_var->document_type = document_type;
    customer_2_local_var->email = email;
    customer_2_local_var->name = name;
    customer_2_local_var->phone_number = phone_number;

    customer_2_local_var->_library_owned = 1;
    return customer_2_local_var;
}

__attribute__((deprecated)) customer_2_t *customer_2_create(
    customer_address_t *address,
    char *document_number,
    customer_2_document_type_t *document_type,
    char *email,
    char *name,
    char *phone_number
    ) {
    return customer_2_create_internal (
        address,
        document_number,
        document_type,
        email,
        name,
        phone_number
        );
}

void customer_2_free(customer_2_t *customer_2) {
    if(NULL == customer_2){
        return ;
    }
    if(customer_2->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "customer_2_free");
        return ;
    }
    listEntry_t *listEntry;
    if (customer_2->address) {
        customer_address_free(customer_2->address);
        customer_2->address = NULL;
    }
    if (customer_2->document_number) {
        free(customer_2->document_number);
        customer_2->document_number = NULL;
    }
    if (customer_2->document_type) {
        customer_2_document_type_free(customer_2->document_type);
        customer_2->document_type = NULL;
    }
    if (customer_2->email) {
        free(customer_2->email);
        customer_2->email = NULL;
    }
    if (customer_2->name) {
        free(customer_2->name);
        customer_2->name = NULL;
    }
    if (customer_2->phone_number) {
        free(customer_2->phone_number);
        customer_2->phone_number = NULL;
    }
    free(customer_2);
}

cJSON *customer_2_convertToJSON(customer_2_t *customer_2) {
    cJSON *item = cJSON_CreateObject();

    // customer_2->address
    if(customer_2->address) {
    cJSON *address_local_JSON = customer_address_convertToJSON(customer_2->address);
    if(address_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "address", address_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // customer_2->document_number
    if (!customer_2->document_number) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "documentNumber", customer_2->document_number) == NULL) {
    goto fail; //String
    }


    // customer_2->document_type
    if (!customer_2->document_type) {
        goto fail;
    }
    cJSON *document_type_local_JSON = customer_2_document_type_convertToJSON(customer_2->document_type);
    if(document_type_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "documentType", document_type_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }


    // customer_2->email
    if (!customer_2->email) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "email", customer_2->email) == NULL) {
    goto fail; //String
    }


    // customer_2->name
    if (!customer_2->name) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "name", customer_2->name) == NULL) {
    goto fail; //String
    }


    // customer_2->phone_number
    if(customer_2->phone_number) {
    if(cJSON_AddStringToObject(item, "phoneNumber", customer_2->phone_number) == NULL) {
    goto fail; //String
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

customer_2_t *customer_2_parseFromJSON(cJSON *customer_2JSON){

    customer_2_t *customer_2_local_var = NULL;

    // define the local variable for customer_2->address
    customer_address_t *address_local_nonprim = NULL;

    // define the local variable for customer_2->document_type
    customer_2_document_type_t *document_type_local_nonprim = NULL;

    // customer_2->address
    cJSON *address = cJSON_GetObjectItemCaseSensitive(customer_2JSON, "address");
    if (cJSON_IsNull(address)) {
        address = NULL;
    }
    if (address) { 
    address_local_nonprim = customer_address_parseFromJSON(address); //nonprimitive
    }

    // customer_2->document_number
    cJSON *document_number = cJSON_GetObjectItemCaseSensitive(customer_2JSON, "documentNumber");
    if (cJSON_IsNull(document_number)) {
        document_number = NULL;
    }
    if (!document_number) {
        goto end;
    }

    
    if(!cJSON_IsString(document_number))
    {
    goto end; //String
    }

    // customer_2->document_type
    cJSON *document_type = cJSON_GetObjectItemCaseSensitive(customer_2JSON, "documentType");
    if (cJSON_IsNull(document_type)) {
        document_type = NULL;
    }
    if (!document_type) {
        goto end;
    }

    
    document_type_local_nonprim = customer_2_document_type_parseFromJSON(document_type); //nonprimitive

    // customer_2->email
    cJSON *email = cJSON_GetObjectItemCaseSensitive(customer_2JSON, "email");
    if (cJSON_IsNull(email)) {
        email = NULL;
    }
    if (!email) {
        goto end;
    }

    
    if(!cJSON_IsString(email))
    {
    goto end; //String
    }

    // customer_2->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(customer_2JSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (!name) {
        goto end;
    }

    
    if(!cJSON_IsString(name))
    {
    goto end; //String
    }

    // customer_2->phone_number
    cJSON *phone_number = cJSON_GetObjectItemCaseSensitive(customer_2JSON, "phoneNumber");
    if (cJSON_IsNull(phone_number)) {
        phone_number = NULL;
    }
    if (phone_number) { 
    if(!cJSON_IsString(phone_number) && !cJSON_IsNull(phone_number))
    {
    goto end; //String
    }
    }


    customer_2_local_var = customer_2_create_internal (
        address ? address_local_nonprim : NULL,
        strdup(document_number->valuestring),
        document_type_local_nonprim,
        strdup(email->valuestring),
        strdup(name->valuestring),
        phone_number && !cJSON_IsNull(phone_number) ? strdup(phone_number->valuestring) : NULL
        );

    return customer_2_local_var;
end:
    if (address_local_nonprim) {
        customer_address_free(address_local_nonprim);
        address_local_nonprim = NULL;
    }
    if (document_type_local_nonprim) {
        customer_2_document_type_free(document_type_local_nonprim);
        document_type_local_nonprim = NULL;
    }
    return NULL;

}
