(ns payconductor-sdk.specs.pix-type
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def pix-type-data
  {
   })

(def pix-type-spec
  (ds/spec
    {:name ::pix-type
     :spec pix-type-data}))
