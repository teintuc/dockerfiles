FROM alpine:latest AS builder

RUN wget -O /kubectl https://storage.googleapis.com/kubernetes-release/release/v1.10.0/bin/linux/amd64/kubectl && \
  chmod +x /kubectl

FROM scratch
COPY --from=builder /kubectl /kubectl
ENTRYPOINT ["/kubectl"]
