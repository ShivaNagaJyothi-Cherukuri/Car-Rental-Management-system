-- Selecting schema
use crms;

-- Simple Queries:
-- Q1. Different Car Types available for booking? 
select Distinct(CarType) 
FROM cars 
where Availabliity = 'Y';
    
-- Aggregate queries:
-- Q2. Calculating average age of customers.
SELECT ROUND(AVG(Age),0)  as Average_Age
FROM Customer;

-- Q3. Total Number of bookings for 20th March 2023
select count(*) as 'Number of Bookings' 
from carbooking 
where FromDate like '%2023-03-20%';

-- Queries using Joins
-- Q4. Fetch all the available cars in ‘Boston’ City.
-- It is used to show all the cars available in city for the customer to make booking.
Select c.CarName, c.CarType, c.CarRegNumber 
from cars c 
inner join location l 
on c.Current_LocID = l.Loc_ID 
where c.Availabliity = 'Y' 
and l.City = 'Boston';

-- Q5. Most popular Car Type among the customers
-- It is used to know which car type inventory is popular and needs to be maintained more or less respectively.
select c.CarType, count(*) as 'Total_Bookings' from carbooking as cb 
inner join cars as c 
on cb.CarRegNumber = c.CarRegNumber 
group by c.CarType Order by Total_Bookings desc;

-- Q6. Finding car details along with pricing information. 
-- It can be used for pricing analysis with cost of specific car models.
SELECT c.CarRegNumber, c.CarName, cp.CostPerHour
FROM Cars as c
INNER JOIN CarPricing as cp ON c.CarName = cp.CarName;

-- Q7. Customers with highest spendings for overall bookings
-- We can get to know the loyal customers and promote any plans or give discounts on their next bookings.
SELECT c.FirstName, c.LastName, SUM(b.TotalCost) as TotalSpending
FROM Customer c
INNER JOIN CarBooking cb ON c.Cust_ID = cb.CustID
INNER JOIN Billing b ON cb.BookID = b.BookID
GROUP BY c.Cust_ID, c.FirstName, c.LastName
ORDER BY TotalSpending DESC;


-- Subquery / Nested Query:
-- Q8. Most popular Insurance plan
select InsuranceName, Count_Total from carinsurance as a inner join 
(select Ins_ID, count(*) as 'Count_Total' from carbooking group by Ins_ID) as b 
on a.Ins_ID = b.Ins_ID order by b.Count_Total desc;

-- Q9. Customers who has successfully booked the cars.
SELECT FirstName, LastName
FROM Customer
WHERE Cust_ID IN (
SELECT CustID FROM CarBooking WHERE BStatus = 'Booked');

-- Correlated Query:
-- Q10. Top 5 Customers with highest billing amount in single booking
SELECT C.FirstName, C.LastName, B.TotalCost
FROM Customer C
INNER JOIN CarBooking CB ON C.Cust_ID = CB.CustID
INNER JOIN Billing B ON CB.BookID = B.BookID
WHERE (
  SELECT COUNT(DISTINCT C2.Cust_ID)
  FROM Customer C2
  INNER JOIN CarBooking CB2 ON C2.Cust_ID = CB2.CustID
  INNER JOIN Billing B2 ON CB2.BookID = B2.BookID
  WHERE B2.TotalCost > B.TotalCost
) < 5
ORDER BY B.TotalCost DESC;

-- Q11. Identifying customers who have made bookings with higher than average billing amounts.
-- It can be useful for identifying high-value customers and analyzing revenue patterns.
SELECT C.FirstName, C.LastName, CB.BookID
FROM Customer C
INNER JOIN CarBooking CB ON C.Cust_ID = CB.CustID
WHERE EXISTS (
  SELECT 1
  FROM Billing B
  WHERE B.BookID = CB.BookID
    AND B.TotalCost > (
      SELECT AVG(TotalCost)
      FROM Billing
    )
);

-- Using >=ALL:
-- Q12. cars that have more or equal number of seats compared to all other cars of type 'Sedan'. 
-- This information can be used for capacity planning, and car selection based on seating requirements
SELECT distinct CarType, NoOfSeats
FROM Cars
WHERE NoOfSeats >= ALL (SELECT NoOfSeats FROM Cars WHERE CarType = 'Sedan');

-- UNION:
-- Q13. cars that run on either gasoline or electric fuel. 
-- This information can be used for fuel type analysis, environmental impact assessment, and car selection based on fuel preferences
SELECT CarName, CarType, FuelType FROM Cars WHERE FuelType = 'Gasoline'
UNION
SELECT CarName, CarType, FuelType FROM Cars WHERE FuelType = 'Electric';

-- Subqueries in Select and From
-- Q14. Total Booking for each car.
-- This information can be used for analyzing car booking trends, identifying popular car models.
SELECT CarRegNumber, Cartype, (SELECT COUNT(*) FROM CarBooking WHERE CarBooking.CarRegNumber = Cars.CarRegNumber) AS Total_Bookings
FROM Cars 
ORDER BY Total_Bookings DESC;




