(ns payconductor-sdk.specs.post-withdraws-200-response-payout-account
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [payconductor-sdk.specs.pix-type :refer :all]
            )
  (:import (java.io File)))


(def post-withdraws-200-response-payout-account-data
  {
   (ds/req :id) string?
   (ds/req :ownerDocument) string?
   (ds/req :ownerName) string?
   (ds/req :pixKey) string?
   (ds/req :pixType) pix-type-spec
   })

(def post-withdraws-200-response-payout-account-spec
  (ds/spec
    {:name ::post-withdraws-200-response-payout-account
     :spec post-withdraws-200-response-payout-account-data}))
