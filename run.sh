#!/bin/bash

# change dir to current one
cd "$(dirname "$0")"

docker-compose -f source/mysql/docker-compose.yml up &
docker-compose -f source/mongo/docker-compose.yml up &
