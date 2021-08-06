#!/bin/sh
#stop and remove vault containers if already running

docker stop vault-demo-vault
docker rm vault-demo-vault

docker network rm dev-network

#start Vault in dev mode on port 8200
docker network create dev-network

touch log/vault_audit.log

docker run --name vault-demo-vault --network dev-network -p 8200:8200 -e VAULT_LICENSE="${VAULT_LICENSE}" --mount type=bind,source="$(pwd)"/log,target=/var/log hashicorp/vault-enterprise:1.8.1_ent server -dev -dev-root-token-id="root" &

sleep 10

# login with root token
vault login root

# enable audit logging
#vault audit enable file file_path=/var/log/vault_audit.log