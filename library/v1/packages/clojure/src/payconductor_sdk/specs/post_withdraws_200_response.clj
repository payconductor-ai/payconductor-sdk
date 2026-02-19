(ns payconductor-sdk.specs.post-withdraws-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [payconductor-sdk.specs.status :refer :all]
            [payconductor-sdk.specs.post-withdraws-200-response-payed-at :refer :all]
            [payconductor-sdk.specs.post-withdraws-200-response-payout-account :refer :all]
            )
  (:import (java.io File)))


(def post-withdraws-200-response-data
  {
   (ds/req :id) string?
   (ds/req :externalId) string?
   (ds/req :externalIntegrationKey) string?
   (ds/req :externalIntegrationId) string?
   (ds/req :costFee) float?
   (ds/req :status) status-spec
   (ds/req :errorCode) string?
   (ds/req :errorMessage) string?
   (ds/req :payedAt) post-withdraws-200-response-payed-at-spec
   (ds/req :payoutAccount) post-withdraws-200-response-payout-account-spec
   })

(def post-withdraws-200-response-spec
  (ds/spec
    {:name ::post-withdraws-200-response
     :spec post-withdraws-200-response-data}))
