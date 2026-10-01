FROM alpine:3.22

# A RUN step exercises QEMU emulation when building armv7hf on an x64 runner.
RUN apk add --no-cache curl

CMD ["sh", "-c", "while true; do echo \"exein demo: $(uname -m)\"; sleep 60; done"]
