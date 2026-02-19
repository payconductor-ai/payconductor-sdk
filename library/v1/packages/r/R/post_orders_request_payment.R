#' @docType class
#' @title PostOrdersRequestPayment
#'
#' @description PostOrdersRequestPayment Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PostOrdersRequestPayment <- R6::R6Class(
  "PostOrdersRequestPayment",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("BankSlip", "CreditCard", "Draft", "NuPay", "PicPay", "Pix"),

    #' @description
    #' Initialize a new PostOrdersRequestPayment.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "BankSlip", "CreditCard", "Draft", "NuPay", "PicPay", "Pix"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BankSlip") {
        self$actual_instance <- instance
        self$actual_type <- "BankSlip"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "CreditCard") {
        self$actual_instance <- instance
        self$actual_type <- "CreditCard"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "Draft") {
        self$actual_instance <- instance
        self$actual_type <- "Draft"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NuPay") {
        self$actual_instance <- instance
        self$actual_type <- "NuPay"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PicPay") {
        self$actual_instance <- instance
        self$actual_type <- "PicPay"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "Pix") {
        self$actual_instance <- instance
        self$actual_type <- "Pix"
      } else {
        stop(paste("Failed to initialize PostOrdersRequestPayment with oneOf schemas BankSlip, CreditCard, Draft, NuPay, PicPay, Pix. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of PostOrdersRequestPayment.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of PostOrdersRequestPayment.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of PostOrdersRequestPayment.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of PostOrdersRequestPayment.
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      `Pix_result` <- tryCatch({
          `Pix`$public_methods$validateJSON(input)
          `Pix_instance` <- `Pix`$new()
          instance <- `Pix_instance`$fromJSON(input)
          instance_type <- "Pix"
          matched_schemas <- append(matched_schemas, "Pix")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`Pix_result`["error"])) {
        error_messages <- append(error_messages, `Pix_result`["message"])
      }

      `CreditCard_result` <- tryCatch({
          `CreditCard`$public_methods$validateJSON(input)
          `CreditCard_instance` <- `CreditCard`$new()
          instance <- `CreditCard_instance`$fromJSON(input)
          instance_type <- "CreditCard"
          matched_schemas <- append(matched_schemas, "CreditCard")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`CreditCard_result`["error"])) {
        error_messages <- append(error_messages, `CreditCard_result`["message"])
      }

      `BankSlip_result` <- tryCatch({
          `BankSlip`$public_methods$validateJSON(input)
          `BankSlip_instance` <- `BankSlip`$new()
          instance <- `BankSlip_instance`$fromJSON(input)
          instance_type <- "BankSlip"
          matched_schemas <- append(matched_schemas, "BankSlip")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BankSlip_result`["error"])) {
        error_messages <- append(error_messages, `BankSlip_result`["message"])
      }

      `NuPay_result` <- tryCatch({
          `NuPay`$public_methods$validateJSON(input)
          `NuPay_instance` <- `NuPay`$new()
          instance <- `NuPay_instance`$fromJSON(input)
          instance_type <- "NuPay"
          matched_schemas <- append(matched_schemas, "NuPay")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NuPay_result`["error"])) {
        error_messages <- append(error_messages, `NuPay_result`["message"])
      }

      `PicPay_result` <- tryCatch({
          `PicPay`$public_methods$validateJSON(input)
          `PicPay_instance` <- `PicPay`$new()
          instance <- `PicPay_instance`$fromJSON(input)
          instance_type <- "PicPay"
          matched_schemas <- append(matched_schemas, "PicPay")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PicPay_result`["error"])) {
        error_messages <- append(error_messages, `PicPay_result`["message"])
      }

      `Draft_result` <- tryCatch({
          `Draft`$public_methods$validateJSON(input)
          `Draft_instance` <- `Draft`$new()
          instance <- `Draft_instance`$fromJSON(input)
          instance_type <- "Draft"
          matched_schemas <- append(matched_schemas, "Draft")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`Draft_result`["error"])) {
        error_messages <- append(error_messages, `Draft_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into PostOrdersRequestPayment with oneOf schemas BankSlip, CreditCard, Draft, NuPay, PicPay, Pix. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into PostOrdersRequestPayment with oneOf schemas BankSlip, CreditCard, Draft, NuPay, PicPay, Pix. Details: >>",
                   paste(error_messages, collapse = " >> ")))
      }

      self
    },

    #' @description
    #' Serialize PostOrdersRequestPayment to JSON string.
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JSON string representation of the PostOrdersRequestPayment.
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      if (!is.null(self$actual_instance)) {
        json <- jsonlite::toJSON(simple, auto_unbox = TRUE, ...)
        return(as.character(jsonlite::minify(json)))
      } else {
        return(NULL)
      }
    },

    #' @description
    #' Convert to an R object. This method is deprecated. Use `toSimpleType()` instead.
    toJSON = function() {
      .Deprecated(new = "toSimpleType", msg = "Use the '$toSimpleType()' method instead since that is more clearly named. Use '$toJSONString()' to get a JSON string")
      return(self$toSimpleType())
    },

    #' @description
    #' Convert PostOrdersRequestPayment to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      if (!is.null(self$actual_instance)) {
        return(self$actual_instance$toSimpleType())
      } else {
        return(NULL)
      }
    },

    #' @description
    #' Validate the input JSON with respect to PostOrdersRequestPayment and
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
        sprintf('"one_of": "%s"', paste(unlist(self$one_of), collapse = ", "))
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
#PostOrdersRequestPayment$unlock()
#
## Below is an example to define the print function
#PostOrdersRequestPayment$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#PostOrdersRequestPayment$lock()

