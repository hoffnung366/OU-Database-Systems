with tmp_purch(bid,rdate,rtime) as
	((select bid, rdate, rtime
	 from Product natural join Receipt 
	 where total > 50)
	 except
	 (select bid, rdate, rtime
	 from Product natural join Purchase 
	 where pname = 'Cucumbers')
	 )
	  
select bid, rdate, rtime
from Product natural join tmp_purch 
group by bid, rdate, rtime;