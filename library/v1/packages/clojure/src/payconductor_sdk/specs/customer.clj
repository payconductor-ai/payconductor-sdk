(ns payconductor-sdk.specs.customer
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [payconductor-sdk.specs.customer-address :refer :all]
            )
  (:import (java.io File)))


(def customer-data
  {
   (ds/opt :address) customer-address-spec
   (ds/req :documentNumber) string?
   (ds/req :documentType) string?
   (ds/req :email) string?
   (ds/req :name) string?
   (ds/opt :phoneNumber) string?
   })

(def customer-spec
  (ds/spec
    {:name ::customer
     :spec customer-data}))
