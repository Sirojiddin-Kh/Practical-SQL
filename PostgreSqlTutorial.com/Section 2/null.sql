----------------- Null -------------------
insert into users(first_name, last_name) values ('Hayrulla', 'Jo''rayev');

select 
	first_name, last_name
	from users
	where email is not null;	
