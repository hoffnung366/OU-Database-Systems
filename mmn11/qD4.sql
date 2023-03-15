with Single_product(sid) as
	(select sid
	 from Product
	 group by sid
	 having count(code)=1)
	 
select sname as supplier_name, pname as product_name
from Supplier natural join Product, Single_product
where Supplier.sid = Single_product.sid;