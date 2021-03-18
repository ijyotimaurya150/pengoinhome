FROM ubuntu:bionic
RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get install -y apt-utils curl gnupg
RUN curl -fsSL https://gerbera.io/gpg | apt-key add -
RUN echo "deb https://dl.bintray.com/gerbera/gerbera bionic main" | tee -a /etc/apt/sources.list
RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get install -y gerbera sqlite3
COPY config.xml /root/.config/gerbera/config.xml
EXPOSE 1900 1900/udp 49152 49152/udp 49153 49153/udp
VOLUME /content
CMD ["gerbera"]