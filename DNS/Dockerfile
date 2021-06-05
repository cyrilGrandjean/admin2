FROM internetsystemsconsortium/bind9:9.16

RUN apt-get update
RUN apt-get install -y dnsutils
# copy tout les fichier de config dans l'emplacment adequate
# COPY bind /etc/bind/

# creation du dossier bind a la location suivante: /log/bind
RUN mkdir -p /log/bind
# ajout du group
RUN chown -R bind:bind /log/bind
# ajout des droits
RUN chmod 775 -R /log/bind
CMD /usr/sbin/named -f -c /etc/bind/named.conf -u bind