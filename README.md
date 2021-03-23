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

```
make psql
    $ drop schema executor cascade;\q
make cqlsh
    $ drop keyspace customer; exit;
```

### Shutdown
```
make db-down
```

