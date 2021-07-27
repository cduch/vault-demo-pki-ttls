#!/bin/sh

vault login root

vault policy write agent agent/agent-policy.hcl

vault auth enable approle

vault write auth/approle/role/agent-role \
    secret_id_ttl=10m \
    token_num_uses=10 \
    token_ttl=20m \
    token_max_ttl=30m \
    policies="agent" \
    secret_id_num_uses=40

vault read auth/approle/role/agent-role/role-id

vault write -f auth/approle/role/agent-role/secret-id

vault read -format=json auth/approle/role/agent-role/role-id \
        | jq  -r '.data.role_id' > agent/role-id.tmp

vault write -f -format=json auth/approle/role/agent-role/secret-id \
        | jq -r '.data.secret_id' > agent/secret-id.tmp



echo "cd agent && vault agent -config=agent-config.cfg token=root"