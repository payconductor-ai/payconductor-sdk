(ns payconductor-sdk.specs.post-orders-200-response-nu-pay
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def post-orders-200-response-nu-pay-data
  {
   (ds/req :paymentUrl) string?
   })

(def post-orders-200-response-nu-pay-spec
  (ds/spec
    {:name ::post-orders-200-response-nu-pay
     :spec post-orders-200-response-nu-pay-data}))
