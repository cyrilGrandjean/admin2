FROM internetsystemsconsortium/bind9:9.16

RUN apt-get update
RUN apt-get install -y dnsutils
COPY bind /etc/bind/
RUN mkdir -p /log/bind
RUN chown -R bind:bind /log/bind
RUN chmod 775 -R /log/bind
CMD /usr/sbin/named -f -c /etc/bind/named.conf -u bind