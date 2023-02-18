# porkbun-ddns-docker

A containerized version of https://github.com/porkbundomains/porkbun-dynamic-dns-python

Example usage:
```
podman run --secret secret-config \
    docker.io/kjarosh/porkbun-ddns-docker:1.0.0 \
    /run/secrets/secret-config \
    example.com subdomain
```
