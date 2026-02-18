(ns payconductor-sdk.specs.complete-card-data-expiration
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def complete-card-data-expiration-data
  {
   (ds/req :month) float?
   (ds/req :year) float?
   })

(def complete-card-data-expiration-spec
  (ds/spec
    {:name ::complete-card-data-expiration
     :spec complete-card-data-expiration-data}))
