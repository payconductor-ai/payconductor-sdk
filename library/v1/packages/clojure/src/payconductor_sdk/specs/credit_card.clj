(ns payconductor-sdk.specs.credit-card
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [payconductor-sdk.specs.payment-method :refer :all]
            [payconductor-sdk.specs.credit-card-card :refer :all]
            [payconductor-sdk.specs.credit-card-installments :refer :all]
            )
  (:import (java.io File)))


(def credit-card-data
  {
   (ds/req :paymentMethod) payment-method-spec
   (ds/req :card) credit-card-card-spec
   (ds/req :installments) credit-card-installments-spec
   (ds/opt :softDescriptor) string?
   })

(def credit-card-spec
  (ds/spec
    {:name ::credit-card
     :spec credit-card-data}))
