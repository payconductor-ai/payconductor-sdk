(ns payconductor-sdk.specs.customer-address
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def customer-address-data
  {
   (ds/req :city) string?
   (ds/req :country) string?
   (ds/req :neighborhood) string?
   (ds/req :number) string?
   (ds/req :state) string?
   (ds/req :street) string?
   (ds/req :zipCode) string?
   })

(def customer-address-spec
  (ds/spec
    {:name ::customer-address
     :spec customer-address-data}))
