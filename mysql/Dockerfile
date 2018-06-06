FROM mysql:latest
MAINTAINER me

ENV MYSQL_DATABASE=accounts

ADD account-service.sql /docker-entrypoint-initdb.d
ADD auth-service.sql /docker-entrypoint-initdb.d

EXPOSE 3306
