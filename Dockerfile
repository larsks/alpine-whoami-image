FROM docker.io/alpine:latest
ARG WHOAMI_VERSION=1.9.0

RUN apk add curl bash
RUN curl -sSL -o /tmp/whoami.tar.gz https://github.com/traefik/whoami/releases/download/v${WHOAMI_VERSION}/whoami_v${WHOAMI_VERSION}_linux_amd64.tar.gz && \
	tar -C /usr/bin -xf /tmp/whoami.tar.gz whoami && \
	rm -f /tmp/whoami.tar.gz

ENTRYPOINT ["whoami"]
