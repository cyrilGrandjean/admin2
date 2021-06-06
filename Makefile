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

stop down:
	$(DC) down

restart:
	$(DC) restart

setup:
	sudo iptables -I DOCKER-USER -s $(SUBNET_DMZ) -d $(SUBNET_TRUSTED) -j ACCEPT
	sudo iptables -I DOCKER-USER -s $(SUBNET_TRUSTED) -d $(SUBNET_DMZ) -j ACCEPT
	
	sudo iptables -I DOCKER-USER -s $(SUBNET_ENTREPRISE) -d $(SUBNET_DMZ) -j ACCEPT
	sudo iptables -I DOCKER-USER -s $(SUBNET_DMZ) -d $(SUBNET_ENTREPRISE) -j ACCEPT

sign-dnssec:
	docker exec -ti dns bash -c 'cd /keys && dnssec-signzone -t -g -A -3 $$(head -c 1000 /dev/urandom | sha1sum | cut -b 1-16) -N INCREMENT -k Kl2-4.ephec-ti.be.ksk.key -o l2-4.ephec-ti.be -t /etc/bind/db.l2-4.ephec-ti.be Kl2-4.ephec-ti.be.zsk.key'
gen-dnssec:
	docker exec -ti dns dnssec-keygen -a NSEC3RSASHA1 -b 2048 -n ZONE l2-4.ephec-ti.be
	docker exec -ti dns mv Kl2-4.ephec-ti.be.+007+*.key Kl2-4.ephec-ti.be.zsk.key
	docker exec -ti dns mv Kl2-4.ephec-ti.be.+007+*.private Kl2-4.ephec-ti.be.zsk.private
	docker exec -ti dns dnssec-keygen -f KSK -a NSEC3RSASHA1 -b 4096 -n ZONE l2-4.ephec-ti.be
	docker exec -ti dns mv Kl2-4.ephec-ti.be.+007+*.key Kl2-4.ephec-ti.be.ksk.key
	docker exec -ti dns mv Kl2-4.ephec-ti.be.+007+*.private Kl2-4.ephec-ti.be.ksk.private
