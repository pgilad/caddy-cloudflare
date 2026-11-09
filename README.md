# caddy-cloudflare

Caddy Docker image with the Cloudflare DNS module built in.

<p align="center">
  <a href="LICENSE"><img src="https://img.shields.io/badge/license-MIT-green.svg" alt="License: MIT" /></a>
  <a href="https://caddyserver.com/"><img src="https://img.shields.io/badge/caddy-2.11.9-blue.svg" alt="Caddy 2.11.9" /></a>
  <a href="https://hub.docker.com/r/pgilad/caddy-cloudflare"><img src="https://img.shields.io/badge/docker-multi--arch-2496ED.svg" alt="Docker multi-arch" /></a>
</p>

This image is based on the official Caddy Alpine image and uses `xcaddy` to add:

- [`github.com/caddy-dns/cloudflare`](https://github.com/caddy-dns/cloudflare)

Published image:

```bash
docker pull docker.io/pgilad/caddy-cloudflare:2.11.9-alpine
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

GitHub Actions builds the image without publishing it for pull requests and pushes to `main` that change the Dockerfile, Bake configuration, or workflows. Automatic publishing runs only when the Dockerfile or Bake configuration changes on `main`. You can also start the publish workflow manually. The publish workflow skips an existing tag and fails if the registry check returns another error. Use a new tag for each image release.

## Verify image

```bash
docker buildx imagetools inspect docker.io/pgilad/caddy-cloudflare:2.11.9-alpine
```

## License

MIT. See [LICENSE](LICENSE).
