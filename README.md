# NGINX Security & Reverse Proxy Lab

A hands-on infrastructure lab demonstrating NGINX reverse proxy configuration, HTTPS/TLS termination, request rate limiting, Docker networking, and technical troubleshooting.

## Overview

This project creates a small reverse-proxy environment using NGINX and Docker Compose.

Client requests are received by an NGINX reverse proxy and forwarded to a backend web service. The configuration demonstrates common web infrastructure and security concepts including HTTPS redirection, TLS termination, request rate limiting, proxy headers, and basic security headers.

## Technologies

- Linux
- NGINX
- Docker
- Docker Compose
- HTTP/HTTPS
- TLS
- OpenSSL

## Architecture

```text
Client
  |
  v
NGINX Reverse Proxy
  |
  v
Backend Web Service
```

## Features

- NGINX reverse proxy
- HTTP to HTTPS redirection
- TLS 1.2 and TLS 1.3
- Self-signed TLS certificates for local testing
- Per-client request rate limiting
- Reverse-proxy forwarding headers
- Basic HTTP security headers
- Containerized backend service

## Repository Files

- `nginx.conf` — NGINX reverse proxy and security configuration
- `docker-compose.yml` — Proxy and backend container environment
- `generate-certs.sh` — Generates local TLS certificates
- `.gitignore` — Prevents certificates and local files from being committed

## Running the Lab

Generate a local TLS certificate:

```bash
chmod +x generate-certs.sh
./generate-certs.sh
```

Start the environment:

```bash
docker compose up -d
```

Access the proxy:

```text
https://localhost:8443
```

Because this lab uses a self-signed certificate, a browser may display a certificate warning during local testing.

## Troubleshooting

Validate the NGINX configuration:

```bash
docker compose exec proxy nginx -t
```

Check running containers:

```bash
docker compose ps
```

View proxy logs:

```bash
docker compose logs proxy
```

Test HTTPS:

```bash
curl -k https://localhost:8443
```

Stop the environment:

```bash
docker compose down
```

## Troubleshooting Approach

When diagnosing a reverse-proxy issue, useful checks include:

1. Confirming container status
2. Validating NGINX configuration syntax
3. Reviewing proxy and backend logs
4. Testing network connectivity
5. Checking HTTP response codes
6. Verifying TLS certificate paths
7. Confirming backend service availability

## Skills Demonstrated

- Linux system configuration
- NGINX configuration
- Networking fundamentals
- HTTP/HTTPS concepts
- TLS configuration
- Reverse proxy configuration
- Rate limiting
- Docker networking
- Log-based troubleshooting
- Technical documentation

## Project Status

The configuration files are included for portfolio and local-lab use. Full end-to-end runtime validation will be completed in a local Docker environment.

## Purpose

This repository is part of my technical portfolio focused on systems, networking, cybersecurity, and technical troubleshooting.