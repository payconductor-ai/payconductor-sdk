(ns payconductor-sdk.specs.pic-pay
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def pic-pay-data
  {
   (ds/req :paymentMethod) string?
   })

(def pic-pay-spec
  (ds/spec
    {:name ::pic-pay
     :spec pic-pay-data}))
