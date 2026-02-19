#' Create a new CustomerAddress
#'
#' @description
#' Schema for creating a new address
#'
#' @docType class
#' @title CustomerAddress
#' @description CustomerAddress Class
#' @format An \code{R6Class} generator object
#' @field city City name character
#' @field country Country code in ISO 3166-1 alpha-2 format character
#' @field neighborhood Neighborhood name character
#' @field number Address number character
#' @field state State code in ISO 3166-2 format character
#' @field street Street name character
#' @field zipCode ZIP code without formatting character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CustomerAddress <- R6::R6Class(
  "CustomerAddress",
  public = list(
    `city` = NULL,
    `country` = NULL,
    `neighborhood` = NULL,
    `number` = NULL,
    `state` = NULL,
    `street` = NULL,
    `zipCode` = NULL,

    #' @description
    #' Initialize a new CustomerAddress class.
    #'
    #' @param city City name
    #' @param country Country code in ISO 3166-1 alpha-2 format
    #' @param neighborhood Neighborhood name
    #' @param number Address number
    #' @param state State code in ISO 3166-2 format
    #' @param street Street name
    #' @param zipCode ZIP code without formatting
    #' @param ... Other optional arguments.
    initialize = function(`city`, `country`, `neighborhood`, `number`, `state`, `street`, `zipCode`, ...) {
      if (!missing(`city`)) {
        if (!(is.character(`city`) && length(`city`) == 1)) {
          stop(paste("Error! Invalid data for `city`. Must be a string:", `city`))
        }
        self$`city` <- `city`
      }
      if (!missing(`country`)) {
        if (!(is.character(`country`) && length(`country`) == 1)) {
          stop(paste("Error! Invalid data for `country`. Must be a string:", `country`))
        }
        self$`country` <- `country`
      }
      if (!missing(`neighborhood`)) {
        if (!(is.character(`neighborhood`) && length(`neighborhood`) == 1)) {
          stop(paste("Error! Invalid data for `neighborhood`. Must be a string:", `neighborhood`))
        }
        self$`neighborhood` <- `neighborhood`
      }
      if (!missing(`number`)) {
        if (!(is.character(`number`) && length(`number`) == 1)) {
          stop(paste("Error! Invalid data for `number`. Must be a string:", `number`))
        }
        self$`number` <- `number`
      }
      if (!missing(`state`)) {
        if (!(is.character(`state`) && length(`state`) == 1)) {
          stop(paste("Error! Invalid data for `state`. Must be a string:", `state`))
        }
        self$`state` <- `state`
      }
      if (!missing(`street`)) {
        if (!(is.character(`street`) && length(`street`) == 1)) {
          stop(paste("Error! Invalid data for `street`. Must be a string:", `street`))
        }
        self$`street` <- `street`
      }
      if (!missing(`zipCode`)) {
        if (!(is.character(`zipCode`) && length(`zipCode`) == 1)) {
          stop(paste("Error! Invalid data for `zipCode`. Must be a string:", `zipCode`))
        }
        self$`zipCode` <- `zipCode`
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
    #' @return CustomerAddress as a base R list.
    #' @examples
    #' # convert array of CustomerAddress (x) to a data frame
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
    #' Convert CustomerAddress to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CustomerAddressObject <- list()
      if (!is.null(self$`city`)) {
        CustomerAddressObject[["city"]] <-
          self$`city`
      }
      if (!is.null(self$`country`)) {
        CustomerAddressObject[["country"]] <-
          self$`country`
      }
      if (!is.null(self$`neighborhood`)) {
        CustomerAddressObject[["neighborhood"]] <-
          self$`neighborhood`
      }
      if (!is.null(self$`number`)) {
        CustomerAddressObject[["number"]] <-
          self$`number`
      }
      if (!is.null(self$`state`)) {
        CustomerAddressObject[["state"]] <-
          self$`state`
      }
      if (!is.null(self$`street`)) {
        CustomerAddressObject[["street"]] <-
          self$`street`
      }
      if (!is.null(self$`zipCode`)) {
        CustomerAddressObject[["zipCode"]] <-
          self$`zipCode`
      }
      return(CustomerAddressObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CustomerAddress
    #'
    #' @param input_json the JSON input
    #' @return the instance of CustomerAddress
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`city`)) {
        self$`city` <- this_object$`city`
      }
      if (!is.null(this_object$`country`)) {
        self$`country` <- this_object$`country`
      }
      if (!is.null(this_object$`neighborhood`)) {
        self$`neighborhood` <- this_object$`neighborhood`
      }
      if (!is.null(this_object$`number`)) {
        self$`number` <- this_object$`number`
      }
      if (!is.null(this_object$`state`)) {
        self$`state` <- this_object$`state`
      }
      if (!is.null(this_object$`street`)) {
        self$`street` <- this_object$`street`
      }
      if (!is.null(this_object$`zipCode`)) {
        self$`zipCode` <- this_object$`zipCode`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CustomerAddress in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CustomerAddress
    #'
    #' @param input_json the JSON input
    #' @return the instance of CustomerAddress
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`city` <- this_object$`city`
      self$`country` <- this_object$`country`
      self$`neighborhood` <- this_object$`neighborhood`
      self$`number` <- this_object$`number`
      self$`state` <- this_object$`state`
      self$`street` <- this_object$`street`
      self$`zipCode` <- this_object$`zipCode`
      self
    },

    #' @description
    #' Validate JSON input with respect to CustomerAddress and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `city`
      if (!is.null(input_json$`city`)) {
        if (!(is.character(input_json$`city`) && length(input_json$`city`) == 1)) {
          stop(paste("Error! Invalid data for `city`. Must be a string:", input_json$`city`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomerAddress: the required field `city` is missing."))
      }
      # check the required field `country`
      if (!is.null(input_json$`country`)) {
        if (!(is.character(input_json$`country`) && length(input_json$`country`) == 1)) {
          stop(paste("Error! Invalid data for `country`. Must be a string:", input_json$`country`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomerAddress: the required field `country` is missing."))
      }
      # check the required field `neighborhood`
      if (!is.null(input_json$`neighborhood`)) {
        if (!(is.character(input_json$`neighborhood`) && length(input_json$`neighborhood`) == 1)) {
          stop(paste("Error! Invalid data for `neighborhood`. Must be a string:", input_json$`neighborhood`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomerAddress: the required field `neighborhood` is missing."))
      }
      # check the required field `number`
      if (!is.null(input_json$`number`)) {
        if (!(is.character(input_json$`number`) && length(input_json$`number`) == 1)) {
          stop(paste("Error! Invalid data for `number`. Must be a string:", input_json$`number`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomerAddress: the required field `number` is missing."))
      }
      # check the required field `state`
      if (!is.null(input_json$`state`)) {
        if (!(is.character(input_json$`state`) && length(input_json$`state`) == 1)) {
          stop(paste("Error! Invalid data for `state`. Must be a string:", input_json$`state`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomerAddress: the required field `state` is missing."))
      }
      # check the required field `street`
      if (!is.null(input_json$`street`)) {
        if (!(is.character(input_json$`street`) && length(input_json$`street`) == 1)) {
          stop(paste("Error! Invalid data for `street`. Must be a string:", input_json$`street`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomerAddress: the required field `street` is missing."))
      }
      # check the required field `zipCode`
      if (!is.null(input_json$`zipCode`)) {
        if (!(is.character(input_json$`zipCode`) && length(input_json$`zipCode`) == 1)) {
          stop(paste("Error! Invalid data for `zipCode`. Must be a string:", input_json$`zipCode`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomerAddress: the required field `zipCode` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CustomerAddress
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `city` is null
      if (is.null(self$`city`)) {
        return(FALSE)
      }

      # check if the required `country` is null
      if (is.null(self$`country`)) {
        return(FALSE)
      }

      if (nchar(self$`country`) > 2) {
        return(FALSE)
      }
      if (nchar(self$`country`) < 2) {
        return(FALSE)
      }

      # check if the required `neighborhood` is null
      if (is.null(self$`neighborhood`)) {
        return(FALSE)
      }

      # check if the required `number` is null
      if (is.null(self$`number`)) {
        return(FALSE)
      }

      # check if the required `state` is null
      if (is.null(self$`state`)) {
        return(FALSE)
      }

      if (nchar(self$`state`) > 2) {
        return(FALSE)
      }
      if (nchar(self$`state`) < 2) {
        return(FALSE)
      }

      # check if the required `street` is null
      if (is.null(self$`street`)) {
        return(FALSE)
      }

      # check if the required `zipCode` is null
      if (is.null(self$`zipCode`)) {
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
      # check if the required `city` is null
      if (is.null(self$`city`)) {
        invalid_fields["city"] <- "Non-nullable required field `city` cannot be null."
      }

      # check if the required `country` is null
      if (is.null(self$`country`)) {
        invalid_fields["country"] <- "Non-nullable required field `country` cannot be null."
      }

      if (nchar(self$`country`) > 2) {
        invalid_fields["country"] <- "Invalid length for `country`, must be smaller than or equal to 2."
      }
      if (nchar(self$`country`) < 2) {
        invalid_fields["country"] <- "Invalid length for `country`, must be bigger than or equal to 2."
      }

      # check if the required `neighborhood` is null
      if (is.null(self$`neighborhood`)) {
        invalid_fields["neighborhood"] <- "Non-nullable required field `neighborhood` cannot be null."
      }

      # check if the required `number` is null
      if (is.null(self$`number`)) {
        invalid_fields["number"] <- "Non-nullable required field `number` cannot be null."
      }

      # check if the required `state` is null
      if (is.null(self$`state`)) {
        invalid_fields["state"] <- "Non-nullable required field `state` cannot be null."
      }

      if (nchar(self$`state`) > 2) {
        invalid_fields["state"] <- "Invalid length for `state`, must be smaller than or equal to 2."
      }
      if (nchar(self$`state`) < 2) {
        invalid_fields["state"] <- "Invalid length for `state`, must be bigger than or equal to 2."
      }

      # check if the required `street` is null
      if (is.null(self$`street`)) {
        invalid_fields["street"] <- "Non-nullable required field `street` cannot be null."
      }

      # check if the required `zipCode` is null
      if (is.null(self$`zipCode`)) {
        invalid_fields["zipCode"] <- "Non-nullable required field `zipCode` cannot be null."
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
# CustomerAddress$unlock()
#
## Below is an example to define the print function
# CustomerAddress$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CustomerAddress$lock()

