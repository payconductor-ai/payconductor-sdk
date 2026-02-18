(ns payconductor-sdk.specs.tokenized-card
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def tokenized-card-data
  {
   (ds/opt :firstSixCardNumber) string?
   (ds/req :token) string?
   })

(def tokenized-card-spec
  (ds/spec
    {:name ::tokenized-card
     :spec tokenized-card-data}))
