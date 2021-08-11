create table users (
	user_id serial not null primary key,
	first_name varchar(24),
	last_name varchar(24),
	email varchar(24)
);

insert into users (first_name, last_name, email)
	values
		('Sirojiddin', 'Khomidov', 'siroj@gmail.com'),
		('Farhod', 'Akramov', 'farhod@gmail.com'),
		('Temur', 'Komilov', 'temur@gmail.com');