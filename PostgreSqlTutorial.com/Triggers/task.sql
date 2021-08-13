create table social_account (
	user_id serial not null primary key,
	first_name varchar(24) not null,
	last_name varchar(24) not null,
	username varchar(36) null
);

create or replace function fill_username() returns trigger language plpgsql as 
	$$
		begin
			if new.username is null then

				new.username = lower(new.first_name) || lower((new.last_name);

			end if;

			return new;
		end;

	$$;

create trigger username 
	before insert 
	on social_account
	for each row execute procedure fill_username();