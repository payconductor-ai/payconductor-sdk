#' @docType class
#' @title PostCardTokenizationRequestCustomer
#'
#' @description PostCardTokenizationRequestCustomer Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PostCardTokenizationRequestCustomer <- R6::R6Class(
  "PostCardTokenizationRequestCustomer",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field any_of  a list of object types defined in the anyOf schema.
    any_of = list("Customer", "PostCardTokenizationRequestCustomerAnyOf"),

    #' @description
    #' Initialize a new PostCardTokenizationRequestCustomer.
    #'
    #' @param instance an instance of the object defined in the anyOf schemas: "Customer", "PostCardTokenizationRequestCustomerAnyOf"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "Customer") {
        self$actual_instance <- instance
        self$actual_type <- "Customer"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PostCardTokenizationRequestCustomerAnyOf") {
        self$actual_instance <- instance
        self$actual_type <- "PostCardTokenizationRequestCustomerAnyOf"
      } else {
        stop(paste("Failed to initialize PostCardTokenizationRequestCustomer with anyOf schemas Customer, PostCardTokenizationRequestCustomerAnyOf. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of PostCardTokenizationRequestCustomer.
    #' An alias to the method `fromJSON`.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of PostCardTokenizationRequestCustomer.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of PostCardTokenizationRequestCustomer.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of PostCardTokenizationRequestCustomer.
    fromJSON = function(input) {
      error_messages <- list()

      `Customer_result` <- tryCatch({
          `Customer`$public_methods$validateJSON(input)
          `Customer_instance` <- `Customer`$new()
          self$actual_instance <- `Customer_instance`$fromJSON(input)
          self$actual_type <- "Customer"
          return(self)
        },
        error = function(err) err
      )

      if (!is.null(`Customer_result`["error"])) {
        error_messages <- append(error_messages, `Customer_result`["message"])
      }

      `PostCardTokenizationRequestCustomerAnyOf_result` <- tryCatch({
          `PostCardTokenizationRequestCustomerAnyOf`$public_methods$validateJSON(input)
          `PostCardTokenizationRequestCustomerAnyOf_instance` <- `PostCardTokenizationRequestCustomerAnyOf`$new()
          self$actual_instance <- `PostCardTokenizationRequestCustomerAnyOf_instance`$fromJSON(input)
          self$actual_type <- "PostCardTokenizationRequestCustomerAnyOf"
          return(self)
        },
        error = function(err) err
      )

      if (!is.null(`PostCardTokenizationRequestCustomerAnyOf_result`["error"])) {
        error_messages <- append(error_messages, `PostCardTokenizationRequestCustomerAnyOf_result`["message"])
      }

      # no match
      stop(paste("No match found when deserializing the input into PostCardTokenizationRequestCustomer with anyOf schemas Customer, PostCardTokenizationRequestCustomerAnyOf. Details: >>",
                 paste(error_messages, collapse = " >> ")))
    },

    #' @description
    #' Convert to an R object. This method is deprecated. Use `toSimpleType()` instead.
    toJSON = function() {
      .Deprecated(new = "toSimpleType", msg = "Use the '$toSimpleType()' method instead since that is more clearly named. Use '$toJSONString()' to get a JSON string")
      return(self$toSimpleType())
    },

    #' @description
    #' Convert PostCardTokenizationRequestCustomer to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      if (!is.null(self$actual_instance)) {
        return(self$actual_instance$toSimpleType())
      } else {
        NULL
      }
    },

    #' @description
    #' Serialize PostCardTokenizationRequestCustomer to JSON string.
    #'
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JSON string representation of the PostCardTokenizationRequestCustomer.
    toJSONString = function(...) {
      json <- jsonlite::toJSON(self$toSimpleType(), auto_unbox = TRUE, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Validate the input JSON with respect to PostCardTokenizationRequestCustomer and
    #' throw exception if invalid.
    #'
    #' @param input The input JSON.
    validateJSON = function(input) {
      # backup current values
      actual_instance_bak <- self$actual_instance
      actual_type_bak <- self$actual_type

      # if it's not valid, an error will be thrown
      self$fromJSON(input)

      # no error thrown, restore old values
      self$actual_instance <- actual_instance_bak
      self$actual_type <- actual_type_bak
    },

    #' @description
    #' Returns the string representation of the instance.
    #'
    #' @return The string representation of the instance.
    toString = function() {
      jsoncontent <- c(
        sprintf('"actual_instance": %s', if (is.null(self$actual_instance)) NULL else self$actual_instance$toJSONString()),
        sprintf('"actual_type": "%s"', self$actual_type),
        sprintf('"any_of": "%s"', paste(unlist(self$any_of), collapse = ", "))
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      as.character(jsonlite::prettify(paste("{", jsoncontent, "}", sep = "")))
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
#PostCardTokenizationRequestCustomer$unlock()
#
## Below is an example to define the print function
#PostCardTokenizationRequestCustomer$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#PostCardTokenizationRequestCustomer$lock()

