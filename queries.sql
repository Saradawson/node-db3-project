-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
    SELECT
	productname,
    categoryname
FROM [Products] as p
join categories as c
on p.categoryid = c.categoryid;
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
    SELECT 
	orderid,
    shippername
FROM [Orders] as o
join shippers as s
	on o.shipperid = s.shipperid;
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
   select 
	productname,
    quantity
from orderdetail as o
join product as p
	on o.productid = p.id
    where o.orderid = 10251
    order by productname; 
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
