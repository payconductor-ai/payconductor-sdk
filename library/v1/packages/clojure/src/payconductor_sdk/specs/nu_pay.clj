(ns payconductor-sdk.specs.nu-pay
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [payconductor-sdk.specs.payment-method :refer :all]
            [payconductor-sdk.specs.nu-pay-nu-pay :refer :all]
            )
  (:import (java.io File)))


(def nu-pay-data
  {
   (ds/req :paymentMethod) payment-method-spec
   (ds/req :nuPay) nu-pay-nu-pay-spec
   })

(def nu-pay-spec
  (ds/spec
    {:name ::nu-pay
     :spec nu-pay-data}))
