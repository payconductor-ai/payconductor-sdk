#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "pix_type.h"


char* pix_type_pix_type_ToString(payconductor_api_pix_type__e pix_type) {
    char *pix_typeArray[] =  { "NULL", "Cpf", "Cnpj", "Email", "Phone", "Random" };
    return pix_typeArray[pix_type];
}

payconductor_api_pix_type__e pix_type_pix_type_FromString(char* pix_type) {
    int stringToReturn = 0;
    char *pix_typeArray[] =  { "NULL", "Cpf", "Cnpj", "Email", "Phone", "Random" };
    size_t sizeofArray = sizeof(pix_typeArray) / sizeof(pix_typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(pix_type, pix_typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

cJSON *pix_type_convertToJSON(payconductor_api_pix_type__e pix_type) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "pix_type", pix_type_pix_type_ToString(pix_type)) == NULL) {
        goto fail;
    }
    return item;
fail:
    cJSON_Delete(item);
    return NULL;
}

payconductor_api_pix_type__e pix_type_parseFromJSON(cJSON *pix_typeJSON) {
    if(!cJSON_IsString(pix_typeJSON) || (pix_typeJSON->valuestring == NULL)) {
        return 0;
    }
    return pix_type_pix_type_FromString(pix_typeJSON->valuestring);
}
