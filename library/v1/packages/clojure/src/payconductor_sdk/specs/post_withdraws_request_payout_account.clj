(ns payconductor-sdk.specs.post-withdraws-request-payout-account
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [payconductor-sdk.specs.pix-type :refer :all]
            )
  (:import (java.io File)))


(def post-withdraws-request-payout-account-data
  {
   (ds/req :ownerDocument) string?
   (ds/req :ownerName) string?
   (ds/req :pixKey) string?
   (ds/req :pixType) pix-type-spec
   })

(def post-withdraws-request-payout-account-spec
  (ds/spec
    {:name ::post-withdraws-request-payout-account
     :spec post-withdraws-request-payout-account-data}))
