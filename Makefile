build:
	docker compose build

up:
	docker compose up

down:
	docker compose down

bash:
	docker compose exec --user=root web bash

console:
	docker compose exec web rails console

