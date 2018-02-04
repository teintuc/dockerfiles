FROM alpine:latest

MAINTAINER Charles Teinturier "teintu.c@gmail.com"

# Install packages
RUN apk --no-cache add bash minidlna

# Entrypoint
COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
