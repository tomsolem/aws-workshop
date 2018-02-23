FROM alpine:latest

ENV AWS_DEFAULT_REGION='[your region]'
ENV AWS_ACCESS_KEY_ID='[your access key id]'
ENV AWS_SECRET_ACCESS_KEY='[your secret]'
ENV CLI_VERSION=1.14.45

RUN mkdir -p /aws && \
    apk -Uuv add groff jq less python py-pip && \
    pip install awscli==$CLI_VERSION && \
    apk --purge -v del py-pip && \
    rm /var/cache/apk/*

WORKDIR /aws