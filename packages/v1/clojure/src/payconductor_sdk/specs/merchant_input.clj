(ns payconductor-sdk.specs.merchant-input
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def merchant-input-data
  {
   (ds/req :document) string?
   (ds/req :email) string?
   (ds/req :name) string?
   })

(def merchant-input-spec
  (ds/spec
    {:name ::merchant-input
     :spec merchant-input-data}))
