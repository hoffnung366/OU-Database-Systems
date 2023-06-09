set datestyle to 'sql, european'; 

insert into Supplier
	values (111, 'supplier2', 'road2 tel aviv', 111111111),
		    (222, 'supplier3', 'road3 jerusalem', 222222222),
		    (333, 'supplier4', 'road2 eilat', 333333333);
			
insert into Branch
	values (989, 'Tel aviv', 'road 1 tel aviv'),
		    (878, 'Raanana', 'road 2 raanana'),
		    (767, 'Holon', 'road 3 holon');
		   
insert into Product
	values (987, 'Tomatoes', 'Vegetable', 'Kg', 5.99, 'manufacter1', 111),
		    (876, 'Cucumbers', 'Vegetable', 'Kg', 4.99, 'manufacter2', 222),
		    (765, 'Cornflakes', 'Cornflakes', 'Box', 15.9, 'manufacter2', 222),
		    (654, 'Camembert', 'Cheese', 'Box', 12.50, 'manufacter2', 111),
		    (543, 'Sweet potato', 'Vegetable', 'Kg', 16.40, 'manufacter3', 333),
		    (432, 'Red pepper', 'Vegetable', 'Kg', 15.99, 'manufacter1', 111);
			
insert into Stock
	values(987,989,50),(987,878,75),(987,767,100),
		   (876,989,30),(876,878,60),(876,767,25),
		   (765,989,20),(765,878,15),
		   (654,989,35),(654,878,10),(654,767,5),
		   (543,989,50),(543,767,165),
		   (432,989,17),(432,878,25),(432,767,30);
		  
insert into Receipt
	values(989,'18.3.20', '10:00', 'Cash'),
		   (989,'16.7.20', '12:30', 'Credit'),
		   (989,'15.7.20', '15:35', 'Credit'),
		   (878,'17.3.20', '8:30', 'Cash'),
		   (878,'22.7.20', '7:00', 'Credit'),
		   (767,'13.7.20', '22:00', 'Cash'),
		   (767,'10.3.20', '20:30', 'Cash'),
		   (767,'14.5.20', '14:25', 'Credit');
		  
insert into Purchase
	values(989,'18.3.20', '10:00', 987,5),
		   (989,'18.3.20', '10:00', 876, 3),
		   (989,'18.3.20', '10:00', 543, 4),
		   (989,'18.3.20', '10:00', 432, 1),
		   (878,'17.3.20', '8:30', 654, 1),
		   (878,'17.3.20', '8:30', 432, 3),
		   (767,'10.3.20', '20:30', 654,2),
		   (767,'10.3.20', '20:30', 987,3);
		   