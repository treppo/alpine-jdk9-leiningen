FROM anapsix/alpine-java:9_jdk

RUN apk add --update --no-cache \
        wget \
        ca-certificates \
        bash \
    && wget -q "https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein" \
         -O /usr/local/bin/lein \
    && chmod 0755 /usr/local/bin/lein \
    && apk del wget ca-certificates \
    && rm -rf /tmp/* /var/cache/apk/*
