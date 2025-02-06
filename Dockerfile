# syntax=docker/dockerfile:1

FROM golang:1.19 AS build
WORKDIR /go/src/
RUN git clone https://github.com/moby/swarmkit.git
WORKDIR /go/src/swarmkit/swarmd/cmd/swarm-rafttool/
RUN CGO_ENABLED=0 go build -a -ldflags '-extldflags "-static"'

FROM scratch
COPY --from=build --chmod=755 /go/src/swarmkit/swarmd/cmd/swarm-rafttool/swarm-rafttool /
ENTRYPOINT ["/swarm-rafttool"]