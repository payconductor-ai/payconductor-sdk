(ns payconductor-sdk.specs.complete-card-data
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [payconductor-sdk.specs.complete-card-data-expiration :refer :all]
            )
  (:import (java.io File)))


(def complete-card-data-data
  {
   (ds/req :cvv) string?
   (ds/req :expiration) complete-card-data-expiration-spec
   (ds/req :holderName) string?
   (ds/req :number) string?
   })

(def complete-card-data-spec
  (ds/spec
    {:name ::complete-card-data
     :spec complete-card-data-data}))
