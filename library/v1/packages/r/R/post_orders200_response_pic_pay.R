#' Create a new PostOrders200ResponsePicPay
#'
#' @description
#' PostOrders200ResponsePicPay Class
#'
#' @docType class
#' @title PostOrders200ResponsePicPay
#' @description PostOrders200ResponsePicPay Class
#' @format An \code{R6Class} generator object
#' @field copyAndPasteCode PicPay copy and paste code character
#' @field qrCodeUrl PicPay QR Code image URL character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PostOrders200ResponsePicPay <- R6::R6Class(
  "PostOrders200ResponsePicPay",
  public = list(
    `copyAndPasteCode` = NULL,
    `qrCodeUrl` = NULL,

    #' @description
    #' Initialize a new PostOrders200ResponsePicPay class.
    #'
    #' @param copyAndPasteCode PicPay copy and paste code
    #' @param qrCodeUrl PicPay QR Code image URL
    #' @param ... Other optional arguments.
    initialize = function(`copyAndPasteCode`, `qrCodeUrl`, ...) {
      if (!missing(`copyAndPasteCode`)) {
        if (!(is.character(`copyAndPasteCode`) && length(`copyAndPasteCode`) == 1)) {
          stop(paste("Error! Invalid data for `copyAndPasteCode`. Must be a string:", `copyAndPasteCode`))
        }
        self$`copyAndPasteCode` <- `copyAndPasteCode`
      }
      if (!missing(`qrCodeUrl`)) {
        if (!(is.character(`qrCodeUrl`) && length(`qrCodeUrl`) == 1)) {
          stop(paste("Error! Invalid data for `qrCodeUrl`. Must be a string:", `qrCodeUrl`))
        }
        self$`qrCodeUrl` <- `qrCodeUrl`
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
    #' @return PostOrders200ResponsePicPay as a base R list.
    #' @examples
    #' # convert array of PostOrders200ResponsePicPay (x) to a data frame
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
    #' Convert PostOrders200ResponsePicPay to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PostOrders200ResponsePicPayObject <- list()
      if (!is.null(self$`copyAndPasteCode`)) {
        PostOrders200ResponsePicPayObject[["copyAndPasteCode"]] <-
          self$`copyAndPasteCode`
      }
      if (!is.null(self$`qrCodeUrl`)) {
        PostOrders200ResponsePicPayObject[["qrCodeUrl"]] <-
          self$`qrCodeUrl`
      }
      return(PostOrders200ResponsePicPayObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PostOrders200ResponsePicPay
    #'
    #' @param input_json the JSON input
    #' @return the instance of PostOrders200ResponsePicPay
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`copyAndPasteCode`)) {
        self$`copyAndPasteCode` <- this_object$`copyAndPasteCode`
      }
      if (!is.null(this_object$`qrCodeUrl`)) {
        self$`qrCodeUrl` <- this_object$`qrCodeUrl`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PostOrders200ResponsePicPay in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PostOrders200ResponsePicPay
    #'
    #' @param input_json the JSON input
    #' @return the instance of PostOrders200ResponsePicPay
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`copyAndPasteCode` <- this_object$`copyAndPasteCode`
      self$`qrCodeUrl` <- this_object$`qrCodeUrl`
      self
    },

    #' @description
    #' Validate JSON input with respect to PostOrders200ResponsePicPay and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `copyAndPasteCode`
      if (!is.null(input_json$`copyAndPasteCode`)) {
        if (!(is.character(input_json$`copyAndPasteCode`) && length(input_json$`copyAndPasteCode`) == 1)) {
          stop(paste("Error! Invalid data for `copyAndPasteCode`. Must be a string:", input_json$`copyAndPasteCode`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostOrders200ResponsePicPay: the required field `copyAndPasteCode` is missing."))
      }
      # check the required field `qrCodeUrl`
      if (!is.null(input_json$`qrCodeUrl`)) {
        if (!(is.character(input_json$`qrCodeUrl`) && length(input_json$`qrCodeUrl`) == 1)) {
          stop(paste("Error! Invalid data for `qrCodeUrl`. Must be a string:", input_json$`qrCodeUrl`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostOrders200ResponsePicPay: the required field `qrCodeUrl` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PostOrders200ResponsePicPay
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `copyAndPasteCode` is null
      if (is.null(self$`copyAndPasteCode`)) {
        return(FALSE)
      }

      # check if the required `qrCodeUrl` is null
      if (is.null(self$`qrCodeUrl`)) {
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
      # check if the required `copyAndPasteCode` is null
      if (is.null(self$`copyAndPasteCode`)) {
        invalid_fields["copyAndPasteCode"] <- "Non-nullable required field `copyAndPasteCode` cannot be null."
      }

      # check if the required `qrCodeUrl` is null
      if (is.null(self$`qrCodeUrl`)) {
        invalid_fields["qrCodeUrl"] <- "Non-nullable required field `qrCodeUrl` cannot be null."
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
# PostOrders200ResponsePicPay$unlock()
#
## Below is an example to define the print function
# PostOrders200ResponsePicPay$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PostOrders200ResponsePicPay$lock()

