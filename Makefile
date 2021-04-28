include .env

DC = docker-compose -p $(PROJECT_NAME) -f $(COMPOSE_FILE)

define HELP
Utilitaire docker-compose

Commandes:
----------
    build    - Build le docker-compose.
    start    - Démarre les containers. Alias: up
    stop     - Arrête les containers. Alias: down
    restart  - Redémarre les containers.
    help     - Affiche l'aide.
endef
export HELP

help:
	@echo $(HELP)

build:
	$(DC) build

start up:
	$(DC) up -d

stop down:
	$(DC) down

restart:
	$(DC) restart
