FROM perl:5

ENV CLOC_VERSION 1.74
ENV CLOC_SHA256 fb1e1c7684de2af16c6ecdcd1c5a7b64cb347476013d971ef2927cfce115c7bb

RUN set -ex \
    && curl -sSL -o /usr/local/bin/cloc https://github.com/AlDanial/cloc/releases/download/$CLOC_VERSION/cloc-$CLOC_VERSION.pl \
    && echo "${CLOC_SHA256}  /usr/local/bin/cloc" | shasum -c - \
    && chmod 755 /usr/local/bin/cloc

CMD ["cloc"]
