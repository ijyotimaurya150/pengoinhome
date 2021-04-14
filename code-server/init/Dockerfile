FROM ubuntu:latest
LABEL version=0.1
RUN apt-get update
RUN apt-get install -y curl systemd libcap2-bin
RUN curl -fsSL https://code-server.dev/install.sh | sh
RUN setcap cap_net_bind_service=+ep /usr/lib/code-server/lib/node
RUN mkdir /root/.config
RUN mkdir /root/.config/code-server
RUN mkdir /root/cs
COPY config.yaml /root/.config/code-server/config.yaml
RUN chmod +644 /root/.config/code-server/config.yaml
EXPOSE 443
VOLUME /root/.local/share/code-server
CMD ["code-server"]
