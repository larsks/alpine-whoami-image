FROM docker.io/alpine:latest

RUN wget -O /tmp/whoami.tar.gz https://github.com/traefik/whoami/releases/download/v1.9.0/whoami_v1.9.0_linux_amd64.tar.gz && \
	tar -C /usr/bin -xf /tmp/whoami.tar.gz whoami && \
	rm -f /tmp/whoami.tar.gz

CMD ["whoami"]
