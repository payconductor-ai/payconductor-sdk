/*
 * document_type.h
 *
 * 
 */

#ifndef _document_type_H_
#define _document_type_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct document_type_t document_type_t;


// Enum  for document_type

typedef enum { payconductor_api_document_type__NULL = 0, payconductor_api_document_type__Cpf, payconductor_api_document_type__Cnpj } payconductor_api_document_type__e;

char* document_type_document_type_ToString(payconductor_api_document_type__e document_type);

payconductor_api_document_type__e document_type_document_type_FromString(char* document_type);

cJSON *document_type_convertToJSON(payconductor_api_document_type__e document_type);

payconductor_api_document_type__e document_type_parseFromJSON(cJSON *document_typeJSON);

#endif /* _document_type_H_ */

