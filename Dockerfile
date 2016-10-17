FROM alpine:3.4
MAINTAINER Pat Brisbin <pbrisbin@gmail.com>
RUN apk update

# GHC
COPY files/etc/apk/keys /etc/apk/keys/
RUN echo "https://s3-us-west-2.amazonaws.com/alpine-ghc/8.0" >> /etc/apk/repositories
RUN apk update
RUN apk add alpine-sdk git ca-certificates ghc gmp-dev zlib-dev

# Compile Hack
WORKDIR /usr/lib/gcc/x86_64-alpine-linux-musl/5.3.0/
RUN cp crtbeginT.o crtbeginT.o.orig
RUN cp crtbeginS.o crtbeginT.o

RUN mkdir -p /src
WORKDIR /src

COPY files /
CMD ["/usr/local/bin/build"]
