#' Create a new PostWithdrawsRequest
#'
#' @description
#' PostWithdrawsRequest Class
#'
#' @docType class
#' @title PostWithdrawsRequest
#' @description PostWithdrawsRequest Class
#' @format An \code{R6Class} generator object
#' @field amount Withdrawal amount in cents numeric
#' @field externalId Withdrawal ID in your system character [optional]
#' @field merchant  \link{MerchantInput} [optional]
#' @field payoutAccount  \link{PostWithdrawsRequestPayoutAccount}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PostWithdrawsRequest <- R6::R6Class(
  "PostWithdrawsRequest",
  public = list(
    `amount` = NULL,
    `externalId` = NULL,
    `merchant` = NULL,
    `payoutAccount` = NULL,

    #' @description
    #' Initialize a new PostWithdrawsRequest class.
    #'
    #' @param amount Withdrawal amount in cents
    #' @param payoutAccount payoutAccount
    #' @param externalId Withdrawal ID in your system
    #' @param merchant merchant
    #' @param ... Other optional arguments.
    initialize = function(`amount`, `payoutAccount`, `externalId` = NULL, `merchant` = NULL, ...) {
      if (!missing(`amount`)) {
        self$`amount` <- `amount`
      }
      if (!missing(`payoutAccount`)) {
        stopifnot(R6::is.R6(`payoutAccount`))
        self$`payoutAccount` <- `payoutAccount`
      }
      if (!is.null(`externalId`)) {
        if (!(is.character(`externalId`) && length(`externalId`) == 1)) {
          stop(paste("Error! Invalid data for `externalId`. Must be a string:", `externalId`))
        }
        self$`externalId` <- `externalId`
      }
      if (!is.null(`merchant`)) {
        stopifnot(R6::is.R6(`merchant`))
        self$`merchant` <- `merchant`
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
    #' @return PostWithdrawsRequest as a base R list.
    #' @examples
    #' # convert array of PostWithdrawsRequest (x) to a data frame
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
    #' Convert PostWithdrawsRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PostWithdrawsRequestObject <- list()
      if (!is.null(self$`amount`)) {
        PostWithdrawsRequestObject[["amount"]] <-
          self$`amount`
      }
      if (!is.null(self$`externalId`)) {
        PostWithdrawsRequestObject[["externalId"]] <-
          self$`externalId`
      }
      if (!is.null(self$`merchant`)) {
        PostWithdrawsRequestObject[["merchant"]] <-
          self$extractSimpleType(self$`merchant`)
      }
      if (!is.null(self$`payoutAccount`)) {
        PostWithdrawsRequestObject[["payoutAccount"]] <-
          self$extractSimpleType(self$`payoutAccount`)
      }
      return(PostWithdrawsRequestObject)
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
    #' Deserialize JSON string into an instance of PostWithdrawsRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of PostWithdrawsRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`amount`)) {
        self$`amount` <- this_object$`amount`
      }
      if (!is.null(this_object$`externalId`)) {
        self$`externalId` <- this_object$`externalId`
      }
      if (!is.null(this_object$`merchant`)) {
        `merchant_object` <- MerchantInput$new()
        `merchant_object`$fromJSON(jsonlite::toJSON(this_object$`merchant`, auto_unbox = TRUE, digits = NA))
        self$`merchant` <- `merchant_object`
      }
      if (!is.null(this_object$`payoutAccount`)) {
        `payoutaccount_object` <- PostWithdrawsRequestPayoutAccount$new()
        `payoutaccount_object`$fromJSON(jsonlite::toJSON(this_object$`payoutAccount`, auto_unbox = TRUE, digits = NA))
        self$`payoutAccount` <- `payoutaccount_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PostWithdrawsRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PostWithdrawsRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of PostWithdrawsRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`amount` <- this_object$`amount`
      self$`externalId` <- this_object$`externalId`
      self$`merchant` <- MerchantInput$new()$fromJSON(jsonlite::toJSON(this_object$`merchant`, auto_unbox = TRUE, digits = NA))
      self$`payoutAccount` <- PostWithdrawsRequestPayoutAccount$new()$fromJSON(jsonlite::toJSON(this_object$`payoutAccount`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to PostWithdrawsRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `amount`
      if (!is.null(input_json$`amount`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostWithdrawsRequest: the required field `amount` is missing."))
      }
      # check the required field `payoutAccount`
      if (!is.null(input_json$`payoutAccount`)) {
        stopifnot(R6::is.R6(input_json$`payoutAccount`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostWithdrawsRequest: the required field `payoutAccount` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PostWithdrawsRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `amount` is null
      if (is.null(self$`amount`)) {
        return(FALSE)
      }

      if (self$`amount` < 1) {
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
      # check if the required `amount` is null
      if (is.null(self$`amount`)) {
        invalid_fields["amount"] <- "Non-nullable required field `amount` cannot be null."
      }

      if (self$`amount` < 1) {
        invalid_fields["amount"] <- "Invalid value for `amount`, must be bigger than or equal to 1."
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
# PostWithdrawsRequest$unlock()
#
## Below is an example to define the print function
# PostWithdrawsRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PostWithdrawsRequest$lock()

