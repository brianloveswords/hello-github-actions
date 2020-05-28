FROM mhart/alpine-node:12
ARG CLOUD_SDK_VERSION=272.0.0
ENV CLOUD_SDK_VERSION=$CLOUD_SDK_VERSION

ENV PATH /google-cloud-sdk/bin:$PATH
RUN apk --no-cache add \
    jq \
    python \
    gzip \
    make \
    g++ \
    gcc \
    bash \
    zip


ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
