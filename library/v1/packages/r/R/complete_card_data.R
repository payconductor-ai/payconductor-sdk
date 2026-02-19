#' Create a new CompleteCardData
#'
#' @description
#' CompleteCardData Class
#'
#' @docType class
#' @title CompleteCardData
#' @description CompleteCardData Class
#' @format An \code{R6Class} generator object
#' @field cvv Card security code (CVV) character
#' @field expiration  \link{CompleteCardDataExpiration}
#' @field holderName Card holder name character
#' @field number Credit card number character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CompleteCardData <- R6::R6Class(
  "CompleteCardData",
  public = list(
    `cvv` = NULL,
    `expiration` = NULL,
    `holderName` = NULL,
    `number` = NULL,

    #' @description
    #' Initialize a new CompleteCardData class.
    #'
    #' @param cvv Card security code (CVV)
    #' @param expiration expiration
    #' @param holderName Card holder name
    #' @param number Credit card number
    #' @param ... Other optional arguments.
    initialize = function(`cvv`, `expiration`, `holderName`, `number`, ...) {
      if (!missing(`cvv`)) {
        if (!(is.character(`cvv`) && length(`cvv`) == 1)) {
          stop(paste("Error! Invalid data for `cvv`. Must be a string:", `cvv`))
        }
        self$`cvv` <- `cvv`
      }
      if (!missing(`expiration`)) {
        stopifnot(R6::is.R6(`expiration`))
        self$`expiration` <- `expiration`
      }
      if (!missing(`holderName`)) {
        if (!(is.character(`holderName`) && length(`holderName`) == 1)) {
          stop(paste("Error! Invalid data for `holderName`. Must be a string:", `holderName`))
        }
        self$`holderName` <- `holderName`
      }
      if (!missing(`number`)) {
        if (!(is.character(`number`) && length(`number`) == 1)) {
          stop(paste("Error! Invalid data for `number`. Must be a string:", `number`))
        }
        self$`number` <- `number`
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
    #' @return CompleteCardData as a base R list.
    #' @examples
    #' # convert array of CompleteCardData (x) to a data frame
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
    #' Convert CompleteCardData to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CompleteCardDataObject <- list()
      if (!is.null(self$`cvv`)) {
        CompleteCardDataObject[["cvv"]] <-
          self$`cvv`
      }
      if (!is.null(self$`expiration`)) {
        CompleteCardDataObject[["expiration"]] <-
          self$extractSimpleType(self$`expiration`)
      }
      if (!is.null(self$`holderName`)) {
        CompleteCardDataObject[["holderName"]] <-
          self$`holderName`
      }
      if (!is.null(self$`number`)) {
        CompleteCardDataObject[["number"]] <-
          self$`number`
      }
      return(CompleteCardDataObject)
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
    #' Deserialize JSON string into an instance of CompleteCardData
    #'
    #' @param input_json the JSON input
    #' @return the instance of CompleteCardData
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`cvv`)) {
        self$`cvv` <- this_object$`cvv`
      }
      if (!is.null(this_object$`expiration`)) {
        `expiration_object` <- CompleteCardDataExpiration$new()
        `expiration_object`$fromJSON(jsonlite::toJSON(this_object$`expiration`, auto_unbox = TRUE, digits = NA))
        self$`expiration` <- `expiration_object`
      }
      if (!is.null(this_object$`holderName`)) {
        self$`holderName` <- this_object$`holderName`
      }
      if (!is.null(this_object$`number`)) {
        self$`number` <- this_object$`number`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CompleteCardData in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CompleteCardData
    #'
    #' @param input_json the JSON input
    #' @return the instance of CompleteCardData
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`cvv` <- this_object$`cvv`
      self$`expiration` <- CompleteCardDataExpiration$new()$fromJSON(jsonlite::toJSON(this_object$`expiration`, auto_unbox = TRUE, digits = NA))
      self$`holderName` <- this_object$`holderName`
      self$`number` <- this_object$`number`
      self
    },

    #' @description
    #' Validate JSON input with respect to CompleteCardData and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `cvv`
      if (!is.null(input_json$`cvv`)) {
        if (!(is.character(input_json$`cvv`) && length(input_json$`cvv`) == 1)) {
          stop(paste("Error! Invalid data for `cvv`. Must be a string:", input_json$`cvv`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CompleteCardData: the required field `cvv` is missing."))
      }
      # check the required field `expiration`
      if (!is.null(input_json$`expiration`)) {
        stopifnot(R6::is.R6(input_json$`expiration`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CompleteCardData: the required field `expiration` is missing."))
      }
      # check the required field `holderName`
      if (!is.null(input_json$`holderName`)) {
        if (!(is.character(input_json$`holderName`) && length(input_json$`holderName`) == 1)) {
          stop(paste("Error! Invalid data for `holderName`. Must be a string:", input_json$`holderName`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CompleteCardData: the required field `holderName` is missing."))
      }
      # check the required field `number`
      if (!is.null(input_json$`number`)) {
        if (!(is.character(input_json$`number`) && length(input_json$`number`) == 1)) {
          stop(paste("Error! Invalid data for `number`. Must be a string:", input_json$`number`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CompleteCardData: the required field `number` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CompleteCardData
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `cvv` is null
      if (is.null(self$`cvv`)) {
        return(FALSE)
      }

      if (nchar(self$`cvv`) > 4) {
        return(FALSE)
      }
      if (nchar(self$`cvv`) < 3) {
        return(FALSE)
      }

      # check if the required `expiration` is null
      if (is.null(self$`expiration`)) {
        return(FALSE)
      }

      # check if the required `holderName` is null
      if (is.null(self$`holderName`)) {
        return(FALSE)
      }

      # check if the required `number` is null
      if (is.null(self$`number`)) {
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
      # check if the required `cvv` is null
      if (is.null(self$`cvv`)) {
        invalid_fields["cvv"] <- "Non-nullable required field `cvv` cannot be null."
      }

      if (nchar(self$`cvv`) > 4) {
        invalid_fields["cvv"] <- "Invalid length for `cvv`, must be smaller than or equal to 4."
      }
      if (nchar(self$`cvv`) < 3) {
        invalid_fields["cvv"] <- "Invalid length for `cvv`, must be bigger than or equal to 3."
      }

      # check if the required `expiration` is null
      if (is.null(self$`expiration`)) {
        invalid_fields["expiration"] <- "Non-nullable required field `expiration` cannot be null."
      }

      # check if the required `holderName` is null
      if (is.null(self$`holderName`)) {
        invalid_fields["holderName"] <- "Non-nullable required field `holderName` cannot be null."
      }

      # check if the required `number` is null
      if (is.null(self$`number`)) {
        invalid_fields["number"] <- "Non-nullable required field `number` cannot be null."
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
# CompleteCardData$unlock()
#
## Below is an example to define the print function
# CompleteCardData$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CompleteCardData$lock()

