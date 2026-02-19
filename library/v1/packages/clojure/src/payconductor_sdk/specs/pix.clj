(ns payconductor-sdk.specs.pix
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [payconductor-sdk.specs.payment-method :refer :all]
            [payconductor-sdk.specs.pix-expiration-in-seconds :refer :all]
            )
  (:import (java.io File)))


(def pix-data
  {
   (ds/req :paymentMethod) payment-method-spec
   (ds/opt :expirationInSeconds) pix-expiration-in-seconds-spec
   })

(def pix-spec
  (ds/spec
    {:name ::pix
     :spec pix-data}))
