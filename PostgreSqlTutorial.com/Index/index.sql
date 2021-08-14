create table users (
	user_id serial not null primary key,
	email varchar(64),
	first_name varchar(24),
	last_name varchar(24),
	room_number smallint
);

insert into users(email, first_name, last_name, room_number) values ('web.com', 'Sirojiddin', 'Khomidov', 2);
insert into users(email, first_name, last_name, room_number) values ('web.com', 'Jhon', 'Simpson', 1);

create unique index email_idx on users (email);

create unique index full_name_idx on users (first_name, last_name);
create index room_number_index on users (room_number);

create index full_name_index on users ((first_name || ' ' || last_name));
select * from users where first_name || ' ' || last_name ilike 'Sirojiddin Khomidov';

