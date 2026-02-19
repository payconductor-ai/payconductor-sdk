#' Create a new TokenizedCard
#'
#' @description
#' TokenizedCard Class
#'
#' @docType class
#' @title TokenizedCard
#' @description TokenizedCard Class
#' @format An \code{R6Class} generator object
#' @field firstSixCardNumber First 6 digits of the credit card character [optional]
#' @field token Previously generated credit card token character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TokenizedCard <- R6::R6Class(
  "TokenizedCard",
  public = list(
    `firstSixCardNumber` = NULL,
    `token` = NULL,

    #' @description
    #' Initialize a new TokenizedCard class.
    #'
    #' @param token Previously generated credit card token
    #' @param firstSixCardNumber First 6 digits of the credit card
    #' @param ... Other optional arguments.
    initialize = function(`token`, `firstSixCardNumber` = NULL, ...) {
      if (!missing(`token`)) {
        if (!(is.character(`token`) && length(`token`) == 1)) {
          stop(paste("Error! Invalid data for `token`. Must be a string:", `token`))
        }
        self$`token` <- `token`
      }
      if (!is.null(`firstSixCardNumber`)) {
        if (!(is.character(`firstSixCardNumber`) && length(`firstSixCardNumber`) == 1)) {
          stop(paste("Error! Invalid data for `firstSixCardNumber`. Must be a string:", `firstSixCardNumber`))
        }
        self$`firstSixCardNumber` <- `firstSixCardNumber`
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
    #' @return TokenizedCard as a base R list.
    #' @examples
    #' # convert array of TokenizedCard (x) to a data frame
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
    #' Convert TokenizedCard to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TokenizedCardObject <- list()
      if (!is.null(self$`firstSixCardNumber`)) {
        TokenizedCardObject[["firstSixCardNumber"]] <-
          self$`firstSixCardNumber`
      }
      if (!is.null(self$`token`)) {
        TokenizedCardObject[["token"]] <-
          self$`token`
      }
      return(TokenizedCardObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of TokenizedCard
    #'
    #' @param input_json the JSON input
    #' @return the instance of TokenizedCard
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`firstSixCardNumber`)) {
        self$`firstSixCardNumber` <- this_object$`firstSixCardNumber`
      }
      if (!is.null(this_object$`token`)) {
        self$`token` <- this_object$`token`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TokenizedCard in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TokenizedCard
    #'
    #' @param input_json the JSON input
    #' @return the instance of TokenizedCard
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`firstSixCardNumber` <- this_object$`firstSixCardNumber`
      self$`token` <- this_object$`token`
      self
    },

    #' @description
    #' Validate JSON input with respect to TokenizedCard and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `token`
      if (!is.null(input_json$`token`)) {
        if (!(is.character(input_json$`token`) && length(input_json$`token`) == 1)) {
          stop(paste("Error! Invalid data for `token`. Must be a string:", input_json$`token`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TokenizedCard: the required field `token` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TokenizedCard
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `token` is null
      if (is.null(self$`token`)) {
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
      # check if the required `token` is null
      if (is.null(self$`token`)) {
        invalid_fields["token"] <- "Non-nullable required field `token` cannot be null."
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
# TokenizedCard$unlock()
#
## Below is an example to define the print function
# TokenizedCard$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TokenizedCard$lock()

