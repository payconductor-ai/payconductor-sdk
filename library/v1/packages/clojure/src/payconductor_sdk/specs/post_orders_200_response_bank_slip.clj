(ns payconductor-sdk.specs.post-orders-200-response-bank-slip
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def post-orders-200-response-bank-slip-data
  {
   (ds/req :barCode) string?
   (ds/req :digitableLine) string?
   (ds/opt :pdfUrl) string?
   })

(def post-orders-200-response-bank-slip-spec
  (ds/spec
    {:name ::post-orders-200-response-bank-slip
     :spec post-orders-200-response-bank-slip-data}))
