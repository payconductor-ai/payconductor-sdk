(ns payconductor-sdk.specs.status
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def status-data
  {
   })

(def status-spec
  (ds/spec
    {:name ::status
     :spec status-data}))
