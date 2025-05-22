up:
	docker compose -f compose.local.yaml up -d --build

down:
	docker compose -f compose.local.yaml down

restart:
	docker compose -f compose.local.yaml restart

rebuild:
	docker compose -f compose.local.yaml down
	docker compose -f compose.local.yaml up -d --build

bash-next:
	docker compose -f compose.local.yaml exec next sh

bash-express:
	docker compose -f compose.local.yaml exec express sh

bash-postgres:
	docker compose -f compose.local.yaml exec postgresql sh

migrate:
	docker compose -f compose.local.yaml exec express npm run migrate:dev

reset:
	docker compose -f compose.local.yaml exec express npm run migrate:reset
