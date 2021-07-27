#!/bin/sh

vault write pki_int/tidy tidy_cert_store=true tidy_revoked_certs=true