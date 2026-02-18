(ns payconductor-sdk.specs.post-orders-request-payment
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [payconductor-sdk.specs.pix-expiration-in-seconds :refer :all]
            [payconductor-sdk.specs.credit-card-card :refer :all]
            [payconductor-sdk.specs.credit-card-installments :refer :all]
            [payconductor-sdk.specs.bank-slip-expiration-in-days :refer :all]
            [payconductor-sdk.specs.nu-pay-nu-pay :refer :all]
            )
  (:import (java.io File)))


(def post-orders-request-payment-data
  {
   (ds/req :paymentMethod) string?
   (ds/opt :expirationInSeconds) pix-expiration-in-seconds-spec
   (ds/req :card) credit-card-card-spec
   (ds/req :installments) credit-card-installments-spec
   (ds/opt :softDescriptor) string?
   (ds/opt :expirationInDays) bank-slip-expiration-in-days-spec
   (ds/req :nuPay) nu-pay-nu-pay-spec
   })

(def post-orders-request-payment-spec
  (ds/spec
    {:name ::post-orders-request-payment
     :spec post-orders-request-payment-data}))
