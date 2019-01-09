FROM perl:5

ENV CLOC_VERSION 1.76
ENV CLOC_SHA256 f1d0a0a6c30cfe02349630828a6cdca7e047ac2e2557810bebf51e25a0d10d20

RUN set -ex \
    && curl -sSL -o /usr/local/bin/cloc https://github.com/AlDanial/cloc/releases/download/$CLOC_VERSION/cloc-$CLOC_VERSION.pl \
    && echo "${CLOC_SHA256}  /usr/local/bin/cloc" | shasum -c - \
    && chmod 755 /usr/local/bin/cloc

CMD ["cloc"]
