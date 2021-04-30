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
	sudo iptables -I DOCKER-USER -s 192.168.30.0/24 -d 192.168.10.0/24 -j ACCEPT
	sudo iptables -I DOCKER-USER -s 192.168.10.0/24 -d 192.168.30.0/24 -j ACCEPT
	
	sudo iptables -I DOCKER-USER -s 192.168.0.0/24 -d 192.168.30.0/24 -j ACCEPT
	sudo iptables -I DOCKER-USER -s 192.168.30.0/24 -d 192.168.0.0/24 -j ACCEPT

