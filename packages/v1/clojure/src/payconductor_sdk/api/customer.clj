(ns payconductor-sdk.api.customer
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


(defn-spec delete-customers-by-id-with-http-info any?
  ""
  [id string?]
  (check-required-params id)
  (call-api "/customers/{id}" :delete
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       []
             :auth-names    ["basicAuth"]}))

(defn-spec delete-customers-by-id any?
  ""
  [id string?]
  (let [res (:data (delete-customers-by-id-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec get-customers-with-http-info any?
  ""
  ([page float?, pageSize float?, period string?, ] (get-customers-with-http-info page pageSize period nil))
  ([page float?, pageSize float?, period string?, {:keys [email name endDate startDate]} (s/map-of keyword? any?)]
   (check-required-params page pageSize period)
   (call-api "/customers/" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"email" email "name" name "page" page "pageSize" pageSize "period" period "endDate" endDate "startDate" startDate }
              :form-params   {}
              :content-types []
              :accepts       []
              :auth-names    ["basicAuth"]})))

(defn-spec get-customers any?
  ""
  ([page float?, pageSize float?, period string?, ] (get-customers page pageSize period nil))
  ([page float?, pageSize float?, period string?, optional-params any?]
   (let [res (:data (get-customers-with-http-info page pageSize period optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec get-customers-by-id-with-http-info any?
  ""
  [id string?]
  (check-required-params id)
  (call-api "/customers/{id}" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       []
             :auth-names    ["basicAuth"]}))

(defn-spec get-customers-by-id any?
  ""
  [id string?]
  (let [res (:data (get-customers-by-id-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec patch-customers-by-id-with-http-info any?
  ""
  [id string?, customer-1 customer-1]
  (check-required-params id customer-1)
  (call-api "/customers/{id}" :patch
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    customer-1
             :content-types ["application/json"]
             :accepts       []
             :auth-names    ["basicAuth"]}))

(defn-spec patch-customers-by-id any?
  ""
  [id string?, customer-1 customer-1]
  (let [res (:data (patch-customers-by-id-with-http-info id customer-1))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec post-customers-with-http-info any?
  ""
  [customer customer]
  (check-required-params customer)
  (call-api "/customers/" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    customer
             :content-types ["application/json"]
             :accepts       []
             :auth-names    ["basicAuth"]}))

(defn-spec post-customers any?
  ""
  [customer customer]
  (let [res (:data (post-customers-with-http-info customer))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


