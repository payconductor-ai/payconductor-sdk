#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "customer.h"



static customer_t *customer_create_internal(
    customer_address_t *address,
    char *document_number,
    payconductor_api_document_type__e document_type,
    char *email,
    char *name,
    char *phone_number
    ) {
    customer_t *customer_local_var = malloc(sizeof(customer_t));
    if (!customer_local_var) {
        return NULL;
    }
    customer_local_var->address = address;
    customer_local_var->document_number = document_number;
    customer_local_var->document_type = document_type;
    customer_local_var->email = email;
    customer_local_var->name = name;
    customer_local_var->phone_number = phone_number;

    customer_local_var->_library_owned = 1;
    return customer_local_var;
}

__attribute__((deprecated)) customer_t *customer_create(
    customer_address_t *address,
    char *document_number,
    payconductor_api_document_type__e document_type,
    char *email,
    char *name,
    char *phone_number
    ) {
    return customer_create_internal (
        address,
        document_number,
        document_type,
        email,
        name,
        phone_number
        );
}

void customer_free(customer_t *customer) {
    if(NULL == customer){
        return ;
    }
    if(customer->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "customer_free");
        return ;
    }
    listEntry_t *listEntry;
    if (customer->address) {
        customer_address_free(customer->address);
        customer->address = NULL;
    }
    if (customer->document_number) {
        free(customer->document_number);
        customer->document_number = NULL;
    }
    if (customer->email) {
        free(customer->email);
        customer->email = NULL;
    }
    if (customer->name) {
        free(customer->name);
        customer->name = NULL;
    }
    if (customer->phone_number) {
        free(customer->phone_number);
        customer->phone_number = NULL;
    }
    free(customer);
}

cJSON *customer_convertToJSON(customer_t *customer) {
    cJSON *item = cJSON_CreateObject();

    // customer->address
    if(customer->address) {
    cJSON *address_local_JSON = customer_address_convertToJSON(customer->address);
    if(address_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "address", address_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // customer->document_number
    if (!customer->document_number) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "documentNumber", customer->document_number) == NULL) {
    goto fail; //String
    }


    // customer->document_type
    if (payconductor_api_document_type__NULL == customer->document_type) {
        goto fail;
    }
    cJSON *document_type_local_JSON = document_type_convertToJSON(customer->document_type);
    if(document_type_local_JSON == NULL) {
        goto fail; // custom
    }
    cJSON_AddItemToObject(item, "documentType", document_type_local_JSON);
    if(item->child == NULL) {
        goto fail;
    }


    // customer->email
    if (!customer->email) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "email", customer->email) == NULL) {
    goto fail; //String
    }


    // customer->name
    if (!customer->name) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "name", customer->name) == NULL) {
    goto fail; //String
    }


    // customer->phone_number
    if(customer->phone_number) {
    if(cJSON_AddStringToObject(item, "phoneNumber", customer->phone_number) == NULL) {
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

customer_t *customer_parseFromJSON(cJSON *customerJSON){

    customer_t *customer_local_var = NULL;

    // define the local variable for customer->address
    customer_address_t *address_local_nonprim = NULL;

    // define the local variable for customer->document_type
    payconductor_api_document_type__e document_type_local_nonprim = 0;

    // customer->address
    cJSON *address = cJSON_GetObjectItemCaseSensitive(customerJSON, "address");
    if (cJSON_IsNull(address)) {
        address = NULL;
    }
    if (address) { 
    address_local_nonprim = customer_address_parseFromJSON(address); //nonprimitive
    }

    // customer->document_number
    cJSON *document_number = cJSON_GetObjectItemCaseSensitive(customerJSON, "documentNumber");
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

    // customer->document_type
    cJSON *document_type = cJSON_GetObjectItemCaseSensitive(customerJSON, "documentType");
    if (cJSON_IsNull(document_type)) {
        document_type = NULL;
    }
    if (!document_type) {
        goto end;
    }

    
    document_type_local_nonprim = document_type_parseFromJSON(document_type); //custom

    // customer->email
    cJSON *email = cJSON_GetObjectItemCaseSensitive(customerJSON, "email");
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

    // customer->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(customerJSON, "name");
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

    // customer->phone_number
    cJSON *phone_number = cJSON_GetObjectItemCaseSensitive(customerJSON, "phoneNumber");
    if (cJSON_IsNull(phone_number)) {
        phone_number = NULL;
    }
    if (phone_number) { 
    if(!cJSON_IsString(phone_number) && !cJSON_IsNull(phone_number))
    {
    goto end; //String
    }
    }


    customer_local_var = customer_create_internal (
        address ? address_local_nonprim : NULL,
        strdup(document_number->valuestring),
        document_type_local_nonprim,
        strdup(email->valuestring),
        strdup(name->valuestring),
        phone_number && !cJSON_IsNull(phone_number) ? strdup(phone_number->valuestring) : NULL
        );

    return customer_local_var;
end:
    if (address_local_nonprim) {
        customer_address_free(address_local_nonprim);
        address_local_nonprim = NULL;
    }
    if (document_type_local_nonprim) {
        document_type_local_nonprim = 0;
    }
    return NULL;

}
