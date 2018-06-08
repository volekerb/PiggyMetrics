#!/usr/bin/env bash
export CONFIG_SERVICE_PASSWORD=qwerty
export NOTIFICATION_SERVICE_PASSWORD=qwerty
export STATISTICS_SERVICE_PASSWORD=qwerty
export ACCOUNT_SERVICE_PASSWORD=qwerty
export MONGODB_PASSWORD=qwerty
export MYSQL_PASSWORD=qwerty

docker-compose -f docker-compose.yml -f docker-compose.dev.yml build
docker-compose -f docker-compose.yml -f docker-compose.dev.yml up
