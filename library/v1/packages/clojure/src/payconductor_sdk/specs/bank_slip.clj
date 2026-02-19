(ns payconductor-sdk.specs.bank-slip
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [payconductor-sdk.specs.payment-method :refer :all]
            [payconductor-sdk.specs.bank-slip-expiration-in-days :refer :all]
            )
  (:import (java.io File)))


(def bank-slip-data
  {
   (ds/req :paymentMethod) payment-method-spec
   (ds/opt :expirationInDays) bank-slip-expiration-in-days-spec
   })

(def bank-slip-spec
  (ds/spec
    {:name ::bank-slip
     :spec bank-slip-data}))
