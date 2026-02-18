#' Create a new CompleteCardDataExpiration
#'
#' @description
#' CompleteCardDataExpiration Class
#'
#' @docType class
#' @title CompleteCardDataExpiration
#' @description CompleteCardDataExpiration Class
#' @format An \code{R6Class} generator object
#' @field month Card expiration month numeric
#' @field year Card expiration year numeric
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CompleteCardDataExpiration <- R6::R6Class(
  "CompleteCardDataExpiration",
  public = list(
    `month` = NULL,
    `year` = NULL,

    #' @description
    #' Initialize a new CompleteCardDataExpiration class.
    #'
    #' @param month Card expiration month
    #' @param year Card expiration year
    #' @param ... Other optional arguments.
    initialize = function(`month`, `year`, ...) {
      if (!missing(`month`)) {
        self$`month` <- `month`
      }
      if (!missing(`year`)) {
        self$`year` <- `year`
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
    #' @return CompleteCardDataExpiration as a base R list.
    #' @examples
    #' # convert array of CompleteCardDataExpiration (x) to a data frame
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
    #' Convert CompleteCardDataExpiration to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CompleteCardDataExpirationObject <- list()
      if (!is.null(self$`month`)) {
        CompleteCardDataExpirationObject[["month"]] <-
          self$`month`
      }
      if (!is.null(self$`year`)) {
        CompleteCardDataExpirationObject[["year"]] <-
          self$`year`
      }
      return(CompleteCardDataExpirationObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CompleteCardDataExpiration
    #'
    #' @param input_json the JSON input
    #' @return the instance of CompleteCardDataExpiration
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`month`)) {
        self$`month` <- this_object$`month`
      }
      if (!is.null(this_object$`year`)) {
        self$`year` <- this_object$`year`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CompleteCardDataExpiration in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CompleteCardDataExpiration
    #'
    #' @param input_json the JSON input
    #' @return the instance of CompleteCardDataExpiration
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`month` <- this_object$`month`
      self$`year` <- this_object$`year`
      self
    },

    #' @description
    #' Validate JSON input with respect to CompleteCardDataExpiration and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `month`
      if (!is.null(input_json$`month`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CompleteCardDataExpiration: the required field `month` is missing."))
      }
      # check the required field `year`
      if (!is.null(input_json$`year`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CompleteCardDataExpiration: the required field `year` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CompleteCardDataExpiration
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `month` is null
      if (is.null(self$`month`)) {
        return(FALSE)
      }

      if (self$`month` > 12) {
        return(FALSE)
      }
      if (self$`month` < 1) {
        return(FALSE)
      }

      # check if the required `year` is null
      if (is.null(self$`year`)) {
        return(FALSE)
      }

      if (self$`year` > 2046) {
        return(FALSE)
      }
      if (self$`year` < 2025) {
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
      # check if the required `month` is null
      if (is.null(self$`month`)) {
        invalid_fields["month"] <- "Non-nullable required field `month` cannot be null."
      }

      if (self$`month` > 12) {
        invalid_fields["month"] <- "Invalid value for `month`, must be smaller than or equal to 12."
      }
      if (self$`month` < 1) {
        invalid_fields["month"] <- "Invalid value for `month`, must be bigger than or equal to 1."
      }

      # check if the required `year` is null
      if (is.null(self$`year`)) {
        invalid_fields["year"] <- "Non-nullable required field `year` cannot be null."
      }

      if (self$`year` > 2046) {
        invalid_fields["year"] <- "Invalid value for `year`, must be smaller than or equal to 2046."
      }
      if (self$`year` < 2025) {
        invalid_fields["year"] <- "Invalid value for `year`, must be bigger than or equal to 2025."
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
# CompleteCardDataExpiration$unlock()
#
## Below is an example to define the print function
# CompleteCardDataExpiration$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CompleteCardDataExpiration$lock()

