(ns payconductor-sdk.specs.post-orders-200-response-credit-card
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def post-orders-200-response-credit-card-data
  {
   (ds/opt :authorizationCode) string?
   })

(def post-orders-200-response-credit-card-spec
  (ds/spec
    {:name ::post-orders-200-response-credit-card
     :spec post-orders-200-response-credit-card-data}))
