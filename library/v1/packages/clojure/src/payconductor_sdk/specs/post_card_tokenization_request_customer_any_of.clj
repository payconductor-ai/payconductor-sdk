(ns payconductor-sdk.specs.post-card-tokenization-request-customer-any-of
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def post-card-tokenization-request-customer-any-of-data
  {
   (ds/req :id) string?
   })

(def post-card-tokenization-request-customer-any-of-spec
  (ds/spec
    {:name ::post-card-tokenization-request-customer-any-of
     :spec post-card-tokenization-request-customer-any-of-data}))
