# docs
typeboot specification and usage


## Getting Started


### Start Database 
```
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


### Shutdown
```
make db-down
```

