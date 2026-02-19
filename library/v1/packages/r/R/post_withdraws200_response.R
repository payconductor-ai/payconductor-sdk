#' Create a new PostWithdraws200Response
#'
#' @description
#' PostWithdraws200Response Class
#'
#' @docType class
#' @title PostWithdraws200Response
#' @description PostWithdraws200Response Class
#' @format An \code{R6Class} generator object
#' @field id Unique withdrawal identifier character
#' @field externalId Withdrawal ID in your system character
#' @field externalIntegrationKey Provider key used for the withdrawal character
#' @field externalIntegrationId Withdrawal ID in the payment provider character
#' @field costFee Cost fee applied to the withdrawal numeric
#' @field status Withdrawal status character
#' @field errorCode Error code, if any character
#' @field errorMessage Descriptive error message, if any character
#' @field payedAt  \link{PostWithdraws200ResponsePayedAt}
#' @field payoutAccount  \link{PostWithdraws200ResponsePayoutAccount}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PostWithdraws200Response <- R6::R6Class(
  "PostWithdraws200Response",
  public = list(
    `id` = NULL,
    `externalId` = NULL,
    `externalIntegrationKey` = NULL,
    `externalIntegrationId` = NULL,
    `costFee` = NULL,
    `status` = NULL,
    `errorCode` = NULL,
    `errorMessage` = NULL,
    `payedAt` = NULL,
    `payoutAccount` = NULL,

    #' @description
    #' Initialize a new PostWithdraws200Response class.
    #'
    #' @param id Unique withdrawal identifier
    #' @param externalId Withdrawal ID in your system
    #' @param externalIntegrationKey Provider key used for the withdrawal
    #' @param externalIntegrationId Withdrawal ID in the payment provider
    #' @param costFee Cost fee applied to the withdrawal
    #' @param status Withdrawal status
    #' @param errorCode Error code, if any
    #' @param errorMessage Descriptive error message, if any
    #' @param payedAt payedAt
    #' @param payoutAccount payoutAccount
    #' @param ... Other optional arguments.
    initialize = function(`id`, `externalId`, `externalIntegrationKey`, `externalIntegrationId`, `costFee`, `status`, `errorCode`, `errorMessage`, `payedAt`, `payoutAccount`, ...) {
      if (!missing(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`externalId`)) {
        if (!(is.character(`externalId`) && length(`externalId`) == 1)) {
          stop(paste("Error! Invalid data for `externalId`. Must be a string:", `externalId`))
        }
        self$`externalId` <- `externalId`
      }
      if (!missing(`externalIntegrationKey`)) {
        if (!(is.character(`externalIntegrationKey`) && length(`externalIntegrationKey`) == 1)) {
          stop(paste("Error! Invalid data for `externalIntegrationKey`. Must be a string:", `externalIntegrationKey`))
        }
        self$`externalIntegrationKey` <- `externalIntegrationKey`
      }
      if (!missing(`externalIntegrationId`)) {
        if (!(is.character(`externalIntegrationId`) && length(`externalIntegrationId`) == 1)) {
          stop(paste("Error! Invalid data for `externalIntegrationId`. Must be a string:", `externalIntegrationId`))
        }
        self$`externalIntegrationId` <- `externalIntegrationId`
      }
      if (!missing(`costFee`)) {
        self$`costFee` <- `costFee`
      }
      if (!missing(`status`)) {
        if (!(`status` %in% c("Pending", "Transferring", "Completed", "Failed"))) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be \"Pending\", \"Transferring\", \"Completed\", \"Failed\".", sep = ""))
        }
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!missing(`errorCode`)) {
        if (!(is.character(`errorCode`) && length(`errorCode`) == 1)) {
          stop(paste("Error! Invalid data for `errorCode`. Must be a string:", `errorCode`))
        }
        self$`errorCode` <- `errorCode`
      }
      if (!missing(`errorMessage`)) {
        if (!(is.character(`errorMessage`) && length(`errorMessage`) == 1)) {
          stop(paste("Error! Invalid data for `errorMessage`. Must be a string:", `errorMessage`))
        }
        self$`errorMessage` <- `errorMessage`
      }
      if (!missing(`payedAt`)) {
        stopifnot(R6::is.R6(`payedAt`))
        self$`payedAt` <- `payedAt`
      }
      if (!missing(`payoutAccount`)) {
        stopifnot(R6::is.R6(`payoutAccount`))
        self$`payoutAccount` <- `payoutAccount`
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
    #' @return PostWithdraws200Response as a base R list.
    #' @examples
    #' # convert array of PostWithdraws200Response (x) to a data frame
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
    #' Convert PostWithdraws200Response to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PostWithdraws200ResponseObject <- list()
      if (!is.null(self$`id`)) {
        PostWithdraws200ResponseObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`externalId`)) {
        PostWithdraws200ResponseObject[["externalId"]] <-
          self$`externalId`
      }
      if (!is.null(self$`externalIntegrationKey`)) {
        PostWithdraws200ResponseObject[["externalIntegrationKey"]] <-
          self$`externalIntegrationKey`
      }
      if (!is.null(self$`externalIntegrationId`)) {
        PostWithdraws200ResponseObject[["externalIntegrationId"]] <-
          self$`externalIntegrationId`
      }
      if (!is.null(self$`costFee`)) {
        PostWithdraws200ResponseObject[["costFee"]] <-
          self$`costFee`
      }
      if (!is.null(self$`status`)) {
        PostWithdraws200ResponseObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`errorCode`)) {
        PostWithdraws200ResponseObject[["errorCode"]] <-
          self$`errorCode`
      }
      if (!is.null(self$`errorMessage`)) {
        PostWithdraws200ResponseObject[["errorMessage"]] <-
          self$`errorMessage`
      }
      if (!is.null(self$`payedAt`)) {
        PostWithdraws200ResponseObject[["payedAt"]] <-
          self$extractSimpleType(self$`payedAt`)
      }
      if (!is.null(self$`payoutAccount`)) {
        PostWithdraws200ResponseObject[["payoutAccount"]] <-
          self$extractSimpleType(self$`payoutAccount`)
      }
      return(PostWithdraws200ResponseObject)
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
    #' Deserialize JSON string into an instance of PostWithdraws200Response
    #'
    #' @param input_json the JSON input
    #' @return the instance of PostWithdraws200Response
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`externalId`)) {
        self$`externalId` <- this_object$`externalId`
      }
      if (!is.null(this_object$`externalIntegrationKey`)) {
        self$`externalIntegrationKey` <- this_object$`externalIntegrationKey`
      }
      if (!is.null(this_object$`externalIntegrationId`)) {
        self$`externalIntegrationId` <- this_object$`externalIntegrationId`
      }
      if (!is.null(this_object$`costFee`)) {
        self$`costFee` <- this_object$`costFee`
      }
      if (!is.null(this_object$`status`)) {
        if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("Pending", "Transferring", "Completed", "Failed"))) {
          stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"Pending\", \"Transferring\", \"Completed\", \"Failed\".", sep = ""))
        }
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`errorCode`)) {
        self$`errorCode` <- this_object$`errorCode`
      }
      if (!is.null(this_object$`errorMessage`)) {
        self$`errorMessage` <- this_object$`errorMessage`
      }
      if (!is.null(this_object$`payedAt`)) {
        `payedat_object` <- PostWithdraws200ResponsePayedAt$new()
        `payedat_object`$fromJSON(jsonlite::toJSON(this_object$`payedAt`, auto_unbox = TRUE, digits = NA))
        self$`payedAt` <- `payedat_object`
      }
      if (!is.null(this_object$`payoutAccount`)) {
        `payoutaccount_object` <- PostWithdraws200ResponsePayoutAccount$new()
        `payoutaccount_object`$fromJSON(jsonlite::toJSON(this_object$`payoutAccount`, auto_unbox = TRUE, digits = NA))
        self$`payoutAccount` <- `payoutaccount_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PostWithdraws200Response in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PostWithdraws200Response
    #'
    #' @param input_json the JSON input
    #' @return the instance of PostWithdraws200Response
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`externalId` <- this_object$`externalId`
      self$`externalIntegrationKey` <- this_object$`externalIntegrationKey`
      self$`externalIntegrationId` <- this_object$`externalIntegrationId`
      self$`costFee` <- this_object$`costFee`
      if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("Pending", "Transferring", "Completed", "Failed"))) {
        stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"Pending\", \"Transferring\", \"Completed\", \"Failed\".", sep = ""))
      }
      self$`status` <- this_object$`status`
      self$`errorCode` <- this_object$`errorCode`
      self$`errorMessage` <- this_object$`errorMessage`
      self$`payedAt` <- PostWithdraws200ResponsePayedAt$new()$fromJSON(jsonlite::toJSON(this_object$`payedAt`, auto_unbox = TRUE, digits = NA))
      self$`payoutAccount` <- PostWithdraws200ResponsePayoutAccount$new()$fromJSON(jsonlite::toJSON(this_object$`payoutAccount`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to PostWithdraws200Response and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for PostWithdraws200Response: the required field `id` is missing."))
      }
      # check the required field `externalId`
      if (!is.null(input_json$`externalId`)) {
        if (!(is.character(input_json$`externalId`) && length(input_json$`externalId`) == 1)) {
          stop(paste("Error! Invalid data for `externalId`. Must be a string:", input_json$`externalId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostWithdraws200Response: the required field `externalId` is missing."))
      }
      # check the required field `externalIntegrationKey`
      if (!is.null(input_json$`externalIntegrationKey`)) {
        if (!(is.character(input_json$`externalIntegrationKey`) && length(input_json$`externalIntegrationKey`) == 1)) {
          stop(paste("Error! Invalid data for `externalIntegrationKey`. Must be a string:", input_json$`externalIntegrationKey`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostWithdraws200Response: the required field `externalIntegrationKey` is missing."))
      }
      # check the required field `externalIntegrationId`
      if (!is.null(input_json$`externalIntegrationId`)) {
        if (!(is.character(input_json$`externalIntegrationId`) && length(input_json$`externalIntegrationId`) == 1)) {
          stop(paste("Error! Invalid data for `externalIntegrationId`. Must be a string:", input_json$`externalIntegrationId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostWithdraws200Response: the required field `externalIntegrationId` is missing."))
      }
      # check the required field `costFee`
      if (!is.null(input_json$`costFee`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostWithdraws200Response: the required field `costFee` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        if (!(is.character(input_json$`status`) && length(input_json$`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", input_json$`status`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostWithdraws200Response: the required field `status` is missing."))
      }
      # check the required field `errorCode`
      if (!is.null(input_json$`errorCode`)) {
        if (!(is.character(input_json$`errorCode`) && length(input_json$`errorCode`) == 1)) {
          stop(paste("Error! Invalid data for `errorCode`. Must be a string:", input_json$`errorCode`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostWithdraws200Response: the required field `errorCode` is missing."))
      }
      # check the required field `errorMessage`
      if (!is.null(input_json$`errorMessage`)) {
        if (!(is.character(input_json$`errorMessage`) && length(input_json$`errorMessage`) == 1)) {
          stop(paste("Error! Invalid data for `errorMessage`. Must be a string:", input_json$`errorMessage`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostWithdraws200Response: the required field `errorMessage` is missing."))
      }
      # check the required field `payedAt`
      if (!is.null(input_json$`payedAt`)) {
        stopifnot(R6::is.R6(input_json$`payedAt`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostWithdraws200Response: the required field `payedAt` is missing."))
      }
      # check the required field `payoutAccount`
      if (!is.null(input_json$`payoutAccount`)) {
        stopifnot(R6::is.R6(input_json$`payoutAccount`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostWithdraws200Response: the required field `payoutAccount` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PostWithdraws200Response
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

      # check if the required `externalIntegrationKey` is null
      if (is.null(self$`externalIntegrationKey`)) {
        return(FALSE)
      }

      # check if the required `costFee` is null
      if (is.null(self$`costFee`)) {
        return(FALSE)
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        return(FALSE)
      }

      # check if the required `payoutAccount` is null
      if (is.null(self$`payoutAccount`)) {
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

      # check if the required `externalIntegrationKey` is null
      if (is.null(self$`externalIntegrationKey`)) {
        invalid_fields["externalIntegrationKey"] <- "Non-nullable required field `externalIntegrationKey` cannot be null."
      }

      # check if the required `costFee` is null
      if (is.null(self$`costFee`)) {
        invalid_fields["costFee"] <- "Non-nullable required field `costFee` cannot be null."
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
      }

      # check if the required `payoutAccount` is null
      if (is.null(self$`payoutAccount`)) {
        invalid_fields["payoutAccount"] <- "Non-nullable required field `payoutAccount` cannot be null."
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
# PostWithdraws200Response$unlock()
#
## Below is an example to define the print function
# PostWithdraws200Response$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PostWithdraws200Response$lock()

