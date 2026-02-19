(ns payconductor-sdk.specs.draft
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [payconductor-sdk.specs.payment-method :refer :all]
            [payconductor-sdk.specs.draft-expiration-in-seconds :refer :all]
            [payconductor-sdk.specs.available-payment-methods :refer :all]
            )
  (:import (java.io File)))


(def draft-data
  {
   (ds/req :paymentMethod) payment-method-spec
   (ds/opt :expirationInSeconds) draft-expiration-in-seconds-spec
   (ds/opt :availablePaymentMethods) (s/coll-of available-payment-methods-spec)
   })

(def draft-spec
  (ds/spec
    {:name ::draft
     :spec draft-data}))
