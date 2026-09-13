# caddy-cloudflare

Caddy Docker image with the Cloudflare DNS module built in.

<p align="center">
  <a href="LICENSE"><img src="https://img.shields.io/badge/license-MIT-green.svg" alt="License: MIT" /></a>
  <a href="https://caddyserver.com/"><img src="https://img.shields.io/badge/caddy-2.11.4-blue.svg" alt="Caddy 2.11.4" /></a>
  <a href="https://hub.docker.com/r/pgilad/caddy-cloudflare"><img src="https://img.shields.io/badge/docker-multi--arch-2496ED.svg" alt="Docker multi-arch" /></a>
</p>

This image is based on the official Caddy Alpine image and uses `xcaddy` to add:

- [`github.com/caddy-dns/cloudflare`](https://github.com/caddy-dns/cloudflare)

Published image:

```bash
docker pull docker.io/pgilad/caddy-cloudflare:2.11.4-alpine
```

## Platforms

The published image is multi-arch:

- `linux/amd64`
- `linux/arm64`

## Build and push

This repo uses Docker Buildx Bake.

```bash
docker buildx bake --push
```

The default tag is configured in `docker-bake.hcl`.

## Verify image

```bash
docker buildx imagetools inspect docker.io/pgilad/caddy-cloudflare:2.11.4-alpine
```

## License

MIT. See [LICENSE](LICENSE).
