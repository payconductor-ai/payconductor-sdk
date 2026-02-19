(ns payconductor-sdk.specs.post-orders-200-response-pic-pay
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def post-orders-200-response-pic-pay-data
  {
   (ds/req :copyAndPasteCode) string?
   (ds/req :qrCodeUrl) string?
   })

(def post-orders-200-response-pic-pay-spec
  (ds/spec
    {:name ::post-orders-200-response-pic-pay
     :spec post-orders-200-response-pic-pay-data}))
