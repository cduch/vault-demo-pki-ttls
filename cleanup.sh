#!/bin/sh

unset VAULT_ADDR VAULT_TOKEN

rm -f \
    CA_cert.crt \
    intermediate.cert.pem \
    pki_intermediate.csr \
    payload.json \
    payload-url.json \
    payload-int.json \
    payload-int-cert.json \
    payload-signed.json \
    payload-role.json


#stop and remove vault containers if already running

docker stop vault-demo-vault
docker rm vault-demo-vault

docker network rm dev-network