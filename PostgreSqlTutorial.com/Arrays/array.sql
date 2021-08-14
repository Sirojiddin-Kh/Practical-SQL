create table contacts (
	contact_id serial not null primary key,
	name varchar(36) not null,
	phones text []
);


insert into contacts (name, phones) values ('Sirojiddin', array ['(90)-806-48-77', '(99)-477-69-43']);
insert into contacts (name, phones) values ('Farkhod', array ['(94) 647-69-15', '(99)-477-69-43']);



--------------- For retreving all phone numbers of users --------------------
select 
	name,
	phones
from contacts;


-------------- For retreving the only first number of users --------------

select 
	name,
	phones [1]
from contacts;

------------------- Using Where clause -----------------

select
	name
from 
	contacts
where phones [2] = '(99)-477-69-43';


--------------- Expanding Arrays ----------------------

select name, unnest(phones) from contacts;
