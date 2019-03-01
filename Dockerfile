MAINTAINER SSLSource - support@sslsource.io

FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y gnupg2 curl

RUN curl -Sso - https://archive.sslsource.io/sslsource-archive.key | apt-key add -
RUN echo "deb http://archive.sslsource.io bionic main" > /etc/apt/sources.list.d/sslsource.list

RUN apt-get update
RUN apt-get install -y sslsource

CMD ["/usr/bin/sslsource", "run"]
