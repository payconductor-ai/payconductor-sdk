#' Create a new Customer
#'
#' @description
#' Schema for creating a new customer
#'
#' @docType class
#' @title Customer
#' @description Customer Class
#' @format An \code{R6Class} generator object
#' @field address  \link{CustomerAddress} [optional]
#' @field documentNumber Customer CPF or CNPJ without formatting character
#' @field documentType  \link{DocumentType}
#' @field email Customer email character
#' @field name Customer full name character
#' @field phoneNumber Customer phone number in +55 DD 9XXXXXXXX format character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Customer <- R6::R6Class(
  "Customer",
  public = list(
    `address` = NULL,
    `documentNumber` = NULL,
    `documentType` = NULL,
    `email` = NULL,
    `name` = NULL,
    `phoneNumber` = NULL,

    #' @description
    #' Initialize a new Customer class.
    #'
    #' @param documentNumber Customer CPF or CNPJ without formatting
    #' @param documentType documentType
    #' @param email Customer email
    #' @param name Customer full name
    #' @param address address
    #' @param phoneNumber Customer phone number in +55 DD 9XXXXXXXX format
    #' @param ... Other optional arguments.
    initialize = function(`documentNumber`, `documentType`, `email`, `name`, `address` = NULL, `phoneNumber` = NULL, ...) {
      if (!missing(`documentNumber`)) {
        if (!(is.character(`documentNumber`) && length(`documentNumber`) == 1)) {
          stop(paste("Error! Invalid data for `documentNumber`. Must be a string:", `documentNumber`))
        }
        self$`documentNumber` <- `documentNumber`
      }
      if (!missing(`documentType`)) {
        if (!(`documentType` %in% c())) {
          stop(paste("Error! \"", `documentType`, "\" cannot be assigned to `documentType`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`documentType`))
        self$`documentType` <- `documentType`
      }
      if (!missing(`email`)) {
        if (!(is.character(`email`) && length(`email`) == 1)) {
          stop(paste("Error! Invalid data for `email`. Must be a string:", `email`))
        }
        self$`email` <- `email`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`address`)) {
        stopifnot(R6::is.R6(`address`))
        self$`address` <- `address`
      }
      if (!is.null(`phoneNumber`)) {
        if (!(is.character(`phoneNumber`) && length(`phoneNumber`) == 1)) {
          stop(paste("Error! Invalid data for `phoneNumber`. Must be a string:", `phoneNumber`))
        }
        self$`phoneNumber` <- `phoneNumber`
      }
    },

    #' @description
    #' Convert to an R object. This method is deprecated. Use `toSimpleType()` instead.
    toJSON = function() {
      .Deprecated(new = "toSimpleType", msg = "Use the '$toSimpleType()' method instead since that is more clearly named. Use '$toJSONString()' to get a JSON string")
      return(self$toSimpleType())
    },

    #' @description
    #' Convert to a List
    #'
    #' Convert the R6 object to a list to work more easily with other tooling.
    #'
    #' @return Customer as a base R list.
    #' @examples
    #' # convert array of Customer (x) to a data frame
    #' \dontrun{
    #' library(purrr)
    #' library(tibble)
    #' df <- x |> map(\(y)y$toList()) |> map(as_tibble) |> list_rbind()
    #' df
    #' }
    toList = function() {
      return(self$toSimpleType())
    },

    #' @description
    #' Convert Customer to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CustomerObject <- list()
      if (!is.null(self$`address`)) {
        CustomerObject[["address"]] <-
          self$extractSimpleType(self$`address`)
      }
      if (!is.null(self$`documentNumber`)) {
        CustomerObject[["documentNumber"]] <-
          self$`documentNumber`
      }
      if (!is.null(self$`documentType`)) {
        CustomerObject[["documentType"]] <-
          self$extractSimpleType(self$`documentType`)
      }
      if (!is.null(self$`email`)) {
        CustomerObject[["email"]] <-
          self$`email`
      }
      if (!is.null(self$`name`)) {
        CustomerObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`phoneNumber`)) {
        CustomerObject[["phoneNumber"]] <-
          self$`phoneNumber`
      }
      return(CustomerObject)
    },

    extractSimpleType = function(x) {
      if (R6::is.R6(x)) {
        return(x$toSimpleType())
      } else if (!self$hasNestedR6(x)) {
        return(x)
      }
      lapply(x, self$extractSimpleType)
    },

    hasNestedR6 = function(x) {
      if (R6::is.R6(x)) {
        return(TRUE)
      }
      if (is.list(x)) {
        for (item in x) {
          if (self$hasNestedR6(item)) {
            return(TRUE)
          }
        }
      }
      FALSE
    },

    #' @description
    #' Deserialize JSON string into an instance of Customer
    #'
    #' @param input_json the JSON input
    #' @return the instance of Customer
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`address`)) {
        `address_object` <- CustomerAddress$new()
        `address_object`$fromJSON(jsonlite::toJSON(this_object$`address`, auto_unbox = TRUE, digits = NA))
        self$`address` <- `address_object`
      }
      if (!is.null(this_object$`documentNumber`)) {
        self$`documentNumber` <- this_object$`documentNumber`
      }
      if (!is.null(this_object$`documentType`)) {
        `documenttype_object` <- DocumentType$new()
        `documenttype_object`$fromJSON(jsonlite::toJSON(this_object$`documentType`, auto_unbox = TRUE, digits = NA))
        self$`documentType` <- `documenttype_object`
      }
      if (!is.null(this_object$`email`)) {
        self$`email` <- this_object$`email`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`phoneNumber`)) {
        self$`phoneNumber` <- this_object$`phoneNumber`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Customer in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Customer
    #'
    #' @param input_json the JSON input
    #' @return the instance of Customer
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`address` <- CustomerAddress$new()$fromJSON(jsonlite::toJSON(this_object$`address`, auto_unbox = TRUE, digits = NA))
      self$`documentNumber` <- this_object$`documentNumber`
      self$`documentType` <- DocumentType$new()$fromJSON(jsonlite::toJSON(this_object$`documentType`, auto_unbox = TRUE, digits = NA))
      self$`email` <- this_object$`email`
      self$`name` <- this_object$`name`
      self$`phoneNumber` <- this_object$`phoneNumber`
      self
    },

    #' @description
    #' Validate JSON input with respect to Customer and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `documentNumber`
      if (!is.null(input_json$`documentNumber`)) {
        if (!(is.character(input_json$`documentNumber`) && length(input_json$`documentNumber`) == 1)) {
          stop(paste("Error! Invalid data for `documentNumber`. Must be a string:", input_json$`documentNumber`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Customer: the required field `documentNumber` is missing."))
      }
      # check the required field `documentType`
      if (!is.null(input_json$`documentType`)) {
        stopifnot(R6::is.R6(input_json$`documentType`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Customer: the required field `documentType` is missing."))
      }
      # check the required field `email`
      if (!is.null(input_json$`email`)) {
        if (!(is.character(input_json$`email`) && length(input_json$`email`) == 1)) {
          stop(paste("Error! Invalid data for `email`. Must be a string:", input_json$`email`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Customer: the required field `email` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Customer: the required field `name` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Customer
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `documentNumber` is null
      if (is.null(self$`documentNumber`)) {
        return(FALSE)
      }

      if (!str_detect(self$`documentNumber`, "^\\d{11}$|^\\d{14}$")) {
        return(FALSE)
      }

      # check if the required `documentType` is null
      if (is.null(self$`documentType`)) {
        return(FALSE)
      }

      # check if the required `email` is null
      if (is.null(self$`email`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      if (!str_detect(self$`phoneNumber`, "^\\+(\\d{1,2}) (\\d{2}) (\\d{8,9})$")) {
        return(FALSE)
      }

      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
      # check if the required `documentNumber` is null
      if (is.null(self$`documentNumber`)) {
        invalid_fields["documentNumber"] <- "Non-nullable required field `documentNumber` cannot be null."
      }

      if (!str_detect(self$`documentNumber`, "^\\d{11}$|^\\d{14}$")) {
        invalid_fields["documentNumber"] <- "Invalid value for `documentNumber`, must conform to the pattern ^\\d{11}$|^\\d{14}$."
      }

      # check if the required `documentType` is null
      if (is.null(self$`documentType`)) {
        invalid_fields["documentType"] <- "Non-nullable required field `documentType` cannot be null."
      }

      # check if the required `email` is null
      if (is.null(self$`email`)) {
        invalid_fields["email"] <- "Non-nullable required field `email` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      if (!str_detect(self$`phoneNumber`, "^\\+(\\d{1,2}) (\\d{2}) (\\d{8,9})$")) {
        invalid_fields["phoneNumber"] <- "Invalid value for `phoneNumber`, must conform to the pattern ^\\+(\\d{1,2}) (\\d{2}) (\\d{8,9})$."
      }

      invalid_fields
    },

    #' @description
    #' Print the object
    print = function() {
      print(jsonlite::prettify(self$toJSONString()))
      invisible(self)
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
# Customer$unlock()
#
## Below is an example to define the print function
# Customer$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Customer$lock()

