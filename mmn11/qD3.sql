with temp_units(bid,rdate,rtime, num_units) as
	(select bid, rdate, rtime, count(distinct code)
	 from Purchase
	 group by bid, rdate, rtime
	)
	
select bid, rdate, rtime
from Purchase natural join temp_units
where date_part('year', rdate) = date_part('year', current_date) and
	   date_part('month', rdate) = date_part('month', current_date) and
	   num_units < 3
group by bid, rdate, rtime;