#' Create a new PostWithdraws200ResponsePayoutAccount
#'
#' @description
#' PostWithdraws200ResponsePayoutAccount Class
#'
#' @docType class
#' @title PostWithdraws200ResponsePayoutAccount
#' @description PostWithdraws200ResponsePayoutAccount Class
#' @format An \code{R6Class} generator object
#' @field id Unique payment account identifier character
#' @field ownerDocument Account holder document (CPF or CNPJ) character
#' @field ownerName Account holder name character
#' @field pixKey PIX key used for the withdrawal character
#' @field pixType  \link{PixType}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PostWithdraws200ResponsePayoutAccount <- R6::R6Class(
  "PostWithdraws200ResponsePayoutAccount",
  public = list(
    `id` = NULL,
    `ownerDocument` = NULL,
    `ownerName` = NULL,
    `pixKey` = NULL,
    `pixType` = NULL,

    #' @description
    #' Initialize a new PostWithdraws200ResponsePayoutAccount class.
    #'
    #' @param id Unique payment account identifier
    #' @param ownerDocument Account holder document (CPF or CNPJ)
    #' @param ownerName Account holder name
    #' @param pixKey PIX key used for the withdrawal
    #' @param pixType pixType
    #' @param ... Other optional arguments.
    initialize = function(`id`, `ownerDocument`, `ownerName`, `pixKey`, `pixType`, ...) {
      if (!missing(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`ownerDocument`)) {
        if (!(is.character(`ownerDocument`) && length(`ownerDocument`) == 1)) {
          stop(paste("Error! Invalid data for `ownerDocument`. Must be a string:", `ownerDocument`))
        }
        self$`ownerDocument` <- `ownerDocument`
      }
      if (!missing(`ownerName`)) {
        if (!(is.character(`ownerName`) && length(`ownerName`) == 1)) {
          stop(paste("Error! Invalid data for `ownerName`. Must be a string:", `ownerName`))
        }
        self$`ownerName` <- `ownerName`
      }
      if (!missing(`pixKey`)) {
        if (!(is.character(`pixKey`) && length(`pixKey`) == 1)) {
          stop(paste("Error! Invalid data for `pixKey`. Must be a string:", `pixKey`))
        }
        self$`pixKey` <- `pixKey`
      }
      if (!missing(`pixType`)) {
        if (!(`pixType` %in% c())) {
          stop(paste("Error! \"", `pixType`, "\" cannot be assigned to `pixType`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`pixType`))
        self$`pixType` <- `pixType`
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
    #' @return PostWithdraws200ResponsePayoutAccount as a base R list.
    #' @examples
    #' # convert array of PostWithdraws200ResponsePayoutAccount (x) to a data frame
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
    #' Convert PostWithdraws200ResponsePayoutAccount to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PostWithdraws200ResponsePayoutAccountObject <- list()
      if (!is.null(self$`id`)) {
        PostWithdraws200ResponsePayoutAccountObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`ownerDocument`)) {
        PostWithdraws200ResponsePayoutAccountObject[["ownerDocument"]] <-
          self$`ownerDocument`
      }
      if (!is.null(self$`ownerName`)) {
        PostWithdraws200ResponsePayoutAccountObject[["ownerName"]] <-
          self$`ownerName`
      }
      if (!is.null(self$`pixKey`)) {
        PostWithdraws200ResponsePayoutAccountObject[["pixKey"]] <-
          self$`pixKey`
      }
      if (!is.null(self$`pixType`)) {
        PostWithdraws200ResponsePayoutAccountObject[["pixType"]] <-
          self$extractSimpleType(self$`pixType`)
      }
      return(PostWithdraws200ResponsePayoutAccountObject)
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
    #' Deserialize JSON string into an instance of PostWithdraws200ResponsePayoutAccount
    #'
    #' @param input_json the JSON input
    #' @return the instance of PostWithdraws200ResponsePayoutAccount
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`ownerDocument`)) {
        self$`ownerDocument` <- this_object$`ownerDocument`
      }
      if (!is.null(this_object$`ownerName`)) {
        self$`ownerName` <- this_object$`ownerName`
      }
      if (!is.null(this_object$`pixKey`)) {
        self$`pixKey` <- this_object$`pixKey`
      }
      if (!is.null(this_object$`pixType`)) {
        `pixtype_object` <- PixType$new()
        `pixtype_object`$fromJSON(jsonlite::toJSON(this_object$`pixType`, auto_unbox = TRUE, digits = NA))
        self$`pixType` <- `pixtype_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PostWithdraws200ResponsePayoutAccount in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PostWithdraws200ResponsePayoutAccount
    #'
    #' @param input_json the JSON input
    #' @return the instance of PostWithdraws200ResponsePayoutAccount
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`ownerDocument` <- this_object$`ownerDocument`
      self$`ownerName` <- this_object$`ownerName`
      self$`pixKey` <- this_object$`pixKey`
      self$`pixType` <- PixType$new()$fromJSON(jsonlite::toJSON(this_object$`pixType`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to PostWithdraws200ResponsePayoutAccount and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.character(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostWithdraws200ResponsePayoutAccount: the required field `id` is missing."))
      }
      # check the required field `ownerDocument`
      if (!is.null(input_json$`ownerDocument`)) {
        if (!(is.character(input_json$`ownerDocument`) && length(input_json$`ownerDocument`) == 1)) {
          stop(paste("Error! Invalid data for `ownerDocument`. Must be a string:", input_json$`ownerDocument`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostWithdraws200ResponsePayoutAccount: the required field `ownerDocument` is missing."))
      }
      # check the required field `ownerName`
      if (!is.null(input_json$`ownerName`)) {
        if (!(is.character(input_json$`ownerName`) && length(input_json$`ownerName`) == 1)) {
          stop(paste("Error! Invalid data for `ownerName`. Must be a string:", input_json$`ownerName`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostWithdraws200ResponsePayoutAccount: the required field `ownerName` is missing."))
      }
      # check the required field `pixKey`
      if (!is.null(input_json$`pixKey`)) {
        if (!(is.character(input_json$`pixKey`) && length(input_json$`pixKey`) == 1)) {
          stop(paste("Error! Invalid data for `pixKey`. Must be a string:", input_json$`pixKey`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostWithdraws200ResponsePayoutAccount: the required field `pixKey` is missing."))
      }
      # check the required field `pixType`
      if (!is.null(input_json$`pixType`)) {
        stopifnot(R6::is.R6(input_json$`pixType`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostWithdraws200ResponsePayoutAccount: the required field `pixType` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PostWithdraws200ResponsePayoutAccount
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `id` is null
      if (is.null(self$`id`)) {
        return(FALSE)
      }

      # check if the required `ownerDocument` is null
      if (is.null(self$`ownerDocument`)) {
        return(FALSE)
      }

      if (!str_detect(self$`ownerDocument`, "^\\d{11}$|^\\d{14}$")) {
        return(FALSE)
      }

      # check if the required `ownerName` is null
      if (is.null(self$`ownerName`)) {
        return(FALSE)
      }

      # check if the required `pixKey` is null
      if (is.null(self$`pixKey`)) {
        return(FALSE)
      }

      # check if the required `pixType` is null
      if (is.null(self$`pixType`)) {
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
      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      # check if the required `ownerDocument` is null
      if (is.null(self$`ownerDocument`)) {
        invalid_fields["ownerDocument"] <- "Non-nullable required field `ownerDocument` cannot be null."
      }

      if (!str_detect(self$`ownerDocument`, "^\\d{11}$|^\\d{14}$")) {
        invalid_fields["ownerDocument"] <- "Invalid value for `ownerDocument`, must conform to the pattern ^\\d{11}$|^\\d{14}$."
      }

      # check if the required `ownerName` is null
      if (is.null(self$`ownerName`)) {
        invalid_fields["ownerName"] <- "Non-nullable required field `ownerName` cannot be null."
      }

      # check if the required `pixKey` is null
      if (is.null(self$`pixKey`)) {
        invalid_fields["pixKey"] <- "Non-nullable required field `pixKey` cannot be null."
      }

      # check if the required `pixType` is null
      if (is.null(self$`pixType`)) {
        invalid_fields["pixType"] <- "Non-nullable required field `pixType` cannot be null."
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
# PostWithdraws200ResponsePayoutAccount$unlock()
#
## Below is an example to define the print function
# PostWithdraws200ResponsePayoutAccount$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PostWithdraws200ResponsePayoutAccount$lock()

