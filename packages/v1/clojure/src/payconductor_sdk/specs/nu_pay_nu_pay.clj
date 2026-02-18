(ns payconductor-sdk.specs.nu-pay-nu-pay
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def nu-pay-nu-pay-data
  {
   (ds/req :cancelUrl) string?
   (ds/req :merchantName) string?
   (ds/req :returnUrl) string?
   (ds/opt :storeName) string?
   })

(def nu-pay-nu-pay-spec
  (ds/spec
    {:name ::nu-pay-nu-pay
     :spec nu-pay-nu-pay-data}))
