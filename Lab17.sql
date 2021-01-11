-- SQL Lab 17

--1. Select all records from the customers table. 
select * 
from customers

--2. Find all customers living in London or Paris
select *
from customers
where City Like 'Paris' or City Like 'London'

--3. Make a list of cities where customers are coming from. The list should not have any duplicates or nulls.
select distinct City
from Customers
where City is not Null

--4. Show a sorted list of employees’ first names
select FirstName
from Employees
order by Firstname asc

--5. Find the average of employees’ salaries 
-- Information not in Database

--6. Show the first name and last name for the employee with the highest salary.
-- Information not in Database

--7. Find a list of all employees who have a BA
select Notes
from Employees
where Notes like '% BA %'

--8. Find total for each order 
select * from [Order Subtotals]

--9. Get a list of all employees who got hired between 1/1/1994 and today
select FirstName, LastName, HireDate
from Employees
where HireDate >= '1/1/1994'

--10. Find how long employees have been working for Northwind (in years!)
select FirstName, LastName, datediff(year, HireDate, GetDate()) as [Years Employed]
from Employees 

--11.  Get a list of all products sorted by quantity (ascending and descending order)
select ProductName, UnitsInStock
from Products
order by UnitsInStock ASC

select ProductName, UnitsInStock
from Products
order by UnitsInStock DESC

--12. Find all products that are low on stock (quantity less than 6)
select ProductName, UnitsInStock
from Products
where UnitsInStock < 6

--13. Find a list of all discontinued products.
select ProductName from products
where Discontinued = 1

--14. Find a list of all products that have Tofu in them.
select * from Products
where ProductName like '%tofu%'

--15. Find the product that has the highest unit price.
declare @MaxUnitPrice as money
select @MaxUnitPrice = max(UnitPrice)
from products

select *
from Products
where UnitPrice = @MaxUnitPrice

--16. Get a list of all employees who got hired after 1/1/1993
select *
from Employees
where HireDate >= '1/1/1993'

--17. Get all employees who have title : “Ms.” And “Mrs.”
select *
from Employees
where TitleOfCourtesy = 'Ms.' or TitleOfCourtesy = 'Mrs.'

--18. Get all employees who have a Home phone number that has area code 206
select *
from Employees
where HomePhone like '(206)%'