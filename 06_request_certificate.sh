#!/bin/sh

vault write pki_int/issue/example-dot-com common_name="test24h.example.com" ttl="24h"

vault write pki_int/issue/example-dot-com common_name="test1m.example.com" ttl="1m"