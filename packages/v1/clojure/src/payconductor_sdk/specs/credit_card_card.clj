(ns payconductor-sdk.specs.credit-card-card
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [payconductor-sdk.specs.complete-card-data-expiration :refer :all]
            )
  (:import (java.io File)))


(def credit-card-card-data
  {
   (ds/opt :firstSixCardNumber) string?
   (ds/req :token) string?
   (ds/req :cvv) string?
   (ds/req :expiration) complete-card-data-expiration-spec
   (ds/req :holderName) string?
   (ds/req :number) string?
   })

(def credit-card-card-spec
  (ds/spec
    {:name ::credit-card-card
     :spec credit-card-card-data}))
