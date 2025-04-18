#!/usr/bin/make

# choco install make

.DEFAULT_GOAL := help

##@ Initialize work

init: ## Start a new development environment
	$(MAKE) up
	@sleep 10

##@ Docker actions

logs: ## Show the output logs
	docker compose logs

log: ## Open the logs and follow the news
	docker compose logs --follow

restart: ## Restart the app container
	docker compose down
	docker compose up -d

up: ## Put the project UP
	docker compose up -d

down: ## Put the project DOWN
	docker compose down

##@ Bash shortcuts

bash: ## Enter bash nginx container
	docker compose exec --user application nginx bash