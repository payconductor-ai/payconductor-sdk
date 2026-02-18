(ns payconductor-sdk.specs.post-card-tokenization-request-customer
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [payconductor-sdk.specs.customer-address :refer :all]
            [payconductor-sdk.specs.customer-2-document-type :refer :all]
            )
  (:import (java.io File)))


(def post-card-tokenization-request-customer-data
  {
   (ds/opt :address) customer-address-spec
   (ds/req :documentNumber) string?
   (ds/req :documentType) customer-2-document-type-spec
   (ds/req :email) string?
   (ds/req :name) string?
   (ds/opt :phoneNumber) string?
   (ds/req :id) string?
   })

(def post-card-tokenization-request-customer-spec
  (ds/spec
    {:name ::post-card-tokenization-request-customer
     :spec post-card-tokenization-request-customer-data}))
