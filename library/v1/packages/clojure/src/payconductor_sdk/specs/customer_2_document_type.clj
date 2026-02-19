(ns payconductor-sdk.specs.customer-2-document-type
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def customer-2-document-type-data
  {
   })

(def customer-2-document-type-spec
  (ds/spec
    {:name ::customer-2-document-type
     :spec customer-2-document-type-data}))
