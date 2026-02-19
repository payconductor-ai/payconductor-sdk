(ns payconductor-sdk.specs.post-orders-request
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [payconductor-sdk.specs.customer :refer :all]
            [payconductor-sdk.specs.post-orders-request-fingerprints :refer :all]
            [payconductor-sdk.specs.post-orders-request-items-inner :refer :all]
            [payconductor-sdk.specs.merchant-input :refer :all]
            [payconductor-sdk.specs.post-orders-request-payment :refer :all]
            [payconductor-sdk.specs.post-orders-request-session :refer :all]
            [payconductor-sdk.specs. :refer :all]
            )
  (:import (java.io File)))


(def post-orders-request-data
  {
   (ds/req :chargeAmount) float?
   (ds/req :clientIp) string?
   (ds/req :customer) customer-spec
   (ds/req :discountAmount) float?
   (ds/req :externalId) string?
   (ds/opt :fingerprints) post-orders-request-fingerprints-spec
   (ds/opt :items) (s/coll-of post-orders-request-items-inner-spec)
   (ds/opt :merchant) merchant-input-spec
   (ds/req :payment) post-orders-request-payment-spec
   (ds/opt :splitAmountTotal) float?
   (ds/opt :session) post-orders-request-session-spec
   (ds/req :shippingFee) float?
   (ds/req :taxFee) float?
   (ds/opt :metadata) any?
   })

(def post-orders-request-spec
  (ds/spec
    {:name ::post-orders-request
     :spec post-orders-request-data}))
