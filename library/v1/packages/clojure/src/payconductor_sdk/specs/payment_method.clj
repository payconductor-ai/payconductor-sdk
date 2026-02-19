(ns payconductor-sdk.specs.payment-method
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def payment-method-data
  {
   })

(def payment-method-spec
  (ds/spec
    {:name ::payment-method
     :spec payment-method-data}))
