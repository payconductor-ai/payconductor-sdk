(ns payconductor-sdk.api.card-tokenization
  (:require [payconductor-sdk.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [payconductor-sdk.specs.pix-type :refer :all]
            [payconductor-sdk.specs.post-orders-200-response-pic-pay :refer :all]
            [payconductor-sdk.specs.post-orders-request-payment :refer :all]
            [payconductor-sdk.specs.customer-1 :refer :all]
            [payconductor-sdk.specs.complete-card-data-expiration :refer :all]
            [payconductor-sdk.specs.post-orders-request-items-inner :refer :all]
            [payconductor-sdk.specs.post-card-tokenization-200-response :refer :all]
            [payconductor-sdk.specs.credit-card :refer :all]
            [payconductor-sdk.specs.post-orders-200-response-credit-card :refer :all]
            [payconductor-sdk.specs.post-withdraws-200-response :refer :all]
            [payconductor-sdk.specs.bank-slip :refer :all]
            [payconductor-sdk.specs.post-orders-request :refer :all]
            [payconductor-sdk.specs.credit-card-card :refer :all]
            [payconductor-sdk.specs.pix-expiration-in-seconds :refer :all]
            [payconductor-sdk.specs.post-orders-200-response-pix :refer :all]
            [payconductor-sdk.specs.post-orders-200-response :refer :all]
            [payconductor-sdk.specs.merchant-input :refer :all]
            [payconductor-sdk.specs.tokenized-card :refer :all]
            [payconductor-sdk.specs.nu-pay-nu-pay :refer :all]
            [payconductor-sdk.specs.post-orders-request-fingerprints :refer :all]
            [payconductor-sdk.specs.pic-pay :refer :all]
            [payconductor-sdk.specs.draft :refer :all]
            [payconductor-sdk.specs.draft-expiration-in-seconds :refer :all]
            [payconductor-sdk.specs.nu-pay :refer :all]
            [payconductor-sdk.specs.post-withdraws-request :refer :all]
            [payconductor-sdk.specs.post-withdraws-200-response-payed-at :refer :all]
            [payconductor-sdk.specs.post-card-tokenization-request :refer :all]
            [payconductor-sdk.specs.event :refer :all]
            [payconductor-sdk.specs.post-orders-request-session :refer :all]
            [payconductor-sdk.specs.pix :refer :all]
            [payconductor-sdk.specs.complete-card-data :refer :all]
            [payconductor-sdk.specs.post-orders-200-response-bank-slip :refer :all]
            [payconductor-sdk.specs.post-orders-200-response-nu-pay :refer :all]
            [payconductor-sdk.specs.payment-method :refer :all]
            [payconductor-sdk.specs.bank-slip-expiration-in-days :refer :all]
            [payconductor-sdk.specs.post-withdraws-request-payout-account :refer :all]
            [payconductor-sdk.specs.post-orders-200-response-order-items-inner :refer :all]
            [payconductor-sdk.specs.post-card-tokenization-request-customer :refer :all]
            [payconductor-sdk.specs.document-type :refer :all]
            [payconductor-sdk.specs.post-orders-200-response-session :refer :all]
            [payconductor-sdk.specs.credit-card-installments :refer :all]
            [payconductor-sdk.specs.customer-address :refer :all]
            [payconductor-sdk.specs.post-card-tokenization-request-customer-any-of :refer :all]
            [payconductor-sdk.specs.available-payment-methods :refer :all]
            [payconductor-sdk.specs.post-orders-by-id-confirm-200-response :refer :all]
            [payconductor-sdk.specs.post-withdraws-200-response-payout-account :refer :all]
            [payconductor-sdk.specs.status :refer :all]
            [payconductor-sdk.specs.customer :refer :all]
            )
  (:import (java.io File)))


(defn-spec post-card-tokenization-with-http-info any?
  "Tokenize card
  Tokenize credit cards for future charges."
  [post-card-tokenization-request post-card-tokenization-request]
  (check-required-params post-card-tokenization-request)
  (call-api "/card-tokenization/" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    post-card-tokenization-request
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    ["basicAuth"]}))

(defn-spec post-card-tokenization post-card-tokenization-200-response-spec
  "Tokenize card
  Tokenize credit cards for future charges."
  [post-card-tokenization-request post-card-tokenization-request]
  (let [res (:data (post-card-tokenization-with-http-info post-card-tokenization-request))]
    (if (:decode-models *api-context*)
       (st/decode post-card-tokenization-200-response-spec res st/string-transformer)
       res)))


