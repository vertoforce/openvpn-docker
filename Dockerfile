FROM debian:8

VOLUME ["/etc/openvpn"]

RUN apt-get update
RUN apt-get install -y openvpn
#RUN sysctl -w net.ipv4.ip_forward=1

COPY setup_openvpn.sh /
COPY start.sh /
COPY server.conf /etc/openvpn/server.conf
RUN chmod +x *.sh

WORKDIR /

CMD ["./start.sh"]
