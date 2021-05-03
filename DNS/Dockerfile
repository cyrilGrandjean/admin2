FROM internetsystemsconsortium/bind9:9.16

RUN apt-get update
RUN apt-get install -y dnsutils
COPY bind /etc/bind/
COPY log /var/log/bind
RUN chown -R bind:root /var/log/bind
RUN chmod 775 -R /var/log/bind