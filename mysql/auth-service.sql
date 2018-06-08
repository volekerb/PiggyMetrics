drop table if exists user;

create table user (username varchar(255) primary key, password varchar(255));

-- user/password
insert into user (username, password) values ('user', '$2a$10$jX5Djp9uY4xXIoN1B6qWTOYyP04zYZjDJo8a96qnVTlRMa3GtWHw2');
