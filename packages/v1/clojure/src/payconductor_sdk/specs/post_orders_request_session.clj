(ns payconductor-sdk.specs.post-orders-request-session
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def post-orders-request-session-data
  {
   (ds/opt :expiresInMinutes) float?
   (ds/opt :checkoutUrl) string?
   (ds/opt :sessionId) string?
   (ds/opt :externalSessionId) string?
   })

(def post-orders-request-session-spec
  (ds/spec
    {:name ::post-orders-request-session
     :spec post-orders-request-session-data}))
