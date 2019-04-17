#!/usr/bin/env bash

docker rm -f mysql
docker run -d --name=mysql -p 3306:3306 database