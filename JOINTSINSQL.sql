Create database joints_in_sql;

use joints_in_sql;

select *
from Categories;

select *
from Customers;

select *
from Employees;

select *
from OrderDetails;

select *
from Orders;

select *
from Products;

select *
from Shippers;

select *
from Supplier;

--types of joints in SQL they are 
--inner join, left join, right join, full join
--inner_join
SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
    INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID
;

--left_join
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
    LEFT JOIN Orders ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CustomerName;


--right_join
SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
FROM Orders
    RIGHT JOIN Employees
    ON Orders.EmployeeID = Employees.EmployeeID
ORDER BY Orders.OrderID;


--full_join
SELECT Customers.CustomerName, Orders.OrderID , Customers.ContactName
FROM Customers
    FULL OUTER JOIN Orders ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CustomerID;

