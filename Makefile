build:
	docker compose build

up:
	docker compose up -d

down:
	docker compose down

bash:
	docker compose exec app bash

console:
	docker compose exec app rails console

