# Alpine-based "whoami" image

The [whoami][] webserver is convenient for container demos because it reports
various metadata about the environment in which it is running. The [official
image][] is very minimal and includes *only* the `whoami` binary.

[whoami]: https://github.com/traefik/whoami
[official image]: https://hub.docker.com/r/traefik/whoami

I needed an image that runs `whoami` by default but that also provides a useful
runtime such that one can `podman exec` into the container and run commands.
