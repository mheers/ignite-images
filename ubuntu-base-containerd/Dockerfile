FROM golang:1.19-bullseye AS nerdctl

RUN go install github.com/containerd/nerdctl/cmd/nerdctl@latest

FROM mheers/ignite-ubuntu-base:v1.0.5

RUN apt-get update -y \
    && apt install -y \
    && apt-get install -y containerd iptables \
    && rm -rf /var/lib/apt/lists/*

# nerdctl
# COPY --from=mheers/nerdctl:v1.1.0 /usr/local/bin/nerdctl /usr/local/bin/nerdctl
COPY --from=nerdctl /go/bin/nerdctl /usr/local/bin/nerdctl

# cni
ENV CNI_VERSION=v1.1.1
# TODO: support arm64
ENV ARCH=amd64
RUN mkdir -p /opt/cni/bin && \
    curl -sSL https://github.com/containernetworking/plugins/releases/download/${CNI_VERSION}/cni-plugins-linux-${ARCH}-${CNI_VERSION}.tgz | tar -xz -C /opt/cni/bin
