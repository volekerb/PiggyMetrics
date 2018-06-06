drop table if exists account;
drop table if exists account_expenses;
drop table if exists account_incomes;
drop table if exists item;
drop table if exists saving;

create table account (
  name varchar(255) primary key,
  last_seen timestamp,
  note text
);

create table item (
  id integer auto_increment primary key,
  amount decimal(19,2) not null,
  currency integer not null,
  icon varchar(255) not null,
  period integer not null,
  title varchar(20) not null
);

create table account_expenses (
  account_name varchar(255) not null ,
  expenses_id integer(255) not null unique,
  constraint fk_expence_account foreign key(account_name) references account(name),
  constraint fk_expence_item foreign key(expenses_id) references item(id)
);

create table account_incomes (
  account_name varchar(255) not null ,
  incomes_id integer(255) not null unique,
  constraint fk_income_account foreign key(account_name) references account(name),
  constraint fk_income_item foreign key(incomes_id) references item(id)
);

create table saving (
  account_name varchar(255) primary key,
  amount decimal(19,2) not null,
  capitalization boolean not null,
  currency integer not null,
  deposit boolean not null,
  interest decimal(19,2) not null,
  constraint fk_saving_account foreign key(account_name) references account(name)
);


