include .env

DC = docker-compose -p $(COMPOSE_NAME) -f $(COMPOSE_FILE)

define HELP
@echo Utilitaire docker-compose
@echo ----------
@echo Commandes:
@echo ----------
@echo     build    		- Build le docker-compose.
@echo     start, up     	- Demarre les containers.
@echo     stop, down    	- Arrete les containers.
@echo     restart  		- Redemarre les containers.
@echo	  setup			- Ajout de regle dans le firewall.
@echo     help     		- Affiche l'aide.
endef
export HELP

help:
	$(HELP)

build:
	$(DC) build

start up:
	$(DC) up -d
	$(MAKE) sign-dnssec

stop down:
	$(DC) down

restart:
	$(DC) restart

logs:
	$(DC) logs

logs-%:
	$(DC) logs $*

bash-exec-%:
	docker exec -ti $* bash

sh-exec-%:
	docker exec -ti $* sh

delimage:
	docker rmi $$(docker images -q)

stopcontainer:
	docker stop $$(docker ps -aq)

delcontainer:
	docker rm -f $$(docker ps -aq)


sign-dnssec:
	docker exec -ti dns bash -c 'cd /keys && dnssec-signzone -t -g -A -3 $$(head -c 1000 /dev/urandom | sha1sum | cut -b 1-16) -N INCREMENT -k Kl2-4.ephec-ti.be.ksk.key -o l2-4.ephec-ti.be -t /etc/bind/db.l2-4.ephec-ti.be Kl2-4.ephec-ti.be.zsk.key'
	$(DC) restart dns

gen-dnssec:
	docker exec -ti dns dnssec-keygen -a NSEC3RSASHA1 -b 2048 -n ZONE l2-4.ephec-ti.be
	docker exec -ti dns mv Kl2-4.ephec-ti.be.+007+*.key Kl2-4.ephec-ti.be.zsk.key
	docker exec -ti dns mv Kl2-4.ephec-ti.be.+007+*.private Kl2-4.ephec-ti.be.zsk.private
	docker exec -ti dns dnssec-keygen -f KSK -a NSEC3RSASHA1 -b 4096 -n ZONE l2-4.ephec-ti.be
	docker exec -ti dns mv Kl2-4.ephec-ti.be.+007+*.key Kl2-4.ephec-ti.be.ksk.key
	docker exec -ti dns mv Kl2-4.ephec-ti.be.+007+*.private Kl2-4.ephec-ti.be.ksk.private
	
setup-ssl-apache:
	sudo docker run -v /home/cyril/certificate:/certs \
	-e SSL_SUBJECT=www.local \
	-e SSL_KEY=apache.key \
	-e SSL_CERT=apache.crt \
	-e SSL_CSR=apache.csr \
	-e CA_KEY=ca.key \
	-e CA_CERT=ca.crt \
	-e CA_EXPIRE=365 \
	-e SSL_EXPIRE=365 \
	paulczar/omgwtfssl
