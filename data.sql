create table account_details(
account_no varchar(100) primary key,
user_id  bigint,
account_name varchar(100),
account_type varchar(30),
balance_date date,
currency varchar(30),
opening_available_balance real);

--drop table account_details


insert into account_details values('12345567',1, 'ANZSaving','Savings','12-06-2020','AUD',10000)

insert into account_details values('585309209',2, 'SGSavings933','Savings','10-06-2020','AUD',5000)

insert into account_details values('321143048',3, 'AUCurrent433','Current','10-06-2020','AUD',88005.93)

insert into account_details values('321142345',2, 'AUCurrent347','Current','10-06-2020','AUD',3003.33)

create table transaction_details(
transaction_id bigint,
account_no varchar(100) FOREIGN KEY REFERENCES account_details(account_no),
account_name varchar(100),
value_date date,
currency varchar(30),
debit_amount real,
credit_amount real,
debit_credit_card varchar(30),
transaction_narrative varchar(500) )

drop table transaction_details

insert into transaction_details values(1,'12345567','ANZSaving','10-06-2020','AUD',0,1200.55,'Credit','');

insert into transaction_details values(1,'12345567','ANZSaving','10-06-2020','AUD',0,1200.55,'Credit','');
insert into transaction_details values(2,'585309209','SGSavings933','10-06-2020','AUD',0,1000.55,'Credit','');
insert into transaction_details values(3,'585309209','SGSavings933','8-06-2020','AUD',0,500.55,'Credit','');
insert into transaction_details values(4,'321142345','AUCurrent347','10-06-2020','AUD',0,100.55,'Credit','');








