FROM ubuntu:bionic
RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install samba
RUN mkdir /Drive
COPY smb.conf /etc/samba/smb.conf
RUN pass=helloWorld && \
    (echo "$pass";echo "$pass") | passwd root && \
    (echo "$pass";echo "$pass") | smbpasswd -s -a root
COPY startscript.sh /root/startscript.sh
EXPOSE 445
VOLUME /Drive
CMD ["./root/startscript.sh"]