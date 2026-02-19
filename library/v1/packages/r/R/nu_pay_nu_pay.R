#' Create a new NuPayNuPay
#'
#' @description
#' Specific data for NuPay payment
#'
#' @docType class
#' @title NuPayNuPay
#' @description NuPayNuPay Class
#' @format An \code{R6Class} generator object
#' @field cancelUrl Payment cancellation URL character
#' @field merchantName Merchant name character
#' @field returnUrl Return URL after payment completion character
#' @field storeName Store name character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
NuPayNuPay <- R6::R6Class(
  "NuPayNuPay",
  public = list(
    `cancelUrl` = NULL,
    `merchantName` = NULL,
    `returnUrl` = NULL,
    `storeName` = NULL,

    #' @description
    #' Initialize a new NuPayNuPay class.
    #'
    #' @param cancelUrl Payment cancellation URL
    #' @param merchantName Merchant name
    #' @param returnUrl Return URL after payment completion
    #' @param storeName Store name
    #' @param ... Other optional arguments.
    initialize = function(`cancelUrl`, `merchantName`, `returnUrl`, `storeName` = NULL, ...) {
      if (!missing(`cancelUrl`)) {
        if (!(is.character(`cancelUrl`) && length(`cancelUrl`) == 1)) {
          stop(paste("Error! Invalid data for `cancelUrl`. Must be a string:", `cancelUrl`))
        }
        self$`cancelUrl` <- `cancelUrl`
      }
      if (!missing(`merchantName`)) {
        if (!(is.character(`merchantName`) && length(`merchantName`) == 1)) {
          stop(paste("Error! Invalid data for `merchantName`. Must be a string:", `merchantName`))
        }
        self$`merchantName` <- `merchantName`
      }
      if (!missing(`returnUrl`)) {
        if (!(is.character(`returnUrl`) && length(`returnUrl`) == 1)) {
          stop(paste("Error! Invalid data for `returnUrl`. Must be a string:", `returnUrl`))
        }
        self$`returnUrl` <- `returnUrl`
      }
      if (!is.null(`storeName`)) {
        if (!(is.character(`storeName`) && length(`storeName`) == 1)) {
          stop(paste("Error! Invalid data for `storeName`. Must be a string:", `storeName`))
        }
        self$`storeName` <- `storeName`
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
    #' @return NuPayNuPay as a base R list.
    #' @examples
    #' # convert array of NuPayNuPay (x) to a data frame
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
    #' Convert NuPayNuPay to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      NuPayNuPayObject <- list()
      if (!is.null(self$`cancelUrl`)) {
        NuPayNuPayObject[["cancelUrl"]] <-
          self$`cancelUrl`
      }
      if (!is.null(self$`merchantName`)) {
        NuPayNuPayObject[["merchantName"]] <-
          self$`merchantName`
      }
      if (!is.null(self$`returnUrl`)) {
        NuPayNuPayObject[["returnUrl"]] <-
          self$`returnUrl`
      }
      if (!is.null(self$`storeName`)) {
        NuPayNuPayObject[["storeName"]] <-
          self$`storeName`
      }
      return(NuPayNuPayObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of NuPayNuPay
    #'
    #' @param input_json the JSON input
    #' @return the instance of NuPayNuPay
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`cancelUrl`)) {
        self$`cancelUrl` <- this_object$`cancelUrl`
      }
      if (!is.null(this_object$`merchantName`)) {
        self$`merchantName` <- this_object$`merchantName`
      }
      if (!is.null(this_object$`returnUrl`)) {
        self$`returnUrl` <- this_object$`returnUrl`
      }
      if (!is.null(this_object$`storeName`)) {
        self$`storeName` <- this_object$`storeName`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return NuPayNuPay in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of NuPayNuPay
    #'
    #' @param input_json the JSON input
    #' @return the instance of NuPayNuPay
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`cancelUrl` <- this_object$`cancelUrl`
      self$`merchantName` <- this_object$`merchantName`
      self$`returnUrl` <- this_object$`returnUrl`
      self$`storeName` <- this_object$`storeName`
      self
    },

    #' @description
    #' Validate JSON input with respect to NuPayNuPay and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `cancelUrl`
      if (!is.null(input_json$`cancelUrl`)) {
        if (!(is.character(input_json$`cancelUrl`) && length(input_json$`cancelUrl`) == 1)) {
          stop(paste("Error! Invalid data for `cancelUrl`. Must be a string:", input_json$`cancelUrl`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for NuPayNuPay: the required field `cancelUrl` is missing."))
      }
      # check the required field `merchantName`
      if (!is.null(input_json$`merchantName`)) {
        if (!(is.character(input_json$`merchantName`) && length(input_json$`merchantName`) == 1)) {
          stop(paste("Error! Invalid data for `merchantName`. Must be a string:", input_json$`merchantName`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for NuPayNuPay: the required field `merchantName` is missing."))
      }
      # check the required field `returnUrl`
      if (!is.null(input_json$`returnUrl`)) {
        if (!(is.character(input_json$`returnUrl`) && length(input_json$`returnUrl`) == 1)) {
          stop(paste("Error! Invalid data for `returnUrl`. Must be a string:", input_json$`returnUrl`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for NuPayNuPay: the required field `returnUrl` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of NuPayNuPay
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `cancelUrl` is null
      if (is.null(self$`cancelUrl`)) {
        return(FALSE)
      }

      # check if the required `merchantName` is null
      if (is.null(self$`merchantName`)) {
        return(FALSE)
      }

      # check if the required `returnUrl` is null
      if (is.null(self$`returnUrl`)) {
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
      # check if the required `cancelUrl` is null
      if (is.null(self$`cancelUrl`)) {
        invalid_fields["cancelUrl"] <- "Non-nullable required field `cancelUrl` cannot be null."
      }

      # check if the required `merchantName` is null
      if (is.null(self$`merchantName`)) {
        invalid_fields["merchantName"] <- "Non-nullable required field `merchantName` cannot be null."
      }

      # check if the required `returnUrl` is null
      if (is.null(self$`returnUrl`)) {
        invalid_fields["returnUrl"] <- "Non-nullable required field `returnUrl` cannot be null."
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
# NuPayNuPay$unlock()
#
## Below is an example to define the print function
# NuPayNuPay$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# NuPayNuPay$lock()

