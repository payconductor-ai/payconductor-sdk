#' Create a new Pix
#'
#' @description
#' Pix Class
#'
#' @docType class
#' @title Pix
#' @description Pix Class
#' @format An \code{R6Class} generator object
#' @field paymentMethod  character
#' @field expirationInSeconds  \link{PixExpirationInSeconds} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Pix <- R6::R6Class(
  "Pix",
  public = list(
    `paymentMethod` = NULL,
    `expirationInSeconds` = NULL,

    #' @description
    #' Initialize a new Pix class.
    #'
    #' @param paymentMethod paymentMethod
    #' @param expirationInSeconds expirationInSeconds
    #' @param ... Other optional arguments.
    initialize = function(`paymentMethod`, `expirationInSeconds` = NULL, ...) {
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
    #' @return Pix as a base R list.
    #' @examples
    #' # convert array of Pix (x) to a data frame
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
    #' Convert Pix to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PixObject <- list()
      if (!is.null(self$`paymentMethod`)) {
        PixObject[["paymentMethod"]] <-
          self$`paymentMethod`
      }
      if (!is.null(self$`expirationInSeconds`)) {
        PixObject[["expirationInSeconds"]] <-
          self$extractSimpleType(self$`expirationInSeconds`)
      }
      return(PixObject)
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
    #' Deserialize JSON string into an instance of Pix
    #'
    #' @param input_json the JSON input
    #' @return the instance of Pix
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`paymentMethod`)) {
        self$`paymentMethod` <- this_object$`paymentMethod`
      }
      if (!is.null(this_object$`expirationInSeconds`)) {
        `expirationinseconds_object` <- PixExpirationInSeconds$new()
        `expirationinseconds_object`$fromJSON(jsonlite::toJSON(this_object$`expirationInSeconds`, auto_unbox = TRUE, digits = NA))
        self$`expirationInSeconds` <- `expirationinseconds_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Pix in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Pix
    #'
    #' @param input_json the JSON input
    #' @return the instance of Pix
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`paymentMethod` <- this_object$`paymentMethod`
      self$`expirationInSeconds` <- PixExpirationInSeconds$new()$fromJSON(jsonlite::toJSON(this_object$`expirationInSeconds`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to Pix and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for Pix: the required field `paymentMethod` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Pix
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
# Pix$unlock()
#
## Below is an example to define the print function
# Pix$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Pix$lock()

