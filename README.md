# docs
typeboot specification and usage


## Getting Started


### Start Database 
```
#create cassandra certificate
./ca.sh cassandra
#build cassandra with updated cassandra yaml file
make build
#run cassandra and postgres db
make db-up
```
check running processes using ```make db-ps```

### Generate DDL from spec
```
make generate
```


### Execute DDLs
```
make execute
```

### Verify State
```
make psql
select script_id, script_name, status, executed from executor.jdbc_migrations;
```

### Reset DB status
You can drop executor schema as well as the cql schema either manually or using the reset-db target
```
make reset-db
```

### Shutdown
```
make db-down
```

