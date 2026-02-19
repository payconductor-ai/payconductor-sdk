/*
 * pix_type.h
 *
 * 
 */

#ifndef _pix_type_H_
#define _pix_type_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct pix_type_t pix_type_t;


// Enum  for pix_type

typedef enum { payconductor_api_pix_type__NULL = 0, payconductor_api_pix_type__Cpf, payconductor_api_pix_type__Cnpj, payconductor_api_pix_type__Email, payconductor_api_pix_type__Phone, payconductor_api_pix_type__Random } payconductor_api_pix_type__e;

char* pix_type_pix_type_ToString(payconductor_api_pix_type__e pix_type);

payconductor_api_pix_type__e pix_type_pix_type_FromString(char* pix_type);

cJSON *pix_type_convertToJSON(payconductor_api_pix_type__e pix_type);

payconductor_api_pix_type__e pix_type_parseFromJSON(cJSON *pix_typeJSON);

#endif /* _pix_type_H_ */

