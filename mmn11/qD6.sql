Select bid
From Stock
Group by bid
Having count(code) = (select count(*) from Product);