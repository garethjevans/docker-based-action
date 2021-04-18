FROM --platform=${BUILDPLATFORM} alpine:3.13.5

ARG TARGETOS
ARG TARGETARCH
ARG TARGETPLATFORM

LABEL maintainer="Gareth Evans <gareth@bryncynfelin.co.uk>"
COPY dist/docker-based-action_linux_amd64/docker-based-action /usr/bin/docker-based-action
COPY github-action-entrypoint.sh /usr/bin/github-action-entrypoint.sh

ENTRYPOINT [ "/usr/bin/docker-based-action" ]
