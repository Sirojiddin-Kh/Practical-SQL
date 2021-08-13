
-------------------- Limit Clause --------------------

select * from users
order by user_id
limit 2;

-------------- Limit with Offset example ------------

select 
	first_name, last_name
	from users
	order by user_id
	limit 4 offset 1;