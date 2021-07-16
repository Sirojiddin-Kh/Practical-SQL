select last_name, school, hire_date
from teachers
order by school asc, hire_date desc;



select last_name, school, hire_date
from teachers
where school = 'Myers Middle School';



select first_name, last_name, school
from teachers
where first_name = 'Janet';


select school
from teachers
where school != 'F.D. Roosevelt HS';


select first_name, last_name, hire_date
from teachers
where hire_date < '2000-01-01';


select first_name, last_name, salary
from teachers
where salary >= 43000;


select first_name, last_name, school, salary
from teachers
where salary between 40000 and 65000;


-- Using LIKE and ILIKE with WHERE--

-- Like operator, which is part of the ANSI SQL standart, is case sensitive.
-- ILike operator, which is a PostgreSQL only implementation, is case insensitve.


select first_name
from teachers
where first_name Like 'sam%';

select first_name
from teachers
where first_name ILike 'sam%';


--- Combining Operators with AND and OR ---

select * from teachers 
where school = 'Myers Middle School' and salary < 40000;

select * from teachers
where last_name = 'Cole' or last_name = 'Bush';


select * from teachers
where school = 'F.D. Roosevelt HS' and (salary < 38000 or salary > 40000);