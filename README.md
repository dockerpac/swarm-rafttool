# swarm-rafttool

This repository contains a Dockerfile to build the `swarm-rafttool` binary from the upstream [Docker Swarm](https://github.com/moby/swarm) repository. The built image is available on Docker Hub at [dockerpac/swarm-rafttool](https://hub.docker.com/r/dockerpac/swarm-rafttool).

## What is swarm-rafttool?

`swarm-rafttool` is a diagnostic utility for examining and debugging Docker Swarm's Raft consensus logs. It's particularly useful when troubleshooting Docker Swarm cluster issues related to the Raft consensus mechanism.

## Usage

1. **Dump Raft logs**:

```bash
docker run --rm -v /var/lib/docker/swarm/raft:/var/lib/swarmd dockerpac/swarm-rafttool dump
```

2. **Verify Raft state**:

```bash
docker run --rm -v /var/lib/docker/swarm/raft:/var/lib/swarmd dockerpac/swarm-rafttool verify
```

3. **Get Raft metadata**:

```bash
docker run --rm -v /var/lib/docker/swarm/raft:/var/lib/swarmd dockerpac/swarm-rafttool metadata
```

4. **Renew Swarm certificates**:

```bash
systemctl stop docker
docker run --rm -v /var/lib/docker/swarm/raft:/var/lib/swarmd dockerpac/swarm-rafttool renew-certs
systemctl start docker
```
