#' Create a new PostOrdersRequest
#'
#' @description
#' PostOrdersRequest Class
#'
#' @docType class
#' @title PostOrdersRequest
#' @description PostOrdersRequest Class
#' @format An \code{R6Class} generator object
#' @field chargeAmount Total amount to be charged on the order in floating point value numeric
#' @field clientIp Client IP address character
#' @field customer  \link{Customer}
#' @field discountAmount Discount amount numeric
#' @field externalId Order ID in your system character
#' @field fingerprints  \link{PostOrdersRequestFingerprints} [optional]
#' @field items List of products or services in the order list(\link{PostOrdersRequestItemsInner}) [optional]
#' @field merchant  \link{MerchantInput} [optional]
#' @field payment  \link{PostOrdersRequestPayment}
#' @field splitAmountTotal Total split amount to be paid to the merchant (Used only for reporting purposes, does not generate actual split) numeric [optional]
#' @field session  \link{PostOrdersRequestSession} [optional]
#' @field shippingFee Shipping fee numeric
#' @field taxFee Additional fees numeric
#' @field metadata Additional metadata for the order as key-value pairs. Keys should not contain spaces or special characters object [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PostOrdersRequest <- R6::R6Class(
  "PostOrdersRequest",
  public = list(
    `chargeAmount` = NULL,
    `clientIp` = NULL,
    `customer` = NULL,
    `discountAmount` = NULL,
    `externalId` = NULL,
    `fingerprints` = NULL,
    `items` = NULL,
    `merchant` = NULL,
    `payment` = NULL,
    `splitAmountTotal` = NULL,
    `session` = NULL,
    `shippingFee` = NULL,
    `taxFee` = NULL,
    `metadata` = NULL,

    #' @description
    #' Initialize a new PostOrdersRequest class.
    #'
    #' @param chargeAmount Total amount to be charged on the order in floating point value
    #' @param clientIp Client IP address
    #' @param customer customer
    #' @param discountAmount Discount amount
    #' @param externalId Order ID in your system
    #' @param payment payment
    #' @param shippingFee Shipping fee
    #' @param taxFee Additional fees
    #' @param fingerprints fingerprints
    #' @param items List of products or services in the order
    #' @param merchant merchant
    #' @param splitAmountTotal Total split amount to be paid to the merchant (Used only for reporting purposes, does not generate actual split)
    #' @param session session
    #' @param metadata Additional metadata for the order as key-value pairs. Keys should not contain spaces or special characters
    #' @param ... Other optional arguments.
    initialize = function(`chargeAmount`, `clientIp`, `customer`, `discountAmount`, `externalId`, `payment`, `shippingFee`, `taxFee`, `fingerprints` = NULL, `items` = NULL, `merchant` = NULL, `splitAmountTotal` = NULL, `session` = NULL, `metadata` = NULL, ...) {
      if (!missing(`chargeAmount`)) {
        self$`chargeAmount` <- `chargeAmount`
      }
      if (!missing(`clientIp`)) {
        if (!(is.character(`clientIp`) && length(`clientIp`) == 1)) {
          stop(paste("Error! Invalid data for `clientIp`. Must be a string:", `clientIp`))
        }
        self$`clientIp` <- `clientIp`
      }
      if (!missing(`customer`)) {
        stopifnot(R6::is.R6(`customer`))
        self$`customer` <- `customer`
      }
      if (!missing(`discountAmount`)) {
        self$`discountAmount` <- `discountAmount`
      }
      if (!missing(`externalId`)) {
        if (!(is.character(`externalId`) && length(`externalId`) == 1)) {
          stop(paste("Error! Invalid data for `externalId`. Must be a string:", `externalId`))
        }
        self$`externalId` <- `externalId`
      }
      if (!missing(`payment`)) {
        stopifnot(R6::is.R6(`payment`))
        self$`payment` <- `payment`
      }
      if (!missing(`shippingFee`)) {
        self$`shippingFee` <- `shippingFee`
      }
      if (!missing(`taxFee`)) {
        self$`taxFee` <- `taxFee`
      }
      if (!is.null(`fingerprints`)) {
        stopifnot(R6::is.R6(`fingerprints`))
        self$`fingerprints` <- `fingerprints`
      }
      if (!is.null(`items`)) {
        stopifnot(is.vector(`items`), length(`items`) != 0)
        sapply(`items`, function(x) stopifnot(R6::is.R6(x)))
        self$`items` <- `items`
      }
      if (!is.null(`merchant`)) {
        stopifnot(R6::is.R6(`merchant`))
        self$`merchant` <- `merchant`
      }
      if (!is.null(`splitAmountTotal`)) {
        self$`splitAmountTotal` <- `splitAmountTotal`
      }
      if (!is.null(`session`)) {
        stopifnot(R6::is.R6(`session`))
        self$`session` <- `session`
      }
      if (!is.null(`metadata`)) {
        self$`metadata` <- `metadata`
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
    #' @return PostOrdersRequest as a base R list.
    #' @examples
    #' # convert array of PostOrdersRequest (x) to a data frame
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
    #' Convert PostOrdersRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PostOrdersRequestObject <- list()
      if (!is.null(self$`chargeAmount`)) {
        PostOrdersRequestObject[["chargeAmount"]] <-
          self$`chargeAmount`
      }
      if (!is.null(self$`clientIp`)) {
        PostOrdersRequestObject[["clientIp"]] <-
          self$`clientIp`
      }
      if (!is.null(self$`customer`)) {
        PostOrdersRequestObject[["customer"]] <-
          self$extractSimpleType(self$`customer`)
      }
      if (!is.null(self$`discountAmount`)) {
        PostOrdersRequestObject[["discountAmount"]] <-
          self$`discountAmount`
      }
      if (!is.null(self$`externalId`)) {
        PostOrdersRequestObject[["externalId"]] <-
          self$`externalId`
      }
      if (!is.null(self$`fingerprints`)) {
        PostOrdersRequestObject[["fingerprints"]] <-
          self$extractSimpleType(self$`fingerprints`)
      }
      if (!is.null(self$`items`)) {
        PostOrdersRequestObject[["items"]] <-
          self$extractSimpleType(self$`items`)
      }
      if (!is.null(self$`merchant`)) {
        PostOrdersRequestObject[["merchant"]] <-
          self$extractSimpleType(self$`merchant`)
      }
      if (!is.null(self$`payment`)) {
        PostOrdersRequestObject[["payment"]] <-
          self$extractSimpleType(self$`payment`)
      }
      if (!is.null(self$`splitAmountTotal`)) {
        PostOrdersRequestObject[["splitAmountTotal"]] <-
          self$`splitAmountTotal`
      }
      if (!is.null(self$`session`)) {
        PostOrdersRequestObject[["session"]] <-
          self$extractSimpleType(self$`session`)
      }
      if (!is.null(self$`shippingFee`)) {
        PostOrdersRequestObject[["shippingFee"]] <-
          self$`shippingFee`
      }
      if (!is.null(self$`taxFee`)) {
        PostOrdersRequestObject[["taxFee"]] <-
          self$`taxFee`
      }
      if (!is.null(self$`metadata`)) {
        PostOrdersRequestObject[["metadata"]] <-
          self$`metadata`
      }
      return(PostOrdersRequestObject)
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
    #' Deserialize JSON string into an instance of PostOrdersRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of PostOrdersRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`chargeAmount`)) {
        self$`chargeAmount` <- this_object$`chargeAmount`
      }
      if (!is.null(this_object$`clientIp`)) {
        self$`clientIp` <- this_object$`clientIp`
      }
      if (!is.null(this_object$`customer`)) {
        `customer_object` <- Customer$new()
        `customer_object`$fromJSON(jsonlite::toJSON(this_object$`customer`, auto_unbox = TRUE, digits = NA))
        self$`customer` <- `customer_object`
      }
      if (!is.null(this_object$`discountAmount`)) {
        self$`discountAmount` <- this_object$`discountAmount`
      }
      if (!is.null(this_object$`externalId`)) {
        self$`externalId` <- this_object$`externalId`
      }
      if (!is.null(this_object$`fingerprints`)) {
        `fingerprints_object` <- PostOrdersRequestFingerprints$new()
        `fingerprints_object`$fromJSON(jsonlite::toJSON(this_object$`fingerprints`, auto_unbox = TRUE, digits = NA))
        self$`fingerprints` <- `fingerprints_object`
      }
      if (!is.null(this_object$`items`)) {
        self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[PostOrdersRequestItemsInner]", loadNamespace("payconductor-sdk"))
      }
      if (!is.null(this_object$`merchant`)) {
        `merchant_object` <- MerchantInput$new()
        `merchant_object`$fromJSON(jsonlite::toJSON(this_object$`merchant`, auto_unbox = TRUE, digits = NA))
        self$`merchant` <- `merchant_object`
      }
      if (!is.null(this_object$`payment`)) {
        `payment_object` <- PostOrdersRequestPayment$new()
        `payment_object`$fromJSON(jsonlite::toJSON(this_object$`payment`, auto_unbox = TRUE, digits = NA))
        self$`payment` <- `payment_object`
      }
      if (!is.null(this_object$`splitAmountTotal`)) {
        self$`splitAmountTotal` <- this_object$`splitAmountTotal`
      }
      if (!is.null(this_object$`session`)) {
        `session_object` <- PostOrdersRequestSession$new()
        `session_object`$fromJSON(jsonlite::toJSON(this_object$`session`, auto_unbox = TRUE, digits = NA))
        self$`session` <- `session_object`
      }
      if (!is.null(this_object$`shippingFee`)) {
        self$`shippingFee` <- this_object$`shippingFee`
      }
      if (!is.null(this_object$`taxFee`)) {
        self$`taxFee` <- this_object$`taxFee`
      }
      if (!is.null(this_object$`metadata`)) {
        self$`metadata` <- this_object$`metadata`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PostOrdersRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PostOrdersRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of PostOrdersRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`chargeAmount` <- this_object$`chargeAmount`
      self$`clientIp` <- this_object$`clientIp`
      self$`customer` <- Customer$new()$fromJSON(jsonlite::toJSON(this_object$`customer`, auto_unbox = TRUE, digits = NA))
      self$`discountAmount` <- this_object$`discountAmount`
      self$`externalId` <- this_object$`externalId`
      self$`fingerprints` <- PostOrdersRequestFingerprints$new()$fromJSON(jsonlite::toJSON(this_object$`fingerprints`, auto_unbox = TRUE, digits = NA))
      self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[PostOrdersRequestItemsInner]", loadNamespace("payconductor-sdk"))
      self$`merchant` <- MerchantInput$new()$fromJSON(jsonlite::toJSON(this_object$`merchant`, auto_unbox = TRUE, digits = NA))
      self$`payment` <- PostOrdersRequestPayment$new()$fromJSON(jsonlite::toJSON(this_object$`payment`, auto_unbox = TRUE, digits = NA))
      self$`splitAmountTotal` <- this_object$`splitAmountTotal`
      self$`session` <- PostOrdersRequestSession$new()$fromJSON(jsonlite::toJSON(this_object$`session`, auto_unbox = TRUE, digits = NA))
      self$`shippingFee` <- this_object$`shippingFee`
      self$`taxFee` <- this_object$`taxFee`
      self$`metadata` <- this_object$`metadata`
      self
    },

    #' @description
    #' Validate JSON input with respect to PostOrdersRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `chargeAmount`
      if (!is.null(input_json$`chargeAmount`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostOrdersRequest: the required field `chargeAmount` is missing."))
      }
      # check the required field `clientIp`
      if (!is.null(input_json$`clientIp`)) {
        if (!(is.character(input_json$`clientIp`) && length(input_json$`clientIp`) == 1)) {
          stop(paste("Error! Invalid data for `clientIp`. Must be a string:", input_json$`clientIp`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostOrdersRequest: the required field `clientIp` is missing."))
      }
      # check the required field `customer`
      if (!is.null(input_json$`customer`)) {
        stopifnot(R6::is.R6(input_json$`customer`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostOrdersRequest: the required field `customer` is missing."))
      }
      # check the required field `discountAmount`
      if (!is.null(input_json$`discountAmount`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostOrdersRequest: the required field `discountAmount` is missing."))
      }
      # check the required field `externalId`
      if (!is.null(input_json$`externalId`)) {
        if (!(is.character(input_json$`externalId`) && length(input_json$`externalId`) == 1)) {
          stop(paste("Error! Invalid data for `externalId`. Must be a string:", input_json$`externalId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostOrdersRequest: the required field `externalId` is missing."))
      }
      # check the required field `payment`
      if (!is.null(input_json$`payment`)) {
        stopifnot(R6::is.R6(input_json$`payment`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostOrdersRequest: the required field `payment` is missing."))
      }
      # check the required field `shippingFee`
      if (!is.null(input_json$`shippingFee`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostOrdersRequest: the required field `shippingFee` is missing."))
      }
      # check the required field `taxFee`
      if (!is.null(input_json$`taxFee`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostOrdersRequest: the required field `taxFee` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PostOrdersRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `chargeAmount` is null
      if (is.null(self$`chargeAmount`)) {
        return(FALSE)
      }

      # check if the required `clientIp` is null
      if (is.null(self$`clientIp`)) {
        return(FALSE)
      }

      # check if the required `customer` is null
      if (is.null(self$`customer`)) {
        return(FALSE)
      }

      # check if the required `discountAmount` is null
      if (is.null(self$`discountAmount`)) {
        return(FALSE)
      }

      # check if the required `externalId` is null
      if (is.null(self$`externalId`)) {
        return(FALSE)
      }

      if (length(self$`items`) > 20) {
        return(FALSE)
      }

      # check if the required `payment` is null
      if (is.null(self$`payment`)) {
        return(FALSE)
      }

      if (self$`splitAmountTotal` < 0) {
        return(FALSE)
      }

      # check if the required `shippingFee` is null
      if (is.null(self$`shippingFee`)) {
        return(FALSE)
      }

      # check if the required `taxFee` is null
      if (is.null(self$`taxFee`)) {
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
      # check if the required `chargeAmount` is null
      if (is.null(self$`chargeAmount`)) {
        invalid_fields["chargeAmount"] <- "Non-nullable required field `chargeAmount` cannot be null."
      }

      # check if the required `clientIp` is null
      if (is.null(self$`clientIp`)) {
        invalid_fields["clientIp"] <- "Non-nullable required field `clientIp` cannot be null."
      }

      # check if the required `customer` is null
      if (is.null(self$`customer`)) {
        invalid_fields["customer"] <- "Non-nullable required field `customer` cannot be null."
      }

      # check if the required `discountAmount` is null
      if (is.null(self$`discountAmount`)) {
        invalid_fields["discountAmount"] <- "Non-nullable required field `discountAmount` cannot be null."
      }

      # check if the required `externalId` is null
      if (is.null(self$`externalId`)) {
        invalid_fields["externalId"] <- "Non-nullable required field `externalId` cannot be null."
      }

      if (length(self$`items`) > 20) {
        invalid_fields["items"] <- "Invalid length for `items`, number of items must be less than or equal to 20."
      }

      # check if the required `payment` is null
      if (is.null(self$`payment`)) {
        invalid_fields["payment"] <- "Non-nullable required field `payment` cannot be null."
      }

      if (self$`splitAmountTotal` < 0) {
        invalid_fields["splitAmountTotal"] <- "Invalid value for `splitAmountTotal`, must be bigger than or equal to 0."
      }

      # check if the required `shippingFee` is null
      if (is.null(self$`shippingFee`)) {
        invalid_fields["shippingFee"] <- "Non-nullable required field `shippingFee` cannot be null."
      }

      # check if the required `taxFee` is null
      if (is.null(self$`taxFee`)) {
        invalid_fields["taxFee"] <- "Non-nullable required field `taxFee` cannot be null."
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
# PostOrdersRequest$unlock()
#
## Below is an example to define the print function
# PostOrdersRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PostOrdersRequest$lock()

