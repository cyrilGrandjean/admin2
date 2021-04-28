include .env

DC = docker-compose -p $(COMPOSE_NAME) -f $(COMPOSE_FILE)

define HELP
@echo Utilitaire docker-compose
@echo ----------
@echo Commandes:
@echo ----------
@echo     build    - Build le docker-compose.
@echo     start    - Démarre les containers. Alias: up
@echo     stop     - Arrête les containers. Alias: down
@echo     restart  - Redémarre les containers.
@echo     help     - Affiche l'aide.
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
