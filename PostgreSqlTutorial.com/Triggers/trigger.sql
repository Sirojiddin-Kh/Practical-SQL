create table employees (
	
	employee_id serial not null primary key,
	first_name varchar(24) not null,
	last_name varchar(24) not null
);

create table employee_audid(
	employee_audit_id serial not null primary key,
	employee_id int not null,
	last_name varchar(23) not null,
	changed_on timestamp(6) not null
);


create or replace function log_last_name_change() returns trigger language plpgsql as
	$$
		begin

			if new.last_name <> old.last_name then
				insert into employee_audid(employee_audit_id, last_name, changed_on)
					values
						(old.employee_id, old.last_name, now());
			end if;

			return new;

		end;
	$$;


create trigger log_last_name_changes
	before update
	on employees
	for each row execute procedure log_last_name_change();


insert into employees (first_name, last_name) 
	values
		('Sirojiddin', 'Khomidov'),
		('Akramov', 'Farhod');

update employees set last_name = 'Komilov' where employee_id = 2;
