# HashiCorp Vault Enterprise: Demo scenario for pki engine using short TTLs

Requires a valid Vault enterprise license in $VAULT_LICENSE

1. Creates a PKI engine
2. Creates a CA and certificates
3. Manually request certificates
4. Configures an approle for an vault agent to auto generate certificates via vault agent


for more info, follow this guide:
https://learn.hashicorp.com/tutorials/vault/pki-engine?in=vault/interactive

and read this:
https://www.vaultproject.io/docs/agent/template#renewals-and-updating-secrets