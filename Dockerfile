FROM perl:5

ENV CLOC_VERSION 1.78
ENV CLOC_SHA256 4629e24a963c2cbaf495037c58fc56a491afbdb3f95ca3fd393d58988b94b1b0

RUN set -ex \
    && curl -sSL -o /usr/local/bin/cloc https://github.com/AlDanial/cloc/releases/download/$CLOC_VERSION/cloc-$CLOC_VERSION.pl \
    && echo "${CLOC_SHA256}  /usr/local/bin/cloc" | shasum -c - \
    && chmod 755 /usr/local/bin/cloc

CMD ["cloc"]
