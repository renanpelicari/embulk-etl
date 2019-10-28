#!/bin/bash
docker stop db_product
docker rm db_product

docker build -t db_product source/mysql/.
#docker run -h host.product -p 3306:3306 --name db_product -e MYSQL_ROOT_PASSWORD=pub123 -d mysql:8.0