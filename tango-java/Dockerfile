FROM ubuntu:18.04

MAINTAINER pshcyrill@mail.ru

ENV DEBIAN_PRIORITY=critical

RUN apt-get update -y
RUN apt-get install -y wget tango-common openjdk-8-jre liblog4j1.2-java
#apt-get install libcos4-2 libcos4-dev omniorb-idl
RUN cd ~/ && wget -c https://people.debian.org/~picca/libtango-java_9.2.5a-1_all.deb
RUN dpkg -i ~/libtango-java_9.2.5a-1_all.deb

CMD /bin/bash