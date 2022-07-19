#!/bin/bash

name=$1
cpf=$2
birthday=$3

curl -o out.json -X POST \
  "http://localhost:3000/bank-accounts/create" \
  -F "name=$name" \
  -F "cpf=$cpf" \
  -F "birthday=$birthday"

jq . "out.json"
