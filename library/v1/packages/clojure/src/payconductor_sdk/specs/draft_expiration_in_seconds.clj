(ns payconductor-sdk.specs.draft-expiration-in-seconds
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def draft-expiration-in-seconds-data
  {
   })

(def draft-expiration-in-seconds-spec
  (ds/spec
    {:name ::draft-expiration-in-seconds
     :spec draft-expiration-in-seconds-data}))
