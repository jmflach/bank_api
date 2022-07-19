#!/bin/bash

account_number=$1

curl -o out.json -X GET \
  "http://localhost:3000/transactions/statement" \
  -F "account_number=$account_number"

jq . "out.json"
