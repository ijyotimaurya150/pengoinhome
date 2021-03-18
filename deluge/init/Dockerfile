#build using sudo docker build --rm  -t jyotirmoyc/deluge ../deluge
FROM ubuntu:bionic
LABEL version=0.2
RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get install -y deluged deluge-web
EXPOSE 8112 58846 58946 58946/udp
VOLUME /Downloads
CMD ["deluge-web"]