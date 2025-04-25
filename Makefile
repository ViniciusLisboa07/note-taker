build:
	docker compose build

up:
	docker compose up -d

down:
	docker compose down

bash:
	docker compose exec web bash

console:
	docker compose exec web rails console

