COMPOSE_FILES = \
	-f docker-compose.base.yml \
	-f docker-compose.jenkins.yml \

ENV_FILE = .env

up:
	docker compose $(COMPOSE_FILES) --env-file $(ENV_FILE) up -d

down:
	docker compose $(COMPOSE_FILES) --env-file $(ENV_FILE) down

ps:
	docker compose $(COMPOSE_FILES) --env-file $(ENV_FILE) ps
