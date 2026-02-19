#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/customer.h"
#include "../model/customer_1.h"


// Get all customers
//
// Retrieve a list of all customers associated with the organization, with support for filters and pagination.
//
void
CustomersAPI_getCustomers(apiClient_t *apiClient, double page, double pageSize, char *email, char *name, char endDate, char startDate);


// Get customer by ID
//
// Retrieve the complete details of a specific customer using their unique ID.
//
void
CustomersAPI_getCustomersById(apiClient_t *apiClient, char *id);


// Update customer data
//
// Update the information of an existing customer by providing the new data in the request body.
//
void
CustomersAPI_patchCustomersById(apiClient_t *apiClient, char *id, customer_1_t *customer_1);


// Create new customer
//
// Create a new customer by providing the required data in the request body.
//
void
CustomersAPI_postCustomers(apiClient_t *apiClient, customer_t *customer);


