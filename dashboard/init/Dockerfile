FROM ubuntu:latest
LABEL version=0.1
RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get install -y apache2 
RUN service apache2 start
RUN mkdir /web
RUN mkdir /web/html
RUN mkdir /root/files
COPY webpage/ /root/files
COPY apache2.conf /etc/apache2/apache2.conf
COPY 000-default.conf /etc/apache2/sites-available/000-default.conf
COPY startscript.sh /root/startscript.sh
RUN chmod +xxx /root/startscript.sh
EXPOSE 80
ENTRYPOINT ["./root/startscript.sh"]
