with Sales(bid, val) as
	(select bid, sum(total)
	 from Receipt
	 group by bid)
	 
select bid as branch_id, bname as branch_name
from Branch natural join Sales
where Branch.bid = Sales.bid and val IN 
					(select max(val)
					 from Sales);