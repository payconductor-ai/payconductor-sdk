#' Create a new MerchantInput
#'
#' @description
#' Merchant data for order or withdrawal
#'
#' @docType class
#' @title MerchantInput
#' @description MerchantInput Class
#' @format An \code{R6Class} generator object
#' @field document Merchant CPF or CNPJ without formatting character
#' @field email Merchant email character
#' @field name Merchant name character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MerchantInput <- R6::R6Class(
  "MerchantInput",
  public = list(
    `document` = NULL,
    `email` = NULL,
    `name` = NULL,

    #' @description
    #' Initialize a new MerchantInput class.
    #'
    #' @param document Merchant CPF or CNPJ without formatting
    #' @param email Merchant email
    #' @param name Merchant name
    #' @param ... Other optional arguments.
    initialize = function(`document`, `email`, `name`, ...) {
      if (!missing(`document`)) {
        if (!(is.character(`document`) && length(`document`) == 1)) {
          stop(paste("Error! Invalid data for `document`. Must be a string:", `document`))
        }
        self$`document` <- `document`
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
    #' @return MerchantInput as a base R list.
    #' @examples
    #' # convert array of MerchantInput (x) to a data frame
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
    #' Convert MerchantInput to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      MerchantInputObject <- list()
      if (!is.null(self$`document`)) {
        MerchantInputObject[["document"]] <-
          self$`document`
      }
      if (!is.null(self$`email`)) {
        MerchantInputObject[["email"]] <-
          self$`email`
      }
      if (!is.null(self$`name`)) {
        MerchantInputObject[["name"]] <-
          self$`name`
      }
      return(MerchantInputObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of MerchantInput
    #'
    #' @param input_json the JSON input
    #' @return the instance of MerchantInput
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`document`)) {
        self$`document` <- this_object$`document`
      }
      if (!is.null(this_object$`email`)) {
        self$`email` <- this_object$`email`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return MerchantInput in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of MerchantInput
    #'
    #' @param input_json the JSON input
    #' @return the instance of MerchantInput
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`document` <- this_object$`document`
      self$`email` <- this_object$`email`
      self$`name` <- this_object$`name`
      self
    },

    #' @description
    #' Validate JSON input with respect to MerchantInput and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `document`
      if (!is.null(input_json$`document`)) {
        if (!(is.character(input_json$`document`) && length(input_json$`document`) == 1)) {
          stop(paste("Error! Invalid data for `document`. Must be a string:", input_json$`document`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MerchantInput: the required field `document` is missing."))
      }
      # check the required field `email`
      if (!is.null(input_json$`email`)) {
        if (!(is.character(input_json$`email`) && length(input_json$`email`) == 1)) {
          stop(paste("Error! Invalid data for `email`. Must be a string:", input_json$`email`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MerchantInput: the required field `email` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MerchantInput: the required field `name` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of MerchantInput
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `document` is null
      if (is.null(self$`document`)) {
        return(FALSE)
      }

      if (!str_detect(self$`document`, "^\\d{11}$|^\\d{14}$")) {
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

      if (nchar(self$`name`) > 255) {
        return(FALSE)
      }
      if (nchar(self$`name`) < 2) {
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
      # check if the required `document` is null
      if (is.null(self$`document`)) {
        invalid_fields["document"] <- "Non-nullable required field `document` cannot be null."
      }

      if (!str_detect(self$`document`, "^\\d{11}$|^\\d{14}$")) {
        invalid_fields["document"] <- "Invalid value for `document`, must conform to the pattern ^\\d{11}$|^\\d{14}$."
      }

      # check if the required `email` is null
      if (is.null(self$`email`)) {
        invalid_fields["email"] <- "Non-nullable required field `email` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      if (nchar(self$`name`) > 255) {
        invalid_fields["name"] <- "Invalid length for `name`, must be smaller than or equal to 255."
      }
      if (nchar(self$`name`) < 2) {
        invalid_fields["name"] <- "Invalid length for `name`, must be bigger than or equal to 2."
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
# MerchantInput$unlock()
#
## Below is an example to define the print function
# MerchantInput$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MerchantInput$lock()

