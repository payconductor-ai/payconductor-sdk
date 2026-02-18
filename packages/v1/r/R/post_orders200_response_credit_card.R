#' Create a new PostOrders200ResponseCreditCard
#'
#' @description
#' PostOrders200ResponseCreditCard Class
#'
#' @docType class
#' @title PostOrders200ResponseCreditCard
#' @description PostOrders200ResponseCreditCard Class
#' @format An \code{R6Class} generator object
#' @field authorizationCode Transaction authorization code character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PostOrders200ResponseCreditCard <- R6::R6Class(
  "PostOrders200ResponseCreditCard",
  public = list(
    `authorizationCode` = NULL,

    #' @description
    #' Initialize a new PostOrders200ResponseCreditCard class.
    #'
    #' @param authorizationCode Transaction authorization code
    #' @param ... Other optional arguments.
    initialize = function(`authorizationCode` = NULL, ...) {
      if (!is.null(`authorizationCode`)) {
        if (!(is.character(`authorizationCode`) && length(`authorizationCode`) == 1)) {
          stop(paste("Error! Invalid data for `authorizationCode`. Must be a string:", `authorizationCode`))
        }
        self$`authorizationCode` <- `authorizationCode`
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
    #' @return PostOrders200ResponseCreditCard as a base R list.
    #' @examples
    #' # convert array of PostOrders200ResponseCreditCard (x) to a data frame
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
    #' Convert PostOrders200ResponseCreditCard to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PostOrders200ResponseCreditCardObject <- list()
      if (!is.null(self$`authorizationCode`)) {
        PostOrders200ResponseCreditCardObject[["authorizationCode"]] <-
          self$`authorizationCode`
      }
      return(PostOrders200ResponseCreditCardObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PostOrders200ResponseCreditCard
    #'
    #' @param input_json the JSON input
    #' @return the instance of PostOrders200ResponseCreditCard
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`authorizationCode`)) {
        self$`authorizationCode` <- this_object$`authorizationCode`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PostOrders200ResponseCreditCard in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PostOrders200ResponseCreditCard
    #'
    #' @param input_json the JSON input
    #' @return the instance of PostOrders200ResponseCreditCard
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`authorizationCode` <- this_object$`authorizationCode`
      self
    },

    #' @description
    #' Validate JSON input with respect to PostOrders200ResponseCreditCard and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PostOrders200ResponseCreditCard
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
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
# PostOrders200ResponseCreditCard$unlock()
#
## Below is an example to define the print function
# PostOrders200ResponseCreditCard$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PostOrders200ResponseCreditCard$lock()

