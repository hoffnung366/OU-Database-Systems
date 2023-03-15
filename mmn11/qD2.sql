select pname as product_name, sname as supplier_name
from Product natural join Supplier
where descr = 'Vegetable' and uprice > 15;