#!/usr/bin/env sh

set -e -u

echo '[INFO] Install build dependencies' && \
    apk add --no-cache --virtual .build-deps \
        wget 

echo '[INFO] Install documize' && \
    wget https://github.com/documize/community/releases/download/v1.55.0/documize-community-linux-amd64 -q -O /sbin/documize && \
    chmod +x /sbin/documize

echo '[INFO] Update scripts and configs' && \
    mv /tmp/assets/sbin/entrypoint.sh /sbin

echo '[INFO] Remove build dependencies' && \
    apk del .build-deps

echo '[INFO] Cleaning up' && \
    rm -rf /var/cache/apk

