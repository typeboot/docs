.PHONY: pull

pull:
	@docker-compose -f docker-compose-dbs.yaml pull
	@docker-compose -f step1-docker-compose-generate.yaml pull
	@docker-compose -f step2-docker-compose-execute.yaml pull

build:
	@docker-compose -f docker-compose-dbs.yaml build

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
	@docker exec -it dse cqlsh --ssl -ucassandra -pcassandra

psql:
	@docker exec -it postgres psql -U postgres

usage:
	@echo targets - pull, db-up, db-down, db-ps, generate, execute

