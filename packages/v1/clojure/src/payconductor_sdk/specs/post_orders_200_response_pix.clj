(ns payconductor-sdk.specs.post-orders-200-response-pix
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def post-orders-200-response-pix-data
  {
   (ds/req :copyAndPasteCode) string?
   (ds/req :qrCodeUrl) string?
   (ds/req :endToEndId) string?
   })

(def post-orders-200-response-pix-spec
  (ds/spec
    {:name ::post-orders-200-response-pix
     :spec post-orders-200-response-pix-data}))
