(ns payconductor-sdk.specs.event
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def event-data
  {
   })

(def event-spec
  (ds/spec
    {:name ::event
     :spec event-data}))
