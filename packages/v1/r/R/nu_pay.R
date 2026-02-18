#' Create a new NuPay
#'
#' @description
#' NuPay Class
#'
#' @docType class
#' @title NuPay
#' @description NuPay Class
#' @format An \code{R6Class} generator object
#' @field paymentMethod  character
#' @field nuPay  \link{NuPayNuPay}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
NuPay <- R6::R6Class(
  "NuPay",
  public = list(
    `paymentMethod` = NULL,
    `nuPay` = NULL,

    #' @description
    #' Initialize a new NuPay class.
    #'
    #' @param paymentMethod paymentMethod
    #' @param nuPay nuPay
    #' @param ... Other optional arguments.
    initialize = function(`paymentMethod`, `nuPay`, ...) {
      if (!missing(`paymentMethod`)) {
        if (!(is.character(`paymentMethod`) && length(`paymentMethod`) == 1)) {
          stop(paste("Error! Invalid data for `paymentMethod`. Must be a string:", `paymentMethod`))
        }
        self$`paymentMethod` <- `paymentMethod`
      }
      if (!missing(`nuPay`)) {
        stopifnot(R6::is.R6(`nuPay`))
        self$`nuPay` <- `nuPay`
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
    #' @return NuPay as a base R list.
    #' @examples
    #' # convert array of NuPay (x) to a data frame
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
    #' Convert NuPay to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      NuPayObject <- list()
      if (!is.null(self$`paymentMethod`)) {
        NuPayObject[["paymentMethod"]] <-
          self$`paymentMethod`
      }
      if (!is.null(self$`nuPay`)) {
        NuPayObject[["nuPay"]] <-
          self$extractSimpleType(self$`nuPay`)
      }
      return(NuPayObject)
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
    #' Deserialize JSON string into an instance of NuPay
    #'
    #' @param input_json the JSON input
    #' @return the instance of NuPay
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`paymentMethod`)) {
        self$`paymentMethod` <- this_object$`paymentMethod`
      }
      if (!is.null(this_object$`nuPay`)) {
        `nupay_object` <- NuPayNuPay$new()
        `nupay_object`$fromJSON(jsonlite::toJSON(this_object$`nuPay`, auto_unbox = TRUE, digits = NA))
        self$`nuPay` <- `nupay_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return NuPay in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of NuPay
    #'
    #' @param input_json the JSON input
    #' @return the instance of NuPay
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`paymentMethod` <- this_object$`paymentMethod`
      self$`nuPay` <- NuPayNuPay$new()$fromJSON(jsonlite::toJSON(this_object$`nuPay`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to NuPay and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for NuPay: the required field `paymentMethod` is missing."))
      }
      # check the required field `nuPay`
      if (!is.null(input_json$`nuPay`)) {
        stopifnot(R6::is.R6(input_json$`nuPay`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for NuPay: the required field `nuPay` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of NuPay
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

      # check if the required `nuPay` is null
      if (is.null(self$`nuPay`)) {
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

      # check if the required `nuPay` is null
      if (is.null(self$`nuPay`)) {
        invalid_fields["nuPay"] <- "Non-nullable required field `nuPay` cannot be null."
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
# NuPay$unlock()
#
## Below is an example to define the print function
# NuPay$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# NuPay$lock()

