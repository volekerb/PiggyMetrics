drop table user if exists;

create table user (username varchar(255) not null, password varchar(255), primary key (username));
