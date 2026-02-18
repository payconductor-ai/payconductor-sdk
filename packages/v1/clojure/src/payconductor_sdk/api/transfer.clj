(ns payconductor-sdk.api.transfer
  (:require [payconductor-sdk.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [payconductor-sdk.specs.post-orders-200-response-pic-pay :refer :all]
            [payconductor-sdk.specs.post-orders-request-payment :refer :all]
            [payconductor-sdk.specs.customer-2 :refer :all]
            [payconductor-sdk.specs.customer-1 :refer :all]
            [payconductor-sdk.specs.complete-card-data-expiration :refer :all]
            [payconductor-sdk.specs.post-orders-request-items-inner :refer :all]
            [payconductor-sdk.specs.post-card-tokenization-200-response :refer :all]
            [payconductor-sdk.specs.credit-card :refer :all]
            [payconductor-sdk.specs.post-orders-200-response-credit-card :refer :all]
            [payconductor-sdk.specs.post-withdraws-200-response :refer :all]
            [payconductor-sdk.specs.credit-card-card :refer :all]
            [payconductor-sdk.specs.bank-slip :refer :all]
            [payconductor-sdk.specs.post-orders-request :refer :all]
            [payconductor-sdk.specs.pix-expiration-in-seconds :refer :all]
            [payconductor-sdk.specs.post-orders-200-response-pix :refer :all]
            [payconductor-sdk.specs.post-orders-200-response :refer :all]
            [payconductor-sdk.specs.merchant-input :refer :all]
            [payconductor-sdk.specs.tokenized-card :refer :all]
            [payconductor-sdk.specs.nu-pay-nu-pay :refer :all]
            [payconductor-sdk.specs.post-orders-request-fingerprints :refer :all]
            [payconductor-sdk.specs.pic-pay :refer :all]
            [payconductor-sdk.specs.nu-pay :refer :all]
            [payconductor-sdk.specs.post-withdraws-request :refer :all]
            [payconductor-sdk.specs.post-withdraws-200-response-payed-at :refer :all]
            [payconductor-sdk.specs.post-card-tokenization-request :refer :all]
            [payconductor-sdk.specs.post-orders-request-session :refer :all]
            [payconductor-sdk.specs.pix :refer :all]
            [payconductor-sdk.specs.complete-card-data :refer :all]
            [payconductor-sdk.specs.post-orders-200-response-bank-slip :refer :all]
            [payconductor-sdk.specs.post-orders-200-response-nu-pay :refer :all]
            [payconductor-sdk.specs.bank-slip-expiration-in-days :refer :all]
            [payconductor-sdk.specs.post-withdraws-request-payout-account :refer :all]
            [payconductor-sdk.specs.post-orders-200-response-order-items-inner :refer :all]
            [payconductor-sdk.specs.customer-2-document-type :refer :all]
            [payconductor-sdk.specs.post-card-tokenization-request-customer :refer :all]
            [payconductor-sdk.specs.post-orders-200-response-session :refer :all]
            [payconductor-sdk.specs.credit-card-installments :refer :all]
            [payconductor-sdk.specs.customer-address :refer :all]
            [payconductor-sdk.specs.post-card-tokenization-request-customer-any-of :refer :all]
            [payconductor-sdk.specs.post-withdraws-200-response-payout-account :refer :all]
            [payconductor-sdk.specs.customer :refer :all]
            )
  (:import (java.io File)))


(defn-spec get-withdraws-with-http-info any?
  "List withdrawals
  Returns a paginated list of withdrawals and transfers. Filter by creation date or search by ID (withdrawal ID, external ID, acquirer ID, or End2EndID)"
  ([period string?, page float?, pageSize float?, ] (get-withdraws-with-http-info period page pageSize nil))
  ([period string?, page float?, pageSize float?, {:keys [endDate startDate id]} (s/map-of keyword? any?)]
   (check-required-params period page pageSize)
   (call-api "/withdraws/" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"period" period "endDate" endDate "startDate" startDate "page" page "pageSize" pageSize "id" id }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    ["basicAuth"]})))

(defn-spec get-withdraws any?
  "List withdrawals
  Returns a paginated list of withdrawals and transfers. Filter by creation date or search by ID (withdrawal ID, external ID, acquirer ID, or End2EndID)"
  ([period string?, page float?, pageSize float?, ] (get-withdraws period page pageSize nil))
  ([period string?, page float?, pageSize float?, optional-params any?]
   (let [res (:data (get-withdraws-with-http-info period page pageSize optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec get-withdraws-by-id-with-http-info any?
  "Get withdrawal by ID
  Returns the details of a specific withdrawal or transfer using its ID"
  [id string?]
  (check-required-params id)
  (call-api "/withdraws/{id}" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       []
             :auth-names    ["basicAuth"]}))

(defn-spec get-withdraws-by-id any?
  "Get withdrawal by ID
  Returns the details of a specific withdrawal or transfer using its ID"
  [id string?]
  (let [res (:data (get-withdraws-by-id-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec post-withdraws-with-http-info any?
  "Create withdrawal
  Create a new withdrawal or transfer to the provided payment account"
  [post-withdraws-request post-withdraws-request]
  (check-required-params post-withdraws-request)
  (call-api "/withdraws/" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    post-withdraws-request
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    ["basicAuth"]}))

(defn-spec post-withdraws post-withdraws-200-response-spec
  "Create withdrawal
  Create a new withdrawal or transfer to the provided payment account"
  [post-withdraws-request post-withdraws-request]
  (let [res (:data (post-withdraws-with-http-info post-withdraws-request))]
    (if (:decode-models *api-context*)
       (st/decode post-withdraws-200-response-spec res st/string-transformer)
       res)))


