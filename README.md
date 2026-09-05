# NGINX Security & Reverse Proxy Lab

A hands-on infrastructure and security lab demonstrating NGINX reverse proxy configuration, HTTPS/TLS termination, rate limiting, Docker networking, and technical troubleshooting.

## Overview

This project creates a small reverse-proxy environment using NGINX and Docker Compose.

Client requests are received by an NGINX reverse proxy and forwarded to a backend web service. The configuration demonstrates several common web infrastructure and security concepts including HTTPS redirection, TLS termination, request rate limiting, proxy headers, and security headers.

## Technologies

- Linux
- NGINX
- Docker
- Docker Compose
- HTTP/HTTPS
- TLS
- OpenSSL

## Architecture

Client  
↓  
NGINX Reverse Proxy  
↓  
Backend Web Service

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

Generate the local TLS certificate:

```bash
chmod +x generate-certs.sh
./generate-certs.sh