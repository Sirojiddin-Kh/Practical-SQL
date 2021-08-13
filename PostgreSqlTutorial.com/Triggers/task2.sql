create table social_password (
	user_id serial not null primary key,
	first_name varchar(24) not null,
	last_name varchar(24) not null,
	username varchar(24) not null,
	password varchar(64) not null,
	create_at timestamptz default current_timestamp
);

create or replace function encrypting() returns trigger language plpgsql as 
	$$
		begin
			new.password = 'Sirojiddin'

			return new;
		end;
	$$;

create trigger encrypt_password 
before insert
on social_password
for each row execute procedure encrypting();