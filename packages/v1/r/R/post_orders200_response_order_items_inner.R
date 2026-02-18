#' Create a new PostOrders200ResponseOrderItemsInner
#'
#' @description
#' PostOrders200ResponseOrderItemsInner Class
#'
#' @docType class
#' @title PostOrders200ResponseOrderItemsInner
#' @description PostOrders200ResponseOrderItemsInner Class
#' @format An \code{R6Class} generator object
#' @field externalId External item ID character
#' @field id Item ID in the order character
#' @field name Product/service name character
#' @field qty Quantity numeric
#' @field totalAmount Total item amount (quantity × unit price) numeric
#' @field totalNetAmount Total net amount of the item numeric
#' @field unityPrice Unit price numeric
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PostOrders200ResponseOrderItemsInner <- R6::R6Class(
  "PostOrders200ResponseOrderItemsInner",
  public = list(
    `externalId` = NULL,
    `id` = NULL,
    `name` = NULL,
    `qty` = NULL,
    `totalAmount` = NULL,
    `totalNetAmount` = NULL,
    `unityPrice` = NULL,

    #' @description
    #' Initialize a new PostOrders200ResponseOrderItemsInner class.
    #'
    #' @param externalId External item ID
    #' @param id Item ID in the order
    #' @param name Product/service name
    #' @param qty Quantity
    #' @param totalAmount Total item amount (quantity × unit price)
    #' @param totalNetAmount Total net amount of the item
    #' @param unityPrice Unit price
    #' @param ... Other optional arguments.
    initialize = function(`externalId`, `id`, `name`, `qty`, `totalAmount`, `totalNetAmount`, `unityPrice`, ...) {
      if (!missing(`externalId`)) {
        if (!(is.character(`externalId`) && length(`externalId`) == 1)) {
          stop(paste("Error! Invalid data for `externalId`. Must be a string:", `externalId`))
        }
        self$`externalId` <- `externalId`
      }
      if (!missing(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`qty`)) {
        self$`qty` <- `qty`
      }
      if (!missing(`totalAmount`)) {
        self$`totalAmount` <- `totalAmount`
      }
      if (!missing(`totalNetAmount`)) {
        self$`totalNetAmount` <- `totalNetAmount`
      }
      if (!missing(`unityPrice`)) {
        self$`unityPrice` <- `unityPrice`
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
    #' @return PostOrders200ResponseOrderItemsInner as a base R list.
    #' @examples
    #' # convert array of PostOrders200ResponseOrderItemsInner (x) to a data frame
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
    #' Convert PostOrders200ResponseOrderItemsInner to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PostOrders200ResponseOrderItemsInnerObject <- list()
      if (!is.null(self$`externalId`)) {
        PostOrders200ResponseOrderItemsInnerObject[["externalId"]] <-
          self$`externalId`
      }
      if (!is.null(self$`id`)) {
        PostOrders200ResponseOrderItemsInnerObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        PostOrders200ResponseOrderItemsInnerObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`qty`)) {
        PostOrders200ResponseOrderItemsInnerObject[["qty"]] <-
          self$`qty`
      }
      if (!is.null(self$`totalAmount`)) {
        PostOrders200ResponseOrderItemsInnerObject[["totalAmount"]] <-
          self$`totalAmount`
      }
      if (!is.null(self$`totalNetAmount`)) {
        PostOrders200ResponseOrderItemsInnerObject[["totalNetAmount"]] <-
          self$`totalNetAmount`
      }
      if (!is.null(self$`unityPrice`)) {
        PostOrders200ResponseOrderItemsInnerObject[["unityPrice"]] <-
          self$`unityPrice`
      }
      return(PostOrders200ResponseOrderItemsInnerObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PostOrders200ResponseOrderItemsInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of PostOrders200ResponseOrderItemsInner
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`externalId`)) {
        self$`externalId` <- this_object$`externalId`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`qty`)) {
        self$`qty` <- this_object$`qty`
      }
      if (!is.null(this_object$`totalAmount`)) {
        self$`totalAmount` <- this_object$`totalAmount`
      }
      if (!is.null(this_object$`totalNetAmount`)) {
        self$`totalNetAmount` <- this_object$`totalNetAmount`
      }
      if (!is.null(this_object$`unityPrice`)) {
        self$`unityPrice` <- this_object$`unityPrice`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PostOrders200ResponseOrderItemsInner in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PostOrders200ResponseOrderItemsInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of PostOrders200ResponseOrderItemsInner
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`externalId` <- this_object$`externalId`
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`qty` <- this_object$`qty`
      self$`totalAmount` <- this_object$`totalAmount`
      self$`totalNetAmount` <- this_object$`totalNetAmount`
      self$`unityPrice` <- this_object$`unityPrice`
      self
    },

    #' @description
    #' Validate JSON input with respect to PostOrders200ResponseOrderItemsInner and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `externalId`
      if (!is.null(input_json$`externalId`)) {
        if (!(is.character(input_json$`externalId`) && length(input_json$`externalId`) == 1)) {
          stop(paste("Error! Invalid data for `externalId`. Must be a string:", input_json$`externalId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostOrders200ResponseOrderItemsInner: the required field `externalId` is missing."))
      }
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.character(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostOrders200ResponseOrderItemsInner: the required field `id` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostOrders200ResponseOrderItemsInner: the required field `name` is missing."))
      }
      # check the required field `qty`
      if (!is.null(input_json$`qty`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostOrders200ResponseOrderItemsInner: the required field `qty` is missing."))
      }
      # check the required field `totalAmount`
      if (!is.null(input_json$`totalAmount`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostOrders200ResponseOrderItemsInner: the required field `totalAmount` is missing."))
      }
      # check the required field `totalNetAmount`
      if (!is.null(input_json$`totalNetAmount`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostOrders200ResponseOrderItemsInner: the required field `totalNetAmount` is missing."))
      }
      # check the required field `unityPrice`
      if (!is.null(input_json$`unityPrice`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostOrders200ResponseOrderItemsInner: the required field `unityPrice` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PostOrders200ResponseOrderItemsInner
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

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `qty` is null
      if (is.null(self$`qty`)) {
        return(FALSE)
      }

      # check if the required `totalAmount` is null
      if (is.null(self$`totalAmount`)) {
        return(FALSE)
      }

      # check if the required `totalNetAmount` is null
      if (is.null(self$`totalNetAmount`)) {
        return(FALSE)
      }

      # check if the required `unityPrice` is null
      if (is.null(self$`unityPrice`)) {
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

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `qty` is null
      if (is.null(self$`qty`)) {
        invalid_fields["qty"] <- "Non-nullable required field `qty` cannot be null."
      }

      # check if the required `totalAmount` is null
      if (is.null(self$`totalAmount`)) {
        invalid_fields["totalAmount"] <- "Non-nullable required field `totalAmount` cannot be null."
      }

      # check if the required `totalNetAmount` is null
      if (is.null(self$`totalNetAmount`)) {
        invalid_fields["totalNetAmount"] <- "Non-nullable required field `totalNetAmount` cannot be null."
      }

      # check if the required `unityPrice` is null
      if (is.null(self$`unityPrice`)) {
        invalid_fields["unityPrice"] <- "Non-nullable required field `unityPrice` cannot be null."
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
# PostOrders200ResponseOrderItemsInner$unlock()
#
## Below is an example to define the print function
# PostOrders200ResponseOrderItemsInner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PostOrders200ResponseOrderItemsInner$lock()

