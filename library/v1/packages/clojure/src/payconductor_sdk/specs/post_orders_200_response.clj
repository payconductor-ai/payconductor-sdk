(ns payconductor-sdk.specs.post-orders-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [payconductor-sdk.specs.post-orders-200-response-pix :refer :all]
            [payconductor-sdk.specs.post-orders-200-response-bank-slip :refer :all]
            [payconductor-sdk.specs.post-orders-200-response-nu-pay :refer :all]
            [payconductor-sdk.specs.post-orders-200-response-pic-pay :refer :all]
            [payconductor-sdk.specs.post-orders-200-response-credit-card :refer :all]
            [payconductor-sdk.specs.status :refer :all]
            [payconductor-sdk.specs.payment-method :refer :all]
            [payconductor-sdk.specs.post-orders-200-response-order-items-inner :refer :all]
            [payconductor-sdk.specs.post-orders-200-response-session :refer :all]
            )
  (:import (java.io File)))


(def post-orders-200-response-data
  {
   (ds/req :id) string?
   (ds/req :externalId) string?
   (ds/req :externalIntegrationKey) string?
   (ds/req :externalIntegrationId) string?
   (ds/req :amount) float?
   (ds/req :costFee) float?
   (ds/opt :pix) post-orders-200-response-pix-spec
   (ds/opt :bankSlip) post-orders-200-response-bank-slip-spec
   (ds/opt :nuPay) post-orders-200-response-nu-pay-spec
   (ds/opt :picPay) post-orders-200-response-pic-pay-spec
   (ds/opt :creditCard) post-orders-200-response-credit-card-spec
   (ds/req :status) status-spec
   (ds/req :paymentMethod) payment-method-spec
   (ds/req :payedAt) string?
   (ds/req :errorCode) string?
   (ds/req :errorMessage) string?
   (ds/req :orderItems) (s/coll-of post-orders-200-response-order-items-inner-spec)
   (ds/opt :session) post-orders-200-response-session-spec
   })

(def post-orders-200-response-spec
  (ds/spec
    {:name ::post-orders-200-response
     :spec post-orders-200-response-data}))
