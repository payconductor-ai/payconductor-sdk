(ns payconductor-sdk.specs.post-card-tokenization-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def post-card-tokenization-200-response-data
  {
   (ds/req :customerId) string?
   (ds/req :token) string?
   })

(def post-card-tokenization-200-response-spec
  (ds/spec
    {:name ::post-card-tokenization-200-response
     :spec post-card-tokenization-200-response-data}))
