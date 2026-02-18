(ns payconductor-sdk.specs.pix-expiration-in-seconds
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def pix-expiration-in-seconds-data
  {
   })

(def pix-expiration-in-seconds-spec
  (ds/spec
    {:name ::pix-expiration-in-seconds
     :spec pix-expiration-in-seconds-data}))
