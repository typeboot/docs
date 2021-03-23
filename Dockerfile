FROM datastax/dse-server:6.8.9-ubi7
COPY cassandra/keystore.p12 /opt/dse/resources/dse/conf/keystore.p12
COPY cassandra.yaml /opt/dse/resources/cassandra/conf/cassandra.yaml
