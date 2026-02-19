(ns payconductor-sdk.specs.post-withdraws-200-response-payed-at
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def post-withdraws-200-response-payed-at-data
  {
   })

(def post-withdraws-200-response-payed-at-spec
  (ds/spec
    {:name ::post-withdraws-200-response-payed-at
     :spec post-withdraws-200-response-payed-at-data}))
