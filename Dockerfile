FROM alpine

MAINTAINER Justin Henderson justin@hasecuritysolutions.com

RUN apk add --update openssl && \
    rm -rf /var/cache/apk/* && \
    adduser -Ds /bin/sh openssl

USER openssl

STOPSIGNAL SIGTERM

CMD /usr/bin/openssl
