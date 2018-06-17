FROM alpine:latest AS builder

ARG K8S_VERSION=v1.10.0

RUN wget -O /kubectl https://storage.googleapis.com/kubernetes-release/release/$K8S_VERSION/bin/linux/amd64/kubectl && \
  chmod +x /kubectl

FROM scratch

COPY --from=builder /kubectl /kubectl

ENTRYPOINT ["/kubectl"]
