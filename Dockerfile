FROM debian:jessie

RUN apt-get update && apt-get install -y \
    drracket

CMD ["/usr/bin/drracket"]