select
	first_name || ' ' || last_name as full_name,
	email
	from users;

select
	first_name,
	last_name as surname
	from users
	where last_name = 'Khomidov';

select 
	first_name as name,
	last_name as surname
	from users
	order by name asc, surname desc;


select 
	first_name as name,
	length(first_name) as len
	from users
	order by len desc;


select 
	distinct on (first_name)  as "distinct users"
	from users
	order by first_name;
	