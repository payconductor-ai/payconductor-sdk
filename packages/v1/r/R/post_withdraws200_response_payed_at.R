#' @docType class
#' @title PostWithdraws200ResponsePayedAt
#'
#' @description PostWithdraws200ResponsePayedAt Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PostWithdraws200ResponsePayedAt <- R6::R6Class(
  "PostWithdraws200ResponsePayedAt",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field any_of  a list of object types defined in the anyOf schema.
    any_of = list("Date", "character", "numeric"),

    #' @description
    #' Initialize a new PostWithdraws200ResponsePayedAt.
    #'
    #' @param instance an instance of the object defined in the anyOf schemas: "Date", "character", "numeric"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "Date") {
        self$actual_instance <- instance
        self$actual_type <- "Date"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "character") {
        self$actual_instance <- instance
        self$actual_type <- "character"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "numeric") {
        self$actual_instance <- instance
        self$actual_type <- "numeric"
      } else {
        stop(paste("Failed to initialize PostWithdraws200ResponsePayedAt with anyOf schemas Date, character, numeric. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of PostWithdraws200ResponsePayedAt.
    #' An alias to the method `fromJSON`.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of PostWithdraws200ResponsePayedAt.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of PostWithdraws200ResponsePayedAt.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of PostWithdraws200ResponsePayedAt.
    fromJSON = function(input) {
      error_messages <- list()

      `Date_result` <- tryCatch({
          `Date`$public_methods$validateJSON(input)
          `Date_instance` <- `Date`$new()
          self$actual_instance <- `Date_instance`$fromJSON(input)
          self$actual_type <- "Date"
          return(self)
        },
        error = function(err) err
      )

      if (!is.null(`Date_result`["error"])) {
        error_messages <- append(error_messages, `Date_result`["message"])
      }

      `character_result` <- tryCatch({
          instance <- jsonlite::fromJSON(input, simplifyVector = FALSE)
          if (typeof(instance) != "character") {
            stop(sprintf("Data type doesn't match. Expected: %s. Actual: %s.", "character", typeof(instance)))
          }
          self$actual_instance <- `character_instance`$fromJSON(input)
          self$actual_type <- "character"
          return(self)
        },
        error = function(err) err
      )

      if (!is.null(`character_result`["error"])) {
        error_messages <- append(error_messages, `character_result`["message"])
      }

      `character_result` <- tryCatch({
          instance <- jsonlite::fromJSON(input, simplifyVector = FALSE)
          if (typeof(instance) != "character") {
            stop(sprintf("Data type doesn't match. Expected: %s. Actual: %s.", "character", typeof(instance)))
          }
          self$actual_instance <- `character_instance`$fromJSON(input)
          self$actual_type <- "character"
          return(self)
        },
        error = function(err) err
      )

      if (!is.null(`character_result`["error"])) {
        error_messages <- append(error_messages, `character_result`["message"])
      }

      `numeric_result` <- tryCatch({
          instance <- jsonlite::fromJSON(input, simplifyVector = FALSE)
          if (typeof(instance) != "numeric") {
            stop(sprintf("Data type doesn't match. Expected: %s. Actual: %s.", "numeric", typeof(instance)))
          }
          self$actual_instance <- `numeric_instance`$fromJSON(input)
          self$actual_type <- "numeric"
          return(self)
        },
        error = function(err) err
      )

      if (!is.null(`numeric_result`["error"])) {
        error_messages <- append(error_messages, `numeric_result`["message"])
      }

      # no match
      stop(paste("No match found when deserializing the input into PostWithdraws200ResponsePayedAt with anyOf schemas Date, character, numeric. Details: >>",
                 paste(error_messages, collapse = " >> ")))
    },

    #' @description
    #' Convert to an R object. This method is deprecated. Use `toSimpleType()` instead.
    toJSON = function() {
      .Deprecated(new = "toSimpleType", msg = "Use the '$toSimpleType()' method instead since that is more clearly named. Use '$toJSONString()' to get a JSON string")
      return(self$toSimpleType())
    },

    #' @description
    #' Convert PostWithdraws200ResponsePayedAt to a base R type
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
    #' Serialize PostWithdraws200ResponsePayedAt to JSON string.
    #'
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JSON string representation of the PostWithdraws200ResponsePayedAt.
    toJSONString = function(...) {
      json <- jsonlite::toJSON(self$toSimpleType(), auto_unbox = TRUE, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Validate the input JSON with respect to PostWithdraws200ResponsePayedAt and
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
#PostWithdraws200ResponsePayedAt$unlock()
#
## Below is an example to define the print function
#PostWithdraws200ResponsePayedAt$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#PostWithdraws200ResponsePayedAt$lock()

