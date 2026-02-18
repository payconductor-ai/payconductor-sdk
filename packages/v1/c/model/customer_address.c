#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "customer_address.h"



static customer_address_t *customer_address_create_internal(
    char *city,
    char *country,
    char *neighborhood,
    char *number,
    char *state,
    char *street,
    char *zip_code
    ) {
    customer_address_t *customer_address_local_var = malloc(sizeof(customer_address_t));
    if (!customer_address_local_var) {
        return NULL;
    }
    customer_address_local_var->city = city;
    customer_address_local_var->country = country;
    customer_address_local_var->neighborhood = neighborhood;
    customer_address_local_var->number = number;
    customer_address_local_var->state = state;
    customer_address_local_var->street = street;
    customer_address_local_var->zip_code = zip_code;

    customer_address_local_var->_library_owned = 1;
    return customer_address_local_var;
}

__attribute__((deprecated)) customer_address_t *customer_address_create(
    char *city,
    char *country,
    char *neighborhood,
    char *number,
    char *state,
    char *street,
    char *zip_code
    ) {
    return customer_address_create_internal (
        city,
        country,
        neighborhood,
        number,
        state,
        street,
        zip_code
        );
}

void customer_address_free(customer_address_t *customer_address) {
    if(NULL == customer_address){
        return ;
    }
    if(customer_address->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "customer_address_free");
        return ;
    }
    listEntry_t *listEntry;
    if (customer_address->city) {
        free(customer_address->city);
        customer_address->city = NULL;
    }
    if (customer_address->country) {
        free(customer_address->country);
        customer_address->country = NULL;
    }
    if (customer_address->neighborhood) {
        free(customer_address->neighborhood);
        customer_address->neighborhood = NULL;
    }
    if (customer_address->number) {
        free(customer_address->number);
        customer_address->number = NULL;
    }
    if (customer_address->state) {
        free(customer_address->state);
        customer_address->state = NULL;
    }
    if (customer_address->street) {
        free(customer_address->street);
        customer_address->street = NULL;
    }
    if (customer_address->zip_code) {
        free(customer_address->zip_code);
        customer_address->zip_code = NULL;
    }
    free(customer_address);
}

cJSON *customer_address_convertToJSON(customer_address_t *customer_address) {
    cJSON *item = cJSON_CreateObject();

    // customer_address->city
    if (!customer_address->city) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "city", customer_address->city) == NULL) {
    goto fail; //String
    }


    // customer_address->country
    if (!customer_address->country) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "country", customer_address->country) == NULL) {
    goto fail; //String
    }


    // customer_address->neighborhood
    if (!customer_address->neighborhood) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "neighborhood", customer_address->neighborhood) == NULL) {
    goto fail; //String
    }


    // customer_address->number
    if (!customer_address->number) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "number", customer_address->number) == NULL) {
    goto fail; //String
    }


    // customer_address->state
    if (!customer_address->state) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "state", customer_address->state) == NULL) {
    goto fail; //String
    }


    // customer_address->street
    if (!customer_address->street) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "street", customer_address->street) == NULL) {
    goto fail; //String
    }


    // customer_address->zip_code
    if (!customer_address->zip_code) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "zipCode", customer_address->zip_code) == NULL) {
    goto fail; //String
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

customer_address_t *customer_address_parseFromJSON(cJSON *customer_addressJSON){

    customer_address_t *customer_address_local_var = NULL;

    // customer_address->city
    cJSON *city = cJSON_GetObjectItemCaseSensitive(customer_addressJSON, "city");
    if (cJSON_IsNull(city)) {
        city = NULL;
    }
    if (!city) {
        goto end;
    }

    
    if(!cJSON_IsString(city))
    {
    goto end; //String
    }

    // customer_address->country
    cJSON *country = cJSON_GetObjectItemCaseSensitive(customer_addressJSON, "country");
    if (cJSON_IsNull(country)) {
        country = NULL;
    }
    if (!country) {
        goto end;
    }

    
    if(!cJSON_IsString(country))
    {
    goto end; //String
    }

    // customer_address->neighborhood
    cJSON *neighborhood = cJSON_GetObjectItemCaseSensitive(customer_addressJSON, "neighborhood");
    if (cJSON_IsNull(neighborhood)) {
        neighborhood = NULL;
    }
    if (!neighborhood) {
        goto end;
    }

    
    if(!cJSON_IsString(neighborhood))
    {
    goto end; //String
    }

    // customer_address->number
    cJSON *number = cJSON_GetObjectItemCaseSensitive(customer_addressJSON, "number");
    if (cJSON_IsNull(number)) {
        number = NULL;
    }
    if (!number) {
        goto end;
    }

    
    if(!cJSON_IsString(number))
    {
    goto end; //String
    }

    // customer_address->state
    cJSON *state = cJSON_GetObjectItemCaseSensitive(customer_addressJSON, "state");
    if (cJSON_IsNull(state)) {
        state = NULL;
    }
    if (!state) {
        goto end;
    }

    
    if(!cJSON_IsString(state))
    {
    goto end; //String
    }

    // customer_address->street
    cJSON *street = cJSON_GetObjectItemCaseSensitive(customer_addressJSON, "street");
    if (cJSON_IsNull(street)) {
        street = NULL;
    }
    if (!street) {
        goto end;
    }

    
    if(!cJSON_IsString(street))
    {
    goto end; //String
    }

    // customer_address->zip_code
    cJSON *zip_code = cJSON_GetObjectItemCaseSensitive(customer_addressJSON, "zipCode");
    if (cJSON_IsNull(zip_code)) {
        zip_code = NULL;
    }
    if (!zip_code) {
        goto end;
    }

    
    if(!cJSON_IsString(zip_code))
    {
    goto end; //String
    }


    customer_address_local_var = customer_address_create_internal (
        strdup(city->valuestring),
        strdup(country->valuestring),
        strdup(neighborhood->valuestring),
        strdup(number->valuestring),
        strdup(state->valuestring),
        strdup(street->valuestring),
        strdup(zip_code->valuestring)
        );

    return customer_address_local_var;
end:
    return NULL;

}
