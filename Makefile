include .envrc
MIGRATIONS_DIR=cmd/migrate/migrations

.PHONY: migrate-create
migration:
	@migrate create -seq -ext sql -dir $(MIGRATIONS_DIR)  $(filter-out $@, $(MAKECMDGOALS))

.PHONY: migrate-up
migrate-up:
	@migrate -path $(MIGRATIONS_DIR) -database $(DB_ADDR) up

.PHONY: migrate-down
migrate-down:
	@migrate -path $(MIGRATIONS_DIR) -database $(DB_ADDR) down
