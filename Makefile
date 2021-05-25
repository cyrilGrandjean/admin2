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

logs:
	$(DC) logs

logs-%:
	$(DC) logs $*

bash-exec-%:
	docker exec -ti $* bash

sh-exec-%:
	docker exec -ti $* sh

delimage:
	docker image prune

setup:
	sudo iptables -I DOCKER-USER -s $(SUBNET_DMZ) -d $(SUBNET_TRUSTED) -j ACCEPT
	sudo iptables -I DOCKER-USER -s $(SUBNET_TRUSTED) -d $(SUBNET_DMZ) -j ACCEPT
	
	sudo iptables -I DOCKER-USER -s $(SUBNET_ENTREPRISE) -d $(SUBNET_DMZ) -j ACCEPT
	sudo iptables -I DOCKER-USER -s $(SUBNET_DMZ) -d $(SUBNET_ENTREPRISE) -j ACCEPT

