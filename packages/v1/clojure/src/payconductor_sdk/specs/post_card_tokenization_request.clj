(ns payconductor-sdk.specs.post-card-tokenization-request
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [payconductor-sdk.specs.complete-card-data :refer :all]
            [payconductor-sdk.specs.post-card-tokenization-request-customer :refer :all]
            )
  (:import (java.io File)))


(def post-card-tokenization-request-data
  {
   (ds/req :card) complete-card-data-spec
   (ds/req :saveCard) boolean?
   (ds/req :customer) post-card-tokenization-request-customer-spec
   })

(def post-card-tokenization-request-spec
  (ds/spec
    {:name ::post-card-tokenization-request
     :spec post-card-tokenization-request-data}))
