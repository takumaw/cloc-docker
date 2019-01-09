FROM perl:5

ENV CLOC_VERSION 1.70
ENV CLOC_SHA256 96d9665ae6c0b5cf3efe377700c02a7a2b05e3746a21991deba596392d0515cf

RUN set -ex \
    && curl -sSL -o /usr/local/bin/cloc https://github.com/AlDanial/cloc/releases/download/$CLOC_VERSION/cloc-$CLOC_VERSION.pl \
    && echo "${CLOC_SHA256}  /usr/local/bin/cloc" | shasum -c - \
    && chmod 755 /usr/local/bin/cloc

CMD ["cloc"]
