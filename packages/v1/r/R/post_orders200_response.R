#' Create a new PostOrders200Response
#'
#' @description
#' PostOrders200Response Class
#'
#' @docType class
#' @title PostOrders200Response
#' @description PostOrders200Response Class
#' @format An \code{R6Class} generator object
#' @field id Order ID in the system character
#' @field externalId External order ID (provided by your integration) character
#' @field externalIntegrationKey Provider used to process the order character
#' @field externalIntegrationId Order ID in the payment provider character
#' @field amount Total order amount numeric
#' @field costFee Cost fee applied to the order numeric
#' @field pix  \link{PostOrders200ResponsePix} [optional]
#' @field bankSlip  \link{PostOrders200ResponseBankSlip} [optional]
#' @field nuPay  \link{PostOrders200ResponseNuPay} [optional]
#' @field picPay  \link{PostOrders200ResponsePicPay} [optional]
#' @field creditCard  \link{PostOrders200ResponseCreditCard} [optional]
#' @field status  character
#' @field paymentMethod  character
#' @field payedAt Date and time when the order was paid (ISO 8601) character
#' @field errorCode Error code, if any character
#' @field errorMessage Error message, if any character
#' @field orderItems  list(\link{PostOrders200ResponseOrderItemsInner})
#' @field session  \link{PostOrders200ResponseSession} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PostOrders200Response <- R6::R6Class(
  "PostOrders200Response",
  public = list(
    `id` = NULL,
    `externalId` = NULL,
    `externalIntegrationKey` = NULL,
    `externalIntegrationId` = NULL,
    `amount` = NULL,
    `costFee` = NULL,
    `pix` = NULL,
    `bankSlip` = NULL,
    `nuPay` = NULL,
    `picPay` = NULL,
    `creditCard` = NULL,
    `status` = NULL,
    `paymentMethod` = NULL,
    `payedAt` = NULL,
    `errorCode` = NULL,
    `errorMessage` = NULL,
    `orderItems` = NULL,
    `session` = NULL,

    #' @description
    #' Initialize a new PostOrders200Response class.
    #'
    #' @param id Order ID in the system
    #' @param externalId External order ID (provided by your integration)
    #' @param externalIntegrationKey Provider used to process the order
    #' @param externalIntegrationId Order ID in the payment provider
    #' @param amount Total order amount
    #' @param costFee Cost fee applied to the order
    #' @param status status
    #' @param paymentMethod paymentMethod
    #' @param payedAt Date and time when the order was paid (ISO 8601)
    #' @param errorCode Error code, if any
    #' @param errorMessage Error message, if any
    #' @param orderItems orderItems
    #' @param pix pix
    #' @param bankSlip bankSlip
    #' @param nuPay nuPay
    #' @param picPay picPay
    #' @param creditCard creditCard
    #' @param session session
    #' @param ... Other optional arguments.
    initialize = function(`id`, `externalId`, `externalIntegrationKey`, `externalIntegrationId`, `amount`, `costFee`, `status`, `paymentMethod`, `payedAt`, `errorCode`, `errorMessage`, `orderItems`, `pix` = NULL, `bankSlip` = NULL, `nuPay` = NULL, `picPay` = NULL, `creditCard` = NULL, `session` = NULL, ...) {
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
      if (!missing(`amount`)) {
        self$`amount` <- `amount`
      }
      if (!missing(`costFee`)) {
        self$`costFee` <- `costFee`
      }
      if (!missing(`status`)) {
        if (!(`status` %in% c("Generating", "Pending", "Completed", "Failed", "Canceled", "Refunding", "Refunded", "InDispute", "Chargeback"))) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be \"Generating\", \"Pending\", \"Completed\", \"Failed\", \"Canceled\", \"Refunding\", \"Refunded\", \"InDispute\", \"Chargeback\".", sep = ""))
        }
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!missing(`paymentMethod`)) {
        if (!(`paymentMethod` %in% c("Pix", "CreditCard", "DebitCard", "BankSlip", "Crypto", "ApplePay", "NuPay", "PicPay", "AmazonPay", "SepaDebit", "GooglePay"))) {
          stop(paste("Error! \"", `paymentMethod`, "\" cannot be assigned to `paymentMethod`. Must be \"Pix\", \"CreditCard\", \"DebitCard\", \"BankSlip\", \"Crypto\", \"ApplePay\", \"NuPay\", \"PicPay\", \"AmazonPay\", \"SepaDebit\", \"GooglePay\".", sep = ""))
        }
        if (!(is.character(`paymentMethod`) && length(`paymentMethod`) == 1)) {
          stop(paste("Error! Invalid data for `paymentMethod`. Must be a string:", `paymentMethod`))
        }
        self$`paymentMethod` <- `paymentMethod`
      }
      if (!missing(`payedAt`)) {
        if (!(is.character(`payedAt`) && length(`payedAt`) == 1)) {
          stop(paste("Error! Invalid data for `payedAt`. Must be a string:", `payedAt`))
        }
        self$`payedAt` <- `payedAt`
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
      if (!missing(`orderItems`)) {
        stopifnot(is.vector(`orderItems`), length(`orderItems`) != 0)
        sapply(`orderItems`, function(x) stopifnot(R6::is.R6(x)))
        self$`orderItems` <- `orderItems`
      }
      if (!is.null(`pix`)) {
        stopifnot(R6::is.R6(`pix`))
        self$`pix` <- `pix`
      }
      if (!is.null(`bankSlip`)) {
        stopifnot(R6::is.R6(`bankSlip`))
        self$`bankSlip` <- `bankSlip`
      }
      if (!is.null(`nuPay`)) {
        stopifnot(R6::is.R6(`nuPay`))
        self$`nuPay` <- `nuPay`
      }
      if (!is.null(`picPay`)) {
        stopifnot(R6::is.R6(`picPay`))
        self$`picPay` <- `picPay`
      }
      if (!is.null(`creditCard`)) {
        stopifnot(R6::is.R6(`creditCard`))
        self$`creditCard` <- `creditCard`
      }
      if (!is.null(`session`)) {
        stopifnot(R6::is.R6(`session`))
        self$`session` <- `session`
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
    #' @return PostOrders200Response as a base R list.
    #' @examples
    #' # convert array of PostOrders200Response (x) to a data frame
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
    #' Convert PostOrders200Response to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PostOrders200ResponseObject <- list()
      if (!is.null(self$`id`)) {
        PostOrders200ResponseObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`externalId`)) {
        PostOrders200ResponseObject[["externalId"]] <-
          self$`externalId`
      }
      if (!is.null(self$`externalIntegrationKey`)) {
        PostOrders200ResponseObject[["externalIntegrationKey"]] <-
          self$`externalIntegrationKey`
      }
      if (!is.null(self$`externalIntegrationId`)) {
        PostOrders200ResponseObject[["externalIntegrationId"]] <-
          self$`externalIntegrationId`
      }
      if (!is.null(self$`amount`)) {
        PostOrders200ResponseObject[["amount"]] <-
          self$`amount`
      }
      if (!is.null(self$`costFee`)) {
        PostOrders200ResponseObject[["costFee"]] <-
          self$`costFee`
      }
      if (!is.null(self$`pix`)) {
        PostOrders200ResponseObject[["pix"]] <-
          self$extractSimpleType(self$`pix`)
      }
      if (!is.null(self$`bankSlip`)) {
        PostOrders200ResponseObject[["bankSlip"]] <-
          self$extractSimpleType(self$`bankSlip`)
      }
      if (!is.null(self$`nuPay`)) {
        PostOrders200ResponseObject[["nuPay"]] <-
          self$extractSimpleType(self$`nuPay`)
      }
      if (!is.null(self$`picPay`)) {
        PostOrders200ResponseObject[["picPay"]] <-
          self$extractSimpleType(self$`picPay`)
      }
      if (!is.null(self$`creditCard`)) {
        PostOrders200ResponseObject[["creditCard"]] <-
          self$extractSimpleType(self$`creditCard`)
      }
      if (!is.null(self$`status`)) {
        PostOrders200ResponseObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`paymentMethod`)) {
        PostOrders200ResponseObject[["paymentMethod"]] <-
          self$`paymentMethod`
      }
      if (!is.null(self$`payedAt`)) {
        PostOrders200ResponseObject[["payedAt"]] <-
          self$`payedAt`
      }
      if (!is.null(self$`errorCode`)) {
        PostOrders200ResponseObject[["errorCode"]] <-
          self$`errorCode`
      }
      if (!is.null(self$`errorMessage`)) {
        PostOrders200ResponseObject[["errorMessage"]] <-
          self$`errorMessage`
      }
      if (!is.null(self$`orderItems`)) {
        PostOrders200ResponseObject[["orderItems"]] <-
          self$extractSimpleType(self$`orderItems`)
      }
      if (!is.null(self$`session`)) {
        PostOrders200ResponseObject[["session"]] <-
          self$extractSimpleType(self$`session`)
      }
      return(PostOrders200ResponseObject)
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
    #' Deserialize JSON string into an instance of PostOrders200Response
    #'
    #' @param input_json the JSON input
    #' @return the instance of PostOrders200Response
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
      if (!is.null(this_object$`amount`)) {
        self$`amount` <- this_object$`amount`
      }
      if (!is.null(this_object$`costFee`)) {
        self$`costFee` <- this_object$`costFee`
      }
      if (!is.null(this_object$`pix`)) {
        `pix_object` <- PostOrders200ResponsePix$new()
        `pix_object`$fromJSON(jsonlite::toJSON(this_object$`pix`, auto_unbox = TRUE, digits = NA))
        self$`pix` <- `pix_object`
      }
      if (!is.null(this_object$`bankSlip`)) {
        `bankslip_object` <- PostOrders200ResponseBankSlip$new()
        `bankslip_object`$fromJSON(jsonlite::toJSON(this_object$`bankSlip`, auto_unbox = TRUE, digits = NA))
        self$`bankSlip` <- `bankslip_object`
      }
      if (!is.null(this_object$`nuPay`)) {
        `nupay_object` <- PostOrders200ResponseNuPay$new()
        `nupay_object`$fromJSON(jsonlite::toJSON(this_object$`nuPay`, auto_unbox = TRUE, digits = NA))
        self$`nuPay` <- `nupay_object`
      }
      if (!is.null(this_object$`picPay`)) {
        `picpay_object` <- PostOrders200ResponsePicPay$new()
        `picpay_object`$fromJSON(jsonlite::toJSON(this_object$`picPay`, auto_unbox = TRUE, digits = NA))
        self$`picPay` <- `picpay_object`
      }
      if (!is.null(this_object$`creditCard`)) {
        `creditcard_object` <- PostOrders200ResponseCreditCard$new()
        `creditcard_object`$fromJSON(jsonlite::toJSON(this_object$`creditCard`, auto_unbox = TRUE, digits = NA))
        self$`creditCard` <- `creditcard_object`
      }
      if (!is.null(this_object$`status`)) {
        if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("Generating", "Pending", "Completed", "Failed", "Canceled", "Refunding", "Refunded", "InDispute", "Chargeback"))) {
          stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"Generating\", \"Pending\", \"Completed\", \"Failed\", \"Canceled\", \"Refunding\", \"Refunded\", \"InDispute\", \"Chargeback\".", sep = ""))
        }
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`paymentMethod`)) {
        if (!is.null(this_object$`paymentMethod`) && !(this_object$`paymentMethod` %in% c("Pix", "CreditCard", "DebitCard", "BankSlip", "Crypto", "ApplePay", "NuPay", "PicPay", "AmazonPay", "SepaDebit", "GooglePay"))) {
          stop(paste("Error! \"", this_object$`paymentMethod`, "\" cannot be assigned to `paymentMethod`. Must be \"Pix\", \"CreditCard\", \"DebitCard\", \"BankSlip\", \"Crypto\", \"ApplePay\", \"NuPay\", \"PicPay\", \"AmazonPay\", \"SepaDebit\", \"GooglePay\".", sep = ""))
        }
        self$`paymentMethod` <- this_object$`paymentMethod`
      }
      if (!is.null(this_object$`payedAt`)) {
        self$`payedAt` <- this_object$`payedAt`
      }
      if (!is.null(this_object$`errorCode`)) {
        self$`errorCode` <- this_object$`errorCode`
      }
      if (!is.null(this_object$`errorMessage`)) {
        self$`errorMessage` <- this_object$`errorMessage`
      }
      if (!is.null(this_object$`orderItems`)) {
        self$`orderItems` <- ApiClient$new()$deserializeObj(this_object$`orderItems`, "array[PostOrders200ResponseOrderItemsInner]", loadNamespace("payconductor-sdk"))
      }
      if (!is.null(this_object$`session`)) {
        `session_object` <- PostOrders200ResponseSession$new()
        `session_object`$fromJSON(jsonlite::toJSON(this_object$`session`, auto_unbox = TRUE, digits = NA))
        self$`session` <- `session_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PostOrders200Response in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PostOrders200Response
    #'
    #' @param input_json the JSON input
    #' @return the instance of PostOrders200Response
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`externalId` <- this_object$`externalId`
      self$`externalIntegrationKey` <- this_object$`externalIntegrationKey`
      self$`externalIntegrationId` <- this_object$`externalIntegrationId`
      self$`amount` <- this_object$`amount`
      self$`costFee` <- this_object$`costFee`
      self$`pix` <- PostOrders200ResponsePix$new()$fromJSON(jsonlite::toJSON(this_object$`pix`, auto_unbox = TRUE, digits = NA))
      self$`bankSlip` <- PostOrders200ResponseBankSlip$new()$fromJSON(jsonlite::toJSON(this_object$`bankSlip`, auto_unbox = TRUE, digits = NA))
      self$`nuPay` <- PostOrders200ResponseNuPay$new()$fromJSON(jsonlite::toJSON(this_object$`nuPay`, auto_unbox = TRUE, digits = NA))
      self$`picPay` <- PostOrders200ResponsePicPay$new()$fromJSON(jsonlite::toJSON(this_object$`picPay`, auto_unbox = TRUE, digits = NA))
      self$`creditCard` <- PostOrders200ResponseCreditCard$new()$fromJSON(jsonlite::toJSON(this_object$`creditCard`, auto_unbox = TRUE, digits = NA))
      if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("Generating", "Pending", "Completed", "Failed", "Canceled", "Refunding", "Refunded", "InDispute", "Chargeback"))) {
        stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"Generating\", \"Pending\", \"Completed\", \"Failed\", \"Canceled\", \"Refunding\", \"Refunded\", \"InDispute\", \"Chargeback\".", sep = ""))
      }
      self$`status` <- this_object$`status`
      if (!is.null(this_object$`paymentMethod`) && !(this_object$`paymentMethod` %in% c("Pix", "CreditCard", "DebitCard", "BankSlip", "Crypto", "ApplePay", "NuPay", "PicPay", "AmazonPay", "SepaDebit", "GooglePay"))) {
        stop(paste("Error! \"", this_object$`paymentMethod`, "\" cannot be assigned to `paymentMethod`. Must be \"Pix\", \"CreditCard\", \"DebitCard\", \"BankSlip\", \"Crypto\", \"ApplePay\", \"NuPay\", \"PicPay\", \"AmazonPay\", \"SepaDebit\", \"GooglePay\".", sep = ""))
      }
      self$`paymentMethod` <- this_object$`paymentMethod`
      self$`payedAt` <- this_object$`payedAt`
      self$`errorCode` <- this_object$`errorCode`
      self$`errorMessage` <- this_object$`errorMessage`
      self$`orderItems` <- ApiClient$new()$deserializeObj(this_object$`orderItems`, "array[PostOrders200ResponseOrderItemsInner]", loadNamespace("payconductor-sdk"))
      self$`session` <- PostOrders200ResponseSession$new()$fromJSON(jsonlite::toJSON(this_object$`session`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to PostOrders200Response and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for PostOrders200Response: the required field `id` is missing."))
      }
      # check the required field `externalId`
      if (!is.null(input_json$`externalId`)) {
        if (!(is.character(input_json$`externalId`) && length(input_json$`externalId`) == 1)) {
          stop(paste("Error! Invalid data for `externalId`. Must be a string:", input_json$`externalId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostOrders200Response: the required field `externalId` is missing."))
      }
      # check the required field `externalIntegrationKey`
      if (!is.null(input_json$`externalIntegrationKey`)) {
        if (!(is.character(input_json$`externalIntegrationKey`) && length(input_json$`externalIntegrationKey`) == 1)) {
          stop(paste("Error! Invalid data for `externalIntegrationKey`. Must be a string:", input_json$`externalIntegrationKey`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostOrders200Response: the required field `externalIntegrationKey` is missing."))
      }
      # check the required field `externalIntegrationId`
      if (!is.null(input_json$`externalIntegrationId`)) {
        if (!(is.character(input_json$`externalIntegrationId`) && length(input_json$`externalIntegrationId`) == 1)) {
          stop(paste("Error! Invalid data for `externalIntegrationId`. Must be a string:", input_json$`externalIntegrationId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostOrders200Response: the required field `externalIntegrationId` is missing."))
      }
      # check the required field `amount`
      if (!is.null(input_json$`amount`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostOrders200Response: the required field `amount` is missing."))
      }
      # check the required field `costFee`
      if (!is.null(input_json$`costFee`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostOrders200Response: the required field `costFee` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        if (!(is.character(input_json$`status`) && length(input_json$`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", input_json$`status`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostOrders200Response: the required field `status` is missing."))
      }
      # check the required field `paymentMethod`
      if (!is.null(input_json$`paymentMethod`)) {
        if (!(is.character(input_json$`paymentMethod`) && length(input_json$`paymentMethod`) == 1)) {
          stop(paste("Error! Invalid data for `paymentMethod`. Must be a string:", input_json$`paymentMethod`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostOrders200Response: the required field `paymentMethod` is missing."))
      }
      # check the required field `payedAt`
      if (!is.null(input_json$`payedAt`)) {
        if (!(is.character(input_json$`payedAt`) && length(input_json$`payedAt`) == 1)) {
          stop(paste("Error! Invalid data for `payedAt`. Must be a string:", input_json$`payedAt`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostOrders200Response: the required field `payedAt` is missing."))
      }
      # check the required field `errorCode`
      if (!is.null(input_json$`errorCode`)) {
        if (!(is.character(input_json$`errorCode`) && length(input_json$`errorCode`) == 1)) {
          stop(paste("Error! Invalid data for `errorCode`. Must be a string:", input_json$`errorCode`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostOrders200Response: the required field `errorCode` is missing."))
      }
      # check the required field `errorMessage`
      if (!is.null(input_json$`errorMessage`)) {
        if (!(is.character(input_json$`errorMessage`) && length(input_json$`errorMessage`) == 1)) {
          stop(paste("Error! Invalid data for `errorMessage`. Must be a string:", input_json$`errorMessage`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostOrders200Response: the required field `errorMessage` is missing."))
      }
      # check the required field `orderItems`
      if (!is.null(input_json$`orderItems`)) {
        stopifnot(is.vector(input_json$`orderItems`), length(input_json$`orderItems`) != 0)
        tmp <- sapply(input_json$`orderItems`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostOrders200Response: the required field `orderItems` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PostOrders200Response
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

      # check if the required `amount` is null
      if (is.null(self$`amount`)) {
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

      # check if the required `paymentMethod` is null
      if (is.null(self$`paymentMethod`)) {
        return(FALSE)
      }

      # check if the required `orderItems` is null
      if (is.null(self$`orderItems`)) {
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

      # check if the required `amount` is null
      if (is.null(self$`amount`)) {
        invalid_fields["amount"] <- "Non-nullable required field `amount` cannot be null."
      }

      # check if the required `costFee` is null
      if (is.null(self$`costFee`)) {
        invalid_fields["costFee"] <- "Non-nullable required field `costFee` cannot be null."
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
      }

      # check if the required `paymentMethod` is null
      if (is.null(self$`paymentMethod`)) {
        invalid_fields["paymentMethod"] <- "Non-nullable required field `paymentMethod` cannot be null."
      }

      # check if the required `orderItems` is null
      if (is.null(self$`orderItems`)) {
        invalid_fields["orderItems"] <- "Non-nullable required field `orderItems` cannot be null."
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
# PostOrders200Response$unlock()
#
## Below is an example to define the print function
# PostOrders200Response$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PostOrders200Response$lock()

