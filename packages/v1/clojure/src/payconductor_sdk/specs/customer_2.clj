(ns payconductor-sdk.specs.customer-2
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [payconductor-sdk.specs.customer-address :refer :all]
            [payconductor-sdk.specs.customer-2-document-type :refer :all]
            )
  (:import (java.io File)))


(def customer-2-data
  {
   (ds/opt :address) customer-address-spec
   (ds/req :documentNumber) string?
   (ds/req :documentType) customer-2-document-type-spec
   (ds/req :email) string?
   (ds/req :name) string?
   (ds/opt :phoneNumber) string?
   })

(def customer-2-spec
  (ds/spec
    {:name ::customer-2
     :spec customer-2-data}))
