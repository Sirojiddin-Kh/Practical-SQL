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