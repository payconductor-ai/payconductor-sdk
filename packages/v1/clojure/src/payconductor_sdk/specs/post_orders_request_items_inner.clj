(ns payconductor-sdk.specs.post-orders-request-items-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def post-orders-request-items-inner-data
  {
   (ds/req :id) string?
   (ds/req :isPhysical) boolean?
   (ds/req :name) string?
   (ds/req :qty) float?
   (ds/req :unitPrice) float?
   })

(def post-orders-request-items-inner-spec
  (ds/spec
    {:name ::post-orders-request-items-inner
     :spec post-orders-request-items-inner-data}))
