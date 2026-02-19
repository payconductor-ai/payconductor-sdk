(ns payconductor-sdk.specs.post-orders-request-payment
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [payconductor-sdk.specs.payment-method :refer :all]
            [payconductor-sdk.specs.draft-expiration-in-seconds :refer :all]
            [payconductor-sdk.specs.credit-card-card :refer :all]
            [payconductor-sdk.specs.credit-card-installments :refer :all]
            [payconductor-sdk.specs.bank-slip-expiration-in-days :refer :all]
            [payconductor-sdk.specs.nu-pay-nu-pay :refer :all]
            [payconductor-sdk.specs.available-payment-methods :refer :all]
            )
  (:import (java.io File)))


(def post-orders-request-payment-data
  {
   (ds/req :paymentMethod) payment-method-spec
   (ds/opt :expirationInSeconds) draft-expiration-in-seconds-spec
   (ds/req :card) credit-card-card-spec
   (ds/req :installments) credit-card-installments-spec
   (ds/opt :softDescriptor) string?
   (ds/opt :expirationInDays) bank-slip-expiration-in-days-spec
   (ds/req :nuPay) nu-pay-nu-pay-spec
   (ds/opt :availablePaymentMethods) (s/coll-of available-payment-methods-spec)
   })

(def post-orders-request-payment-spec
  (ds/spec
    {:name ::post-orders-request-payment
     :spec post-orders-request-payment-data}))
