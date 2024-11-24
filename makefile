postgres:
	docker run --name postgres -p 5432:5432 -e POSTGRES_USER=admin -e POSTGRES_PASSWORD=admin -d postgres:latest

createdb:
	docker exec -it postgres createdb --username=admin --owner=admin simple_bank

dropdb:
	docker exec -it postgres dropdb --username=admin simple_bank

migrateup:
	migrate -path db/migration --database "postgresql://admin:admin@localhost:5432/simple_bank?sslmode=disable" --verbose up

migratedown:
	migrate -path db/migration --database "postgresql://admin:admin@localhost:5432/simple_bank?sslmode=disable" --verbose down

sqlc:
	sqlc generate

test:
	go test -v -cover ./...

.PHONY: postgres createdb dropdb migratedown migrateup sqlc test