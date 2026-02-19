(ns payconductor-sdk.specs.document-type
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def document-type-data
  {
   })

(def document-type-spec
  (ds/spec
    {:name ::document-type
     :spec document-type-data}))
