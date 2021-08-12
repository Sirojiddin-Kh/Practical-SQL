create table basket_a (
	a serial not null primary key,
	fruit_a varchar(24)
);

create table basket_b (
	b serial not null primary key,
	fruit_b varchar(24)
);

insert into basket_a (fruit_a)
	values 
		('Apple'), ('Orange'), ('Banana'), ('Cucumber');


insert into basket_b (fruit_b)
	values
		('Orange'), ('Apple'), ('Watermelon'), ('Pear');



select
	a, 
	fruit_a,
	b,
	fruit_b

from 
	basket_a		
inner join basket_b
	on fruit_a = fruit_b;