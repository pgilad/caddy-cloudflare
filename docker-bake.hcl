variable "IMAGE" {
  default = "docker.io/pgilad/caddy-cloudflare"
}

variable "TAG" {
  default = "2.11.3-alpine"
}

group "default" {
  targets = ["caddy-cloudflare"]
}

target "caddy-cloudflare" {
  context    = "."
  dockerfile = "Dockerfile"
  platforms  = ["linux/amd64", "linux/arm64"]
  tags = [
    "${IMAGE}:${TAG}",
  ]
}
