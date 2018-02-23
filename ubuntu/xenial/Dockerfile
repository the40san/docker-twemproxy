FROM buildpack-deps:xenial-curl

ENV TWEMPROXY_VERSION 0.4.1

## BUILD DEPENDENCIES
RUN set -ex \
  && apt-get update \
  && apt-get install -y \
    automake \
    gcc \
    libtool \
    make

## BUILD FROM SOURCE
RUN mkdir -p /nutcracker/etc
RUN mkdir -p /nutcracker/.build

WORKDIR /nutcracker

RUN wget -O twemproxy.tar.gz "https://github.com/twitter/twemproxy/archive/v${TWEMPROXY_VERSION}.tar.gz" \
  && tar -zxf twemproxy.tar.gz -C .build --strip-components=1 \
  && rm twemproxy.tar.gz

WORKDIR /nutcracker/.build

RUN autoreconf -fvi \
  && ./configure \
  && make \
  && make install

WORKDIR /nutcracker
RUN rm -rf .build

# MONITOR
EXPOSE 22222
STOPSIGNAL SIGINT

# config
COPY nutcracker.yml /nutcracker/etc/
ENV NUTCRACKER_CONF="nutcracker.yml"

CMD nutcracker -c /nutcracker/etc/${NUTCRACKER_CONF}
