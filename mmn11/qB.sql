Create or replace function trigf1() 
returns trigger as $$
Declare enough_units record;
		temp_uprice float;
		temp_units record;
		
Begin
	select * INTO enough_units
	from Stock
	where units >= New.units and code = New.code and bid = New.bid;
	if enough_units IS NULL then
		raise notice 'Not enough units in the stock';
		raise notice '% units can not be purchase', New.units;
		return null;
	
	else
		select uprice INTO temp_uprice
		from Product
		where code = New.code;
		if temp_uprice IS NOT NULL then
			update Receipt
			set total = total + New.units * temp_uprice
			where bid = New.bid and rdate = New.rdate and rtime = New.rtime; 
		end if;
		
		select units INTO temp_units
		from Stock
		where code = New.code and bid = New.bid;
		if temp_units IS NOT NULL then
			update Stock
			set units = units - New.units
			where code = New.code and bid = New.bid;
		end if;
		
	end if;
	return new;
End;
$$language plpgsql;

create trigger T1 before insert
on Purchase
for each row
execute procedure trigf1();