FROM perl:5

ENV CLOC_VERSION 1.80
ENV CLOC_SHA256 2b23012b1c3c53bd6b9dd43cd6aa75715eed4feb2cb6db56ac3fbbd2dffeac9d

RUN set -ex \
    && curl -sSL -o /usr/local/bin/cloc https://github.com/AlDanial/cloc/releases/download/$CLOC_VERSION/cloc-$CLOC_VERSION.pl \
    && echo "${CLOC_SHA256}  /usr/local/bin/cloc" | shasum -c - \
    && chmod 755 /usr/local/bin/cloc

CMD ["cloc"]
