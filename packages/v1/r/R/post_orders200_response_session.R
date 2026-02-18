#' Create a new PostOrders200ResponseSession
#'
#' @description
#' PostOrders200ResponseSession Class
#'
#' @docType class
#' @title PostOrders200ResponseSession
#' @description PostOrders200ResponseSession Class
#' @format An \code{R6Class} generator object
#' @field sessionId ID of the checkout session associated with the order character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PostOrders200ResponseSession <- R6::R6Class(
  "PostOrders200ResponseSession",
  public = list(
    `sessionId` = NULL,

    #' @description
    #' Initialize a new PostOrders200ResponseSession class.
    #'
    #' @param sessionId ID of the checkout session associated with the order
    #' @param ... Other optional arguments.
    initialize = function(`sessionId`, ...) {
      if (!missing(`sessionId`)) {
        if (!(is.character(`sessionId`) && length(`sessionId`) == 1)) {
          stop(paste("Error! Invalid data for `sessionId`. Must be a string:", `sessionId`))
        }
        self$`sessionId` <- `sessionId`
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
    #' @return PostOrders200ResponseSession as a base R list.
    #' @examples
    #' # convert array of PostOrders200ResponseSession (x) to a data frame
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
    #' Convert PostOrders200ResponseSession to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PostOrders200ResponseSessionObject <- list()
      if (!is.null(self$`sessionId`)) {
        PostOrders200ResponseSessionObject[["sessionId"]] <-
          self$`sessionId`
      }
      return(PostOrders200ResponseSessionObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PostOrders200ResponseSession
    #'
    #' @param input_json the JSON input
    #' @return the instance of PostOrders200ResponseSession
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`sessionId`)) {
        self$`sessionId` <- this_object$`sessionId`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PostOrders200ResponseSession in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PostOrders200ResponseSession
    #'
    #' @param input_json the JSON input
    #' @return the instance of PostOrders200ResponseSession
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`sessionId` <- this_object$`sessionId`
      self
    },

    #' @description
    #' Validate JSON input with respect to PostOrders200ResponseSession and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `sessionId`
      if (!is.null(input_json$`sessionId`)) {
        if (!(is.character(input_json$`sessionId`) && length(input_json$`sessionId`) == 1)) {
          stop(paste("Error! Invalid data for `sessionId`. Must be a string:", input_json$`sessionId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostOrders200ResponseSession: the required field `sessionId` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PostOrders200ResponseSession
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `sessionId` is null
      if (is.null(self$`sessionId`)) {
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
      # check if the required `sessionId` is null
      if (is.null(self$`sessionId`)) {
        invalid_fields["sessionId"] <- "Non-nullable required field `sessionId` cannot be null."
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
# PostOrders200ResponseSession$unlock()
#
## Below is an example to define the print function
# PostOrders200ResponseSession$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PostOrders200ResponseSession$lock()

