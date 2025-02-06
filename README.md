# swarm-rafttool

This repository contains a Dockerfile to build the `swarm-rafttool` binary from the upstream [Docker Swarm](https://github.com/moby/swarm) repository. 

## What is swarm-rafttool?

`swarm-rafttool` is a tool that can be used to renew the certificates used by Docker Swarm.

## Usage

```bash
systemctl stop docker.service
./swarm-rafttool renew-certs --state-dir /var/lib/docker/swarm/
systemctl start docker.service
```
