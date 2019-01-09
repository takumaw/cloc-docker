FROM perl:5

ENV CLOC_VERSION 1.72
ENV CLOC_SHA256 6ac5fbfed3d3c1f18688bf60079506ef0bfae212fd26e5e2f9baad2fd2b6e815

RUN set -ex \
    && curl -sSL -o /usr/local/bin/cloc https://github.com/AlDanial/cloc/releases/download/$CLOC_VERSION/cloc-$CLOC_VERSION.pl \
    && echo "${CLOC_SHA256}  /usr/local/bin/cloc" | shasum -c - \
    && chmod 755 /usr/local/bin/cloc

CMD ["cloc"]
