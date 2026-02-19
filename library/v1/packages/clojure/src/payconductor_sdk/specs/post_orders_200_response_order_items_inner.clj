(ns payconductor-sdk.specs.post-orders-200-response-order-items-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def post-orders-200-response-order-items-inner-data
  {
   (ds/req :externalId) string?
   (ds/req :id) string?
   (ds/req :name) string?
   (ds/req :qty) float?
   (ds/req :totalAmount) float?
   (ds/req :totalNetAmount) float?
   (ds/req :unityPrice) float?
   })

(def post-orders-200-response-order-items-inner-spec
  (ds/spec
    {:name ::post-orders-200-response-order-items-inner
     :spec post-orders-200-response-order-items-inner-data}))
