#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "customer_1.h"


char* customer_1_document_type_ToString(payconductor_api_customer_1_DOCUMENTTYPE_e document_type) {
    char* document_typeArray[] =  { "NULL", "Cpf", "Cnpj" };
    return document_typeArray[document_type];
}

payconductor_api_customer_1_DOCUMENTTYPE_e customer_1_document_type_FromString(char* document_type){
    int stringToReturn = 0;
    char *document_typeArray[] =  { "NULL", "Cpf", "Cnpj" };
    size_t sizeofArray = sizeof(document_typeArray) / sizeof(document_typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(document_type, document_typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static customer_1_t *customer_1_create_internal(
    customer_address_t *address,
    char *document_number,
    payconductor_api_customer_1_DOCUMENTTYPE_e document_type,
    char *email,
    char *name,
    char *phone_number
    ) {
    customer_1_t *customer_1_local_var = malloc(sizeof(customer_1_t));
    if (!customer_1_local_var) {
        return NULL;
    }
    customer_1_local_var->address = address;
    customer_1_local_var->document_number = document_number;
    customer_1_local_var->document_type = document_type;
    customer_1_local_var->email = email;
    customer_1_local_var->name = name;
    customer_1_local_var->phone_number = phone_number;

    customer_1_local_var->_library_owned = 1;
    return customer_1_local_var;
}

__attribute__((deprecated)) customer_1_t *customer_1_create(
    customer_address_t *address,
    char *document_number,
    payconductor_api_customer_1_DOCUMENTTYPE_e document_type,
    char *email,
    char *name,
    char *phone_number
    ) {
    return customer_1_create_internal (
        address,
        document_number,
        document_type,
        email,
        name,
        phone_number
        );
}

void customer_1_free(customer_1_t *customer_1) {
    if(NULL == customer_1){
        return ;
    }
    if(customer_1->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "customer_1_free");
        return ;
    }
    listEntry_t *listEntry;
    if (customer_1->address) {
        customer_address_free(customer_1->address);
        customer_1->address = NULL;
    }
    if (customer_1->document_number) {
        free(customer_1->document_number);
        customer_1->document_number = NULL;
    }
    if (customer_1->email) {
        free(customer_1->email);
        customer_1->email = NULL;
    }
    if (customer_1->name) {
        free(customer_1->name);
        customer_1->name = NULL;
    }
    if (customer_1->phone_number) {
        free(customer_1->phone_number);
        customer_1->phone_number = NULL;
    }
    free(customer_1);
}

cJSON *customer_1_convertToJSON(customer_1_t *customer_1) {
    cJSON *item = cJSON_CreateObject();

    // customer_1->address
    if(customer_1->address) {
    cJSON *address_local_JSON = customer_address_convertToJSON(customer_1->address);
    if(address_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "address", address_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // customer_1->document_number
    if(customer_1->document_number) {
    if(cJSON_AddStringToObject(item, "documentNumber", customer_1->document_number) == NULL) {
    goto fail; //String
    }
    }


    // customer_1->document_type
    if(customer_1->document_type != payconductor_api_customer_1_DOCUMENTTYPE_NULL) {
    if(cJSON_AddStringToObject(item, "documentType", customer_1_document_type_ToString(customer_1->document_type)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // customer_1->email
    if(customer_1->email) {
    if(cJSON_AddStringToObject(item, "email", customer_1->email) == NULL) {
    goto fail; //String
    }
    }


    // customer_1->name
    if(customer_1->name) {
    if(cJSON_AddStringToObject(item, "name", customer_1->name) == NULL) {
    goto fail; //String
    }
    }


    // customer_1->phone_number
    if(customer_1->phone_number) {
    if(cJSON_AddStringToObject(item, "phoneNumber", customer_1->phone_number) == NULL) {
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

customer_1_t *customer_1_parseFromJSON(cJSON *customer_1JSON){

    customer_1_t *customer_1_local_var = NULL;

    // define the local variable for customer_1->address
    customer_address_t *address_local_nonprim = NULL;

    // customer_1->address
    cJSON *address = cJSON_GetObjectItemCaseSensitive(customer_1JSON, "address");
    if (cJSON_IsNull(address)) {
        address = NULL;
    }
    if (address) { 
    address_local_nonprim = customer_address_parseFromJSON(address); //nonprimitive
    }

    // customer_1->document_number
    cJSON *document_number = cJSON_GetObjectItemCaseSensitive(customer_1JSON, "documentNumber");
    if (cJSON_IsNull(document_number)) {
        document_number = NULL;
    }
    if (document_number) { 
    if(!cJSON_IsString(document_number) && !cJSON_IsNull(document_number))
    {
    goto end; //String
    }
    }

    // customer_1->document_type
    cJSON *document_type = cJSON_GetObjectItemCaseSensitive(customer_1JSON, "documentType");
    if (cJSON_IsNull(document_type)) {
        document_type = NULL;
    }
    payconductor_api_customer_1_DOCUMENTTYPE_e document_typeVariable;
    if (document_type) { 
    if(!cJSON_IsString(document_type))
    {
    goto end; //Enum
    }
    document_typeVariable = customer_1_document_type_FromString(document_type->valuestring);
    }

    // customer_1->email
    cJSON *email = cJSON_GetObjectItemCaseSensitive(customer_1JSON, "email");
    if (cJSON_IsNull(email)) {
        email = NULL;
    }
    if (email) { 
    if(!cJSON_IsString(email) && !cJSON_IsNull(email))
    {
    goto end; //String
    }
    }

    // customer_1->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(customer_1JSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // customer_1->phone_number
    cJSON *phone_number = cJSON_GetObjectItemCaseSensitive(customer_1JSON, "phoneNumber");
    if (cJSON_IsNull(phone_number)) {
        phone_number = NULL;
    }
    if (phone_number) { 
    if(!cJSON_IsString(phone_number) && !cJSON_IsNull(phone_number))
    {
    goto end; //String
    }
    }


    customer_1_local_var = customer_1_create_internal (
        address ? address_local_nonprim : NULL,
        document_number && !cJSON_IsNull(document_number) ? strdup(document_number->valuestring) : NULL,
        document_type ? document_typeVariable : payconductor_api_customer_1_DOCUMENTTYPE_NULL,
        email && !cJSON_IsNull(email) ? strdup(email->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        phone_number && !cJSON_IsNull(phone_number) ? strdup(phone_number->valuestring) : NULL
        );

    return customer_1_local_var;
end:
    if (address_local_nonprim) {
        customer_address_free(address_local_nonprim);
        address_local_nonprim = NULL;
    }
    return NULL;

}
