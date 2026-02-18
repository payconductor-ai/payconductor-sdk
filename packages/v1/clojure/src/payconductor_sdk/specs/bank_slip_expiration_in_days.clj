(ns payconductor-sdk.specs.bank-slip-expiration-in-days
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def bank-slip-expiration-in-days-data
  {
   })

(def bank-slip-expiration-in-days-spec
  (ds/spec
    {:name ::bank-slip-expiration-in-days
     :spec bank-slip-expiration-in-days-data}))
