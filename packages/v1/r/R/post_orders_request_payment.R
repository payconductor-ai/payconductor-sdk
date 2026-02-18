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
    #' @field any_of  a list of object types defined in the anyOf schema.
    any_of = list("BankSlip", "CreditCard", "NuPay", "PicPay", "Pix"),

    #' @description
    #' Initialize a new PostOrdersRequestPayment.
    #'
    #' @param instance an instance of the object defined in the anyOf schemas: "BankSlip", "CreditCard", "NuPay", "PicPay", "Pix"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BankSlip") {
        self$actual_instance <- instance
        self$actual_type <- "BankSlip"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "CreditCard") {
        self$actual_instance <- instance
        self$actual_type <- "CreditCard"
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
        stop(paste("Failed to initialize PostOrdersRequestPayment with anyOf schemas BankSlip, CreditCard, NuPay, PicPay, Pix. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of PostOrdersRequestPayment.
    #' An alias to the method `fromJSON`.
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
      error_messages <- list()

      `Pix_result` <- tryCatch({
          `Pix`$public_methods$validateJSON(input)
          `Pix_instance` <- `Pix`$new()
          self$actual_instance <- `Pix_instance`$fromJSON(input)
          self$actual_type <- "Pix"
          return(self)
        },
        error = function(err) err
      )

      if (!is.null(`Pix_result`["error"])) {
        error_messages <- append(error_messages, `Pix_result`["message"])
      }

      `CreditCard_result` <- tryCatch({
          `CreditCard`$public_methods$validateJSON(input)
          `CreditCard_instance` <- `CreditCard`$new()
          self$actual_instance <- `CreditCard_instance`$fromJSON(input)
          self$actual_type <- "CreditCard"
          return(self)
        },
        error = function(err) err
      )

      if (!is.null(`CreditCard_result`["error"])) {
        error_messages <- append(error_messages, `CreditCard_result`["message"])
      }

      `BankSlip_result` <- tryCatch({
          `BankSlip`$public_methods$validateJSON(input)
          `BankSlip_instance` <- `BankSlip`$new()
          self$actual_instance <- `BankSlip_instance`$fromJSON(input)
          self$actual_type <- "BankSlip"
          return(self)
        },
        error = function(err) err
      )

      if (!is.null(`BankSlip_result`["error"])) {
        error_messages <- append(error_messages, `BankSlip_result`["message"])
      }

      `NuPay_result` <- tryCatch({
          `NuPay`$public_methods$validateJSON(input)
          `NuPay_instance` <- `NuPay`$new()
          self$actual_instance <- `NuPay_instance`$fromJSON(input)
          self$actual_type <- "NuPay"
          return(self)
        },
        error = function(err) err
      )

      if (!is.null(`NuPay_result`["error"])) {
        error_messages <- append(error_messages, `NuPay_result`["message"])
      }

      `PicPay_result` <- tryCatch({
          `PicPay`$public_methods$validateJSON(input)
          `PicPay_instance` <- `PicPay`$new()
          self$actual_instance <- `PicPay_instance`$fromJSON(input)
          self$actual_type <- "PicPay"
          return(self)
        },
        error = function(err) err
      )

      if (!is.null(`PicPay_result`["error"])) {
        error_messages <- append(error_messages, `PicPay_result`["message"])
      }

      # no match
      stop(paste("No match found when deserializing the input into PostOrdersRequestPayment with anyOf schemas BankSlip, CreditCard, NuPay, PicPay, Pix. Details: >>",
                 paste(error_messages, collapse = " >> ")))
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
        NULL
      }
    },

    #' @description
    #' Serialize PostOrdersRequestPayment to JSON string.
    #'
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JSON string representation of the PostOrdersRequestPayment.
    toJSONString = function(...) {
      json <- jsonlite::toJSON(self$toSimpleType(), auto_unbox = TRUE, ...)
      return(as.character(jsonlite::minify(json)))
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
#PostOrdersRequestPayment$unlock()
#
## Below is an example to define the print function
#PostOrdersRequestPayment$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#PostOrdersRequestPayment$lock()

