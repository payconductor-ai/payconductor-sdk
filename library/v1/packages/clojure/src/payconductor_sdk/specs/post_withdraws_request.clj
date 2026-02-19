(ns payconductor-sdk.specs.post-withdraws-request
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [payconductor-sdk.specs.merchant-input :refer :all]
            [payconductor-sdk.specs.post-withdraws-request-payout-account :refer :all]
            )
  (:import (java.io File)))


(def post-withdraws-request-data
  {
   (ds/req :amount) float?
   (ds/opt :externalId) string?
   (ds/opt :merchant) merchant-input-spec
   (ds/req :payoutAccount) post-withdraws-request-payout-account-spec
   })

(def post-withdraws-request-spec
  (ds/spec
    {:name ::post-withdraws-request
     :spec post-withdraws-request-data}))
