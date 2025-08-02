FROM asciidoctor/docker-asciidoctor:1.91

ARG JQ_VERSION=1.8.0-r0
RUN apk add --no-cache jq=${JQ_VERSION}

COPY entrypoint /entrypoint
COPY blog-renderer /blog-renderer
ENTRYPOINT ["/entrypoint"]
