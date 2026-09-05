#!/bin/sh

set -e

mkdir -p certs

openssl req \
  -x509 \
  -nodes \
  -newkey rsa:2048 \
  -days 365 \
  -keyout certs/server.key \
  -out certs/server.crt \
  -subj "/CN=localhost"

echo "TLS certificate created successfully."
echo "Certificate: certs/server.crt"
echo "Private key: certs/server.key"