(ns payconductor-sdk.specs.credit-card-installments
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def credit-card-installments-data
  {
   })

(def credit-card-installments-spec
  (ds/spec
    {:name ::credit-card-installments
     :spec credit-card-installments-data}))
