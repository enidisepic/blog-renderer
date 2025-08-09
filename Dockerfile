FROM asciidoctor/docker-asciidoctor:1.91

ARG JQ_VERSION=1.8.0-r0
ARG SED_VERSION=4.9-r2
RUN apk add --no-cache jq="${JQ_VERSION}" sed="${SED_VERSION}"

COPY entrypoint /entrypoint
COPY blog-renderer /blog-renderer
ENTRYPOINT ["/entrypoint"]
