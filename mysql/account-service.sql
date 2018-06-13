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

insert into account (name, last_seen, note) values ('demo', current_timestamp, 'demo note');

insert into item(id, amount, currency, icon, period, title) values (1, 1300, 'USD', 'home', 'MONTH', 'Rent');
insert into item(id, amount, currency, icon, period, title) values (2, 120, 'USD', 'utilities', 'MONTH', 'Utilities');
insert into item(id, amount, currency, icon, period, title) values (3, 20, 'USD', 'meal', 'MONTH', 'Meal');
insert into item(id, amount, currency, icon, period, title) values (4, 240, 'USD', 'gas', 'MONTH', 'Gas');
insert into item(id, amount, currency, icon, period, title) values (5, 3500, 'EUR', 'island', 'YEAR', 'Vacation');
insert into item(id, amount, currency, icon, period, title) values (6, 30, 'EUR', 'phone', 'MONTH', 'Phone');
insert into item(id, amount, currency, icon, period, title) values (7, 700, 'USD', 'sport', 'YEAR', 'Gym');

insert into account_expenses (account_name, expenses_id) values ('demo', 1);
insert into account_expenses (account_name, expenses_id) values ('demo', 2);
insert into account_expenses (account_name, expenses_id) values ('demo', 3);
insert into account_expenses (account_name, expenses_id) values ('demo', 4);
insert into account_expenses (account_name, expenses_id) values ('demo', 5);
insert into account_expenses (account_name, expenses_id) values ('demo', 6);
insert into account_expenses (account_name, expenses_id) values ('demo', 7);

insert into item(id, amount, currency, icon, period, title) values (11, 42000, 'USD', 'wallet', 'YEAR', 'Salary');
insert into item(id, amount, currency, icon, period, title) values (12, 500, 'USD', 'edu', 'MONTH', 'Scholarship');
insert into account_incomes (account_name, incomes_id) values ('demo', 1);
insert into account_incomes (account_name, incomes_id) values ('demo', 2);

insert into saving(account_name, amount, capitalization, currency, deposit, interest) values ('demo', 5900, false, 'USD', true, 3.32);

