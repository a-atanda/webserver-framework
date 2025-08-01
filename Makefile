.PHONY: build up down logs push

build:
	@docker compose build

up:
	@docker compose up -d

down:
	@docker compose down

logs:
	@docker compose logs -f

push:
	@git add .
	@git commit -m "\$(m)"
	@git push origin main
