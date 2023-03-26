FROM ubuntu:22.04

MAINTAINER Justin Henderson justin@hasecuritysolutions.com

RUN apt update && \
    apt install openssl -y && \
    apt clean && \
    useradd -ms /bin/bash openssl

USER openssl

STOPSIGNAL SIGTERM

CMD /usr/bin/openssl
