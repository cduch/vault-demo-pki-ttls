#!/bin/sh

# init admin policy and login

vault policy write admin admin-policy.hcl

# retrieve admin token
ADMIN_TOKEN=$(vault token create -format=json -policy="admin" | jq -r ".auth.client_token")

# login with admin token
vault login $ADMIN_TOKEN