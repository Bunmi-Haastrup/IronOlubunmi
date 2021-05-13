-- Write a SELECT statement that lists the customerid
-- along with their account number, type,
-- the city the customer lives in and their postalcode?

SELECT * FROM adventureworks.customeraddress;
select c.CustomerID, c.AccountNumber, c.CustomerType,
a.City, a.PostalCode
from customer c
join customeraddress ca on c.CustomerID =ca.CustomerID #Using(CustomerID
join address a on ca.AddressID=a.AddressID;

-- Write a SELECT statement that lists the 20 most recently
-- launched products, their name and colour?

 select p.ProductID, p.Color, p.Name
 from product p
 order by SellStartDate DESC
 LIMIT 20;
 
-- Write a SELECT statement that shows how many products
-- are on each shelf in 2/5/98,
-- (broken down by product category and subcategory)- all nulls?

select count(i.ProductID), i.Shelf, p.ProductSubcategoryID
from productinventory i
join product p on i.ProductID=p.ProductID
where i.ModifiedDate = '1998-05-02 00:00:00'
group by Shelf, p.ProductSubcategoryID;

-- I am trying to track down a vendor email address… his name is 
-- Stuart and he works at G&K Bicycle Corp. Can you help?
select c.FirstName, c.LastName, v.VendorID, c.EmailAddress
from contact c
join vendorcontact vc using (ContactID)
join vendor v using(VendorID)

-- What’s the total sales tax amount for sales to Germany? What’s the top region in Germany by sales tax?
select sum(TaxAmt)
from salesorderheader
where TerritoryID=‘8’;

WHERE NAME = ‘Germany Output Tax’;

-- Summarise the distinct # transactions by month
select COUNT(DISTINCT transactionhistory) AS transactionsbymonth
from adventureworks.transactionhistory;

#7.Which ( if any) of the sales people exceeded their sales quota this year and last year?

#8.Do all products in the inventory have photos in the database and a text product descriptions?

#9.What’s the average unit price of each product name on purchase orders which were not fully, but at least partially rejected?

#10.How many engineers are on the employee list? Have they taken any sickleave?

#11.How many days difference on average between the planned and actual end date of workorders in the painting stages?

-- How many days difference on average between the planned and actual end date of workorders in the painting stages?
select l.Name, AVG(DATEDIFF( w.ActualEndDate, w.ScheduledEndDate ))
from workorderrouting w
join location l using (LocationID)
where l.Name LIKE '%aint%'
group by l.Name
order by AVG(DATEDIFF( w.ActualEndDate, w.ScheduledEndDate )) DESC





