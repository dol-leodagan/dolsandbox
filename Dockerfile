FROM alpine:edge

MAINTAINER Leodagan <leodagan@freyad.net>

RUN apk update && \
    apk add --no-cache --update bash && \
    apk add --no-cache --update wget && \
    apk add --no-cache --update unzip && \
    apk add --no-cache --update mono && \
    apk add --no-cache --update sqlite

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

CMD [ "/entrypoint.sh" ]
