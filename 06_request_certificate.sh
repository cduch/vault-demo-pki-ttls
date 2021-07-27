#!/bin/sh


# create a certificate valid 24h

vault write pki_int/issue/example-dot-com common_name="test24h.example.com" ttl="24h"


# create a certificate valid only 60 seconds

vault write pki_int/issue/example-dot-com common_name="test60s.example.com" ttl="60"

echo ""
echo "open the following URL in your browser: http://localhost:8200/ui/vault/secrets/pki_int/list?tab=certs and use 'root' as a token"