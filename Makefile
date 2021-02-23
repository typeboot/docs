.PHONY: pull

pull:
	@docker-compose -f docker-compose-dbs.yaml pull
	@docker-compose -f step1-docker-compose-generate.yaml pull
	@docker-compose -f step2-docker-compose-execute.yaml pull

db-up:
	@docker-compose -f docker-compose-dbs.yaml up -d

db-down:
	@docker-compose -f docker-compose-dbs.yaml down

db-ps:
	@docker-compose -f docker-compose-dbs.yaml ps

generate:
	@docker-compose -f step1-docker-compose-generate.yaml up

execute:
	@docker-compose -f step2-docker-compose-execute.yaml up

cqlsh:
	@docker exec -it docs_dse_1 cqlsh

psql:
	@docker exec -it docs_postgres_1 psql -U postgres

usage:
	@echo targets - pull, db-up, db-down, db-ps, generate, execute

