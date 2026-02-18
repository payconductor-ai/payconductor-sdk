(ns payconductor-sdk.specs.post-orders-200-response-session
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def post-orders-200-response-session-data
  {
   (ds/req :sessionId) string?
   })

(def post-orders-200-response-session-spec
  (ds/spec
    {:name ::post-orders-200-response-session
     :spec post-orders-200-response-session-data}))
