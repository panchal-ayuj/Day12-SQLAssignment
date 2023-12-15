show databases;
use prac_schema;
create table account_table(
acct_num decimal(10),
acct_name varchar(100),
acct_type varchar(100),
PartyId decimal(8)
);
show tables;
insert into account_table (acct_num, acct_name, acct_type, PartyId) values (1000001111, "Ayuj", "SAVINGS", 10000011);
insert into account_table (acct_num, acct_name, acct_type, PartyId) values (1000002222, "Ayuj", "SAVINGS", 10000011);
insert into account_table (acct_num, acct_name, acct_type, PartyId) values (1000003333, "Ayuj", "SAVINGS", 10000011);
insert into account_table (acct_num, acct_name, acct_type, PartyId) values (1000004444, "Ayuj", "SAVINGS", 10000011);
insert into account_table (acct_num, acct_name, acct_type, PartyId) values (1000006666, "Ayuj", "SAVINGS", 10000022);

create table account_address(
acct_id decimal(10),
addr_1 varchar(100),
addr_2 varchar(100),
city varchar(100),
state varchar(100),
pincode decimal(6)
);
insert into account_address (acct_id, addr_1, addr_2, city, state, pincode) values (1000001111, "NO-1", "Road-2", "Ahmedabad", "Gujarat", 382449);
insert into account_address (acct_id, addr_1, addr_2, city, state, pincode) values (1000002222, "NO-1", "Road-2", "Ahmedabad", "Gujarat", 382449);
insert into account_address (acct_id, addr_1, addr_2, city, state, pincode) values (1000003333, "NO-1", "Road-2", "Ahmedabad", "Gujarat", 382449);
insert into account_address (acct_id, addr_1, addr_2, city, state, pincode) values (1000003333, "NO-1", "Road-2", "Surat", "Gujarat", 382449);
insert into account_address (acct_id, addr_1, addr_2, city, state, pincode) values (1000005555, "NO-1", "Road-2", "Surat", "Gujarat", 382449);
insert into account_address (acct_id, addr_1, addr_2, city, state, pincode) values (1000006666, "NO-1", "Road-2", "Surat", "Gujarat", 382449);


select account_table.acct_num, account_table.PartyId, account_address.addr_1, account_address.addr_2, account_address.city, account_address.state, account_address.pincode  from account_table inner join account_address on account_table.acct_num = account_address.acct_id where account_address.city = "Ahmedabad";

update account_address set addr_1 = "NO-1", addr_2 = "Road-3", city = "Mumbai", state = "Maharashtra", pincode = 380008 where acct_id = 1000002222;

select count(*)  from account_table inner join account_address on account_table.acct_num = account_address.acct_id where account_address.city = "Ahmedabad";

select account_table.acct_num, account_table.PartyId, account_address.addr_1, account_address.addr_2, account_address.city, account_address.state, account_address.pincode  from account_table left outer join account_address on account_table.acct_num = account_address.acct_id;

select account_table.acct_num, account_table.PartyId, account_address.addr_1, account_address.addr_2, account_address.city, account_address.state, account_address.pincode  from account_table right outer join account_address on account_table.acct_num = account_address.acct_id;

select account_table.acct_num, account_table.PartyId, account_address.addr_1, account_address.addr_2, account_address.city, account_address.state, account_address.pincode  from account_table join account_address on account_table.acct_num = account_address.acct_id;

select account_table.acct_num, account_table.PartyId, account_address.addr_1, account_address.addr_2, account_address.city, account_address.state, account_address.pincode  from account_table join account_address;

create view Address_ahm as (select account_table.acct_num, account_table.PartyId, account_address.addr_1, account_address.addr_2, account_address.city, account_address.state, account_address.pincode  from account_table inner join account_address on account_table.acct_num = account_address.acct_id where account_address.city = "Ahmedabad");

select * from Address_ahm;

create table party_table(
PartyId decimal(8) primary key,
party_name varchar(100),
phone_no decimal(10)
);

insert into party_table values(10000011, "P-1", 7990234243);
insert into party_table values(10000022, "P-2", 7990234243);

select account_table.acct_num, account_table.PartyId, account_address.addr_1, account_address.addr_2, account_address.city, account_address.state, account_address.pincode, party_table.party_name, party_table.phone_no from account_table inner join account_address on account_table.acct_num = account_address.acct_id inner join party_table on account_table.PartyId = party_table.PartyId;

create table date_table(
curr_date date,
amount int
);

insert into date_table values('2019-05-21',300);
insert into date_table values('2013-02-21',400);
insert into date_table values('2022-11-21',500);
insert into date_table values('2009-08-21',700);
insert into date_table values('2011-01-21',100);

select curr_date, sum(amount) from date_table group by curr_date order by sum(amount) desc limit 1 offset 1; 
select * from date_table;

drop table date_table;

create table asset_table(
asset_id int,
asset_type varchar(20)
);

insert into asset_table values (1, 'Definition'),(1,'Catalog'),(1,'sts'),(2,'Definition'),(2,'Boundary'),(2,'Catalog');

select * from asset_table as1
where not exists (select * from asset_table as2 where as1.asset_id = as2.asset_id and as2.asset_type = 'Boundary'); 

select * from asset_table as1
where asset_id not in (select as2.asset_id from asset_table as2 where as2.asset_type = 'Boundary');

select * from asset_table as1 left outer join asset_table as2 on as1.asset_id = as2.asset_id and as2.asset_type = 'Boundary'  where as2.asset_id is null;

select asset_id from asset_table where asset_type in ('Boundary', 'Definition') group by asset_id having min(asset_type) = 'Definition';
