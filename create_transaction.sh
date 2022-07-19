#!/bin/bash

account_number=$1
amount=$2
type=$3

curl -o out.json -X POST \
  "http://localhost:3000/transactions/create" \
  -F "bank_account=$account_number" \
  -F "amount=$amount" \
  -F "trans_type=$type"

jq . "out.json"
