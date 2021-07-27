#!/bin/sh

# remove certs expired before 120sec
vault write pki_int/tidy tidy_cert_store=true tidy_revoked_certs=true safety_buffer=120