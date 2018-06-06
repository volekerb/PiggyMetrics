#!/usr/bin/env bash
# build
# docker build --tag accounts-mysql .

# start
# docker run --name accounts-mysql -e MYSQL_ROOT_PASSWORD=qwerty -e MYSQL_USER=accounts -e MYSQL_PASSWORD=123 -d accounts-mysql

# connect
# docker run -it --link accounts-mysql:mysql --rm mysql sh -c 'exec mysql -h"$MYSQL_PORT_3306_TCP_ADDR" -P"$MYSQL_PORT_3306_TCP_PORT" -uaccounts -p"$MYSQL_PASSWORD"'
