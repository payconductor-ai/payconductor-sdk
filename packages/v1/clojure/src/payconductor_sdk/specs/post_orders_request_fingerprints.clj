(ns payconductor-sdk.specs.post-orders-request-fingerprints
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def post-orders-request-fingerprints-data
  {
   (ds/opt :threatMetrixFingerprintId) string?
   })

(def post-orders-request-fingerprints-spec
  (ds/spec
    {:name ::post-orders-request-fingerprints
     :spec post-orders-request-fingerprints-data}))
