#' Create a new BankSlip
#'
#' @description
#' BankSlip Class
#'
#' @docType class
#' @title BankSlip
#' @description BankSlip Class
#' @format An \code{R6Class} generator object
#' @field paymentMethod  \link{PaymentMethod}
#' @field expirationInDays  \link{BankSlipExpirationInDays} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BankSlip <- R6::R6Class(
  "BankSlip",
  public = list(
    `paymentMethod` = NULL,
    `expirationInDays` = NULL,

    #' @description
    #' Initialize a new BankSlip class.
    #'
    #' @param paymentMethod paymentMethod
    #' @param expirationInDays expirationInDays
    #' @param ... Other optional arguments.
    initialize = function(`paymentMethod`, `expirationInDays` = NULL, ...) {
      if (!missing(`paymentMethod`)) {
        if (!(`paymentMethod` %in% c())) {
          stop(paste("Error! \"", `paymentMethod`, "\" cannot be assigned to `paymentMethod`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`paymentMethod`))
        self$`paymentMethod` <- `paymentMethod`
      }
      if (!is.null(`expirationInDays`)) {
        stopifnot(R6::is.R6(`expirationInDays`))
        self$`expirationInDays` <- `expirationInDays`
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
    #' @return BankSlip as a base R list.
    #' @examples
    #' # convert array of BankSlip (x) to a data frame
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
    #' Convert BankSlip to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BankSlipObject <- list()
      if (!is.null(self$`paymentMethod`)) {
        BankSlipObject[["paymentMethod"]] <-
          self$extractSimpleType(self$`paymentMethod`)
      }
      if (!is.null(self$`expirationInDays`)) {
        BankSlipObject[["expirationInDays"]] <-
          self$extractSimpleType(self$`expirationInDays`)
      }
      return(BankSlipObject)
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
    #' Deserialize JSON string into an instance of BankSlip
    #'
    #' @param input_json the JSON input
    #' @return the instance of BankSlip
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`paymentMethod`)) {
        `paymentmethod_object` <- PaymentMethod$new()
        `paymentmethod_object`$fromJSON(jsonlite::toJSON(this_object$`paymentMethod`, auto_unbox = TRUE, digits = NA))
        self$`paymentMethod` <- `paymentmethod_object`
      }
      if (!is.null(this_object$`expirationInDays`)) {
        `expirationindays_object` <- BankSlipExpirationInDays$new()
        `expirationindays_object`$fromJSON(jsonlite::toJSON(this_object$`expirationInDays`, auto_unbox = TRUE, digits = NA))
        self$`expirationInDays` <- `expirationindays_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return BankSlip in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BankSlip
    #'
    #' @param input_json the JSON input
    #' @return the instance of BankSlip
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`paymentMethod` <- PaymentMethod$new()$fromJSON(jsonlite::toJSON(this_object$`paymentMethod`, auto_unbox = TRUE, digits = NA))
      self$`expirationInDays` <- BankSlipExpirationInDays$new()$fromJSON(jsonlite::toJSON(this_object$`expirationInDays`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to BankSlip and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `paymentMethod`
      if (!is.null(input_json$`paymentMethod`)) {
        stopifnot(R6::is.R6(input_json$`paymentMethod`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BankSlip: the required field `paymentMethod` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BankSlip
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
# BankSlip$unlock()
#
## Below is an example to define the print function
# BankSlip$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BankSlip$lock()

