FROM debian:jessie
MAINTAINER Nick Loadholtes <nick@ironboundsoftware.com>

RUN apt-get update && apt-get install -y \
    racket

ENTRYPOINT ["/usr/bin/racket"]