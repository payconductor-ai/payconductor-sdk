(ns payconductor-sdk.specs.available-payment-methods
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def available-payment-methods-data
  {
   })

(def available-payment-methods-spec
  (ds/spec
    {:name ::available-payment-methods
     :spec available-payment-methods-data}))
