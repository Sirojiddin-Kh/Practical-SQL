create or replace function users_trigger_fn () returns trigger language plpgsql as 

$$
  
declare 
    smth users%rowtype;
  begin 
    select * from users as u into smth where lower(new.name) = lower(u.name) and lower(new.surname) = lower(u.surname) and lower(new.middle_name) = lower(u.middle_name);
    if found then
      return null;
    else 
      return new;
    end if;


  end;

$$;

create trigger users_trigger   
before insert on users
for each row execute procedure users_trigger_fn();