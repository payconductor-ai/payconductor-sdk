#' Create a new Draft
#'
#' @description
#' Used to create an order without generating a real payment. Use to create orders that will be paid later
#'
#' @docType class
#' @title Draft
#' @description Draft Class
#' @format An \code{R6Class} generator object
#' @field paymentMethod  character
#' @field expirationInSeconds  \link{DraftExpirationInSeconds} [optional]
#' @field availablePaymentMethods Available payment methods for this order list(\link{DraftAvailablePaymentMethodsInner}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Draft <- R6::R6Class(
  "Draft",
  public = list(
    `paymentMethod` = NULL,
    `expirationInSeconds` = NULL,
    `availablePaymentMethods` = NULL,

    #' @description
    #' Initialize a new Draft class.
    #'
    #' @param paymentMethod paymentMethod
    #' @param expirationInSeconds expirationInSeconds
    #' @param availablePaymentMethods Available payment methods for this order
    #' @param ... Other optional arguments.
    initialize = function(`paymentMethod`, `expirationInSeconds` = NULL, `availablePaymentMethods` = NULL, ...) {
      if (!missing(`paymentMethod`)) {
        if (!(is.character(`paymentMethod`) && length(`paymentMethod`) == 1)) {
          stop(paste("Error! Invalid data for `paymentMethod`. Must be a string:", `paymentMethod`))
        }
        self$`paymentMethod` <- `paymentMethod`
      }
      if (!is.null(`expirationInSeconds`)) {
        stopifnot(R6::is.R6(`expirationInSeconds`))
        self$`expirationInSeconds` <- `expirationInSeconds`
      }
      if (!is.null(`availablePaymentMethods`)) {
        stopifnot(is.vector(`availablePaymentMethods`), length(`availablePaymentMethods`) != 0)
        sapply(`availablePaymentMethods`, function(x) stopifnot(R6::is.R6(x)))
        self$`availablePaymentMethods` <- `availablePaymentMethods`
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
    #' @return Draft as a base R list.
    #' @examples
    #' # convert array of Draft (x) to a data frame
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
    #' Convert Draft to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DraftObject <- list()
      if (!is.null(self$`paymentMethod`)) {
        DraftObject[["paymentMethod"]] <-
          self$`paymentMethod`
      }
      if (!is.null(self$`expirationInSeconds`)) {
        DraftObject[["expirationInSeconds"]] <-
          self$extractSimpleType(self$`expirationInSeconds`)
      }
      if (!is.null(self$`availablePaymentMethods`)) {
        DraftObject[["availablePaymentMethods"]] <-
          self$extractSimpleType(self$`availablePaymentMethods`)
      }
      return(DraftObject)
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
    #' Deserialize JSON string into an instance of Draft
    #'
    #' @param input_json the JSON input
    #' @return the instance of Draft
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`paymentMethod`)) {
        self$`paymentMethod` <- this_object$`paymentMethod`
      }
      if (!is.null(this_object$`expirationInSeconds`)) {
        `expirationinseconds_object` <- DraftExpirationInSeconds$new()
        `expirationinseconds_object`$fromJSON(jsonlite::toJSON(this_object$`expirationInSeconds`, auto_unbox = TRUE, digits = NA))
        self$`expirationInSeconds` <- `expirationinseconds_object`
      }
      if (!is.null(this_object$`availablePaymentMethods`)) {
        self$`availablePaymentMethods` <- ApiClient$new()$deserializeObj(this_object$`availablePaymentMethods`, "array[DraftAvailablePaymentMethodsInner]", loadNamespace("payconductor_sdk"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Draft in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Draft
    #'
    #' @param input_json the JSON input
    #' @return the instance of Draft
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`paymentMethod` <- this_object$`paymentMethod`
      self$`expirationInSeconds` <- DraftExpirationInSeconds$new()$fromJSON(jsonlite::toJSON(this_object$`expirationInSeconds`, auto_unbox = TRUE, digits = NA))
      self$`availablePaymentMethods` <- ApiClient$new()$deserializeObj(this_object$`availablePaymentMethods`, "array[DraftAvailablePaymentMethodsInner]", loadNamespace("payconductor_sdk"))
      self
    },

    #' @description
    #' Validate JSON input with respect to Draft and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `paymentMethod`
      if (!is.null(input_json$`paymentMethod`)) {
        if (!(is.character(input_json$`paymentMethod`) && length(input_json$`paymentMethod`) == 1)) {
          stop(paste("Error! Invalid data for `paymentMethod`. Must be a string:", input_json$`paymentMethod`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Draft: the required field `paymentMethod` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Draft
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `paymentMethod` is null
      if (is.null(self$`paymentMethod`)) {
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
      # check if the required `paymentMethod` is null
      if (is.null(self$`paymentMethod`)) {
        invalid_fields["paymentMethod"] <- "Non-nullable required field `paymentMethod` cannot be null."
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
# Draft$unlock()
#
## Below is an example to define the print function
# Draft$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Draft$lock()

