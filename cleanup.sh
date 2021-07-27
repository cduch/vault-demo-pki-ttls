#!/bin/sh
#stop and remove vault containers if already running

docker stop vault-demo-vault
docker rm vault-demo-vault

docker network rm dev-network