(ns payconductor-sdk.specs.draft-available-payment-methods-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def draft-available-payment-methods-inner-data
  {
   })

(def draft-available-payment-methods-inner-spec
  (ds/spec
    {:name ::draft-available-payment-methods-inner
     :spec draft-available-payment-methods-inner-data}))
