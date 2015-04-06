FROM slogsdon/racket
MAINTAINER Nick Loadholtes <nick@ironboundsoftware.com>

WORKDIR /src/app
ADD . /src/app

ENTRYPOINT ["/usr/bin/racket"]
