(ns payconductor-sdk.specs.customer-1
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [payconductor-sdk.specs.customer-address :refer :all]
            )
  (:import (java.io File)))


(def customer-1-data
  {
   (ds/opt :address) customer-address-spec
   (ds/opt :documentNumber) string?
   (ds/opt :documentType) string?
   (ds/opt :email) string?
   (ds/opt :name) string?
   (ds/opt :phoneNumber) string?
   })

(def customer-1-spec
  (ds/spec
    {:name ::customer-1
     :spec customer-1-data}))
