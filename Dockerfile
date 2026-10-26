# syntax=docker/dockerfile:1

FROM --platform=$BUILDPLATFORM docker.io/caddy:2.11.7-builder-alpine AS builder

ARG TARGETOS
ARG TARGETARCH

RUN GOOS=$TARGETOS GOARCH=$TARGETARCH xcaddy build \
    --with github.com/caddy-dns/cloudflare

FROM docker.io/caddy:2.11.7-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
