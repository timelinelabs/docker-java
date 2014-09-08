FROM ubuntu:14.04
MAINTAINER Albert Dixon <albert@timelinelabs.com>

ENV JRE_VERSION         jre1.7.0_67
ENV JAVA_URL            http://download.oracle.com/otn-pub/java/jdk/7u67-b01/jre-7u67-linux-x64.tar.gz
ENV JAVA_HOME           /usr/local/java
ENV PATH                $JAVA_HOME/bin:$PATH
ENV TMPDIR              /tmp

ENV DEBIAN_FRONTEND     noninteractive

WORKDIR /tmp
RUN apt-get update -qq &&\
    apt-get install -q -y --no-install-recommends curl ca-certificates &&\
    curl -# -H "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" \
    -kL $JAVA_URL | tar -xz -C /usr/local &&\
    ln -s /usr/local/$JRE_VERSION /usr/local/java &&\
    apt-get autoremove -y && apt-get autoclean -y &&\
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /opt/rubybuild

RUN java -version