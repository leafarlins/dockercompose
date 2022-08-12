# Mongodb

Subindo uma instância do mongodb e 


Exemplo para criação de usuário e restore de base

```sh
# mongo -u root -p rieGh1Ah7Thahch1
> use admin
> db.createUser({ user: "mongouser" , pwd: "mongopass", roles: ["userAdminAnyDatabase", "dbAdminAnyDatabase", "readWriteAnyDatabase"]})
> exit
# mongorestore -u mongouser -p mongopass /tmp/dump
```

Criando usuário para acessar uma das databases restauradas

```sh
# mongo -u root -p rieGh1Ah7Thahch1
use myFirstDatabase
db.createUser({ user: "mongouser" , pwd: "mongopass", roles: [ { role: "readWrite", db: "myFirstDatabase"} ], passwordDigestor: "server"})
```

