select first_name, last_name
from users
where first_name = 'Sirojiddin'
order by last_name
;

------------------------- Where clause with AND operator------------------

select first_name, last_name
from users
where first_name = 'Sirojiddin' and last_name = 'Khomdov'
order by first_name
;

------------------- Where clause with OR operator -----------------------

select first_name, last_name
from users
where first_name = 'Sirojiddin' or last_name = 'Khomdov'
order by first_name
;

----------------------Where clause with In Operator -----------------------

select * from users
where first_name in ('Sirojiddin', 'Temur')
order by last_name
;


----------------- Where clause with LIKE operator ------------------------

select * from users
where first_name Like 'F%'
order by last_name;

-------------------- Where clause with Between operator -----------------

select * from users
where length(first_name) between 1 and 6
order by last_name
;

---------------------- Where clause with Not Equal operator -------------(<>) example

select * from users
where
	first_name like 'S%' and
	last_name <> 'Khomidov'
	;

-------------------