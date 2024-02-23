ALTER TABLE crms.cars
ADD CONSTRAINT FK_CarName
FOREIGN KEY (CarName)
REFERENCES carpricing(CarName);

USE crms;
SELECT * FROM carinsurance;
SELECT * from discount;
DELETE FROM discount where Dis_Code in ('BDAY5','DISC5');

SELECT * from location;

INSERT INTO `crms`.`drivinglicense` (`DL_Number`, `ValidTill`, `VerficationStatus`) VALUES 
('A1234567', '2025-02-28', 'V'),
('B2345678', '2024-11-30', 'I'),
('C3456789', '2023-12-15', 'V'),
('D4567890', '2024-09-30', 'I'),
('E5678901', '2025-08-31', 'V'),
('F6789012', '2023-10-31', 'V'),
('G7890123', '2024-03-15', 'V'),
('H8901234', '2022-12-31', 'I'),
('I9012345', '2023-07-31', 'V'),
('J0123456', '2025-01-31', 'V'),
('K1234567', '2022-09-30', 'I'),
('L2345678', '2023-06-30', 'V'),
('M3456789', '2024-02-28', 'V'),
('N4567890', '2022-11-30', 'I'),
('O5678901', '2023-08-31', 'V'),
('P6789012', '2025-05-31', 'V'),
('Q7890123', '2022-10-15', 'I'),
('R8901234', '2023-09-30', 'V'),
('S9012345', '2024-12-31', 'V'),
('T0123456', '2023-05-31', 'V'),
('U1234567', '2024-01-31', 'V'),
('V2345678', '2025-06-30', 'V'),
('W3456789', '2022-12-31', 'I'),
('X4567890', '2023-07-31', 'V'),
('Y5678901', '2024-02-28', 'V'),
('Z6789012', '2022-11-30', 'I'),
('A8901234', '2023-08-31', 'V'),
('B9012345', '2025-03-31', 'V'),
('C0123456', '2022-10-15', 'I'),
('D1234567', '2023-09-30', 'V'),
('E2345678', '2024-06-30', 'V'),
('F3456789', '2023-01-31', 'V');

Select * from drivinglicense;

INSERT INTO `crms`.`membershipplans` (`PlanID`, `PlanDetails`, `PlanDuration`, `PlanPrice`) VALUES 
('PLAN1', 'Basic plan with unlimited mileage and minimum insurance coverage', '1 week', 149.99),
('PLAN2', 'Standard plan with unlimited mileage and standard insurance coverage', '2 weeks', 299.99),
('PLAN3', 'Premium plan with unlimited mileage and full insurance coverage', '1 month', 499.99),
('PLAN4', 'Family plan with 2 additional drivers, unlimited mileage and full insurance coverage', '1 week', 299.99),
('PLAN5', 'Business plan with up to 3 additional drivers, unlimited mileage and full insurance coverage', '2 weeks', 599.99),
('PLAN6', 'Luxury plan with high-end car and full insurance coverage', '1 week', 999.99),
('PLAN7', 'Economy plan with limited mileage and minimum insurance coverage', '1 week', 99.99),
('PLAN8', 'Student plan with limited mileage and minimum insurance coverage', '1 month', 199.99),
('PLAN9', 'Senior plan with unlimited mileage and standard insurance coverage', '1 week', 199.99),
('PLA10', 'Long-term plan with unlimited mileage and full insurance coverage', '3 months', 999.99),
('PLA11', 'Short-term plan with limited mileage and minimum insurance coverage', '3 days', 49.99),
('PLA12', 'Weekend plan with unlimited mileage and standard insurance coverage', '3 days', 129.99),
('PLA13', 'One-way plan for drop-off at a different location', '1 week', 199.99),
('PLA14', 'Road trip plan with unlimited mileage and camping equipment', '2 weeks', 599.99),
('PLA15', 'SUV plan with unlimited mileage and full insurance coverage', '1 week', 399.99),
('PLA16', 'Truck plan with unlimited mileage and standard insurance coverage', '1 week', 299.99),
('PLA17', 'Sports car plan with unlimited mileage and full insurance coverage', '1 week', 899.99),
('PLA18', 'Green plan with eco-friendly car and limited mileage', '1 week', 149.99),
('PLA19', 'Airport plan with pick-up and drop-off at the airport', '2 weeks', 499.99),
('PLA20', 'VIP plan with personal concierge and luxury car', '1 week', 1999.99);

select * from membershipplans;

INSERT INTO `crms`.`membership` (`MembershipID`, `PlanID`, `Membership_ValidTill`, `Membership_Discount`) VALUES 
('M01', 'PLAN1', '2024-03-31', 0.00),
('M02', 'PLAN3', '2023-12-31', 0.10),
('M03', 'PLAN5', '2024-06-30', 0.15),
('M04', 'PLA20', '2024-05-31', NULL),
('M05', 'PLAN4', '2023-11-30', NULL),
('M06', 'PLA16', '2023-10-31', NULL),
('M07', 'PLA11', '2023-09-30', NULL),
('M08', 'PLA13', '2024-02-28', NULL),
('M09', 'PLAN5', '2023-08-31', 0.20),
('M10', 'PLAN2', '2024-04-30', NULL),
('M11', 'PLA14', '2024-01-31', NULL),
('M12', 'PLAN6', '2023-11-30', NULL),
('M13', 'PLA20', '2024-07-31', NULL),
('M14', 'PLA13', '2023-10-31', NULL),
('M15', 'PLA15', '2024-01-31', 0.05),
('M16', 'PLA17', '2023-12-31', 0.20),
('M17', 'PLA12', '2024-06-30', NULL),
('M18', 'PLAN6', '2023-08-31', NULL),
('M19', 'PLAN1', '2023-11-30', 0.10),
('M20', 'PLAN9', '2023-08-31', NULL),
('M21', 'PLAN5', '2024-05-31', NULL),
('M22', 'PLAN4', '2024-02-29', NULL),
('M23', 'PLAN7', '2024-03-31', NULL),
('M24', 'PLAN2', '2023-12-31', NULL),
('M25', 'PLAN1', '2024-04-30', NULL),
('M26', 'PLA18', '2023-11-30', 0.15),
('M27', 'PLA20', '2024-02-28', NULL),
('M28', 'PLAN5', '2024-06-30', 0.10),
('M29', 'PLA19', '2023-12-31', NULL),
('M30', 'PLAN8', '2024-03-31', 0.05);

sELECT MembershipID from membership;

Select * from customer;

select * from drivinglicense;

INSERT INTO `crms`.`customer` (`Cust_ID`, `FirstName`, `LastName`, `DOB`, `Age`, `PhoneNumber`, `Email_ID`, `MembershipID`, `DL_Number`)
VALUES
(1, 'John', 'Doe', '1985-01-10', 36, '5551234567', 'johndoe@email.com', 'M07', 'A1234567'),
(2, 'Jane', 'Smith', '1990-02-15', 31, '5552345678', 'janesmith@email.com', 'M17', 'A8901234'),
(3, 'Robert', 'Johnson', '1978-03-20', 43, '5553456789', 'robertjohnson@email.com', 'M08', 'B2345678'),
(4, 'Sarah', 'Williams', '1989-04-25', 32, '5554567890', 'sarahwilliams@email.com', 'M14', 'B9012345'),
(5, 'Michael', 'Brown', '1995-05-30', 26, '5555678901', 'michaelbrown@email.com', 'M11', 'C0123456'),
(6, 'Michelle', 'Davis', '1982-06-05', 39, '5556789012', 'michelledavis@email.com', 'M15', 'C3456789'),
(7, 'Christopher', 'Wilson', '1973-07-10', 48, '5557890123', 'christopherwilson@email.com', 'M06', 'D1234567'),
(8, 'Stephanie', 'Miller', '1988-08-15', 33, '5558901234', 'stephaniemiller@email.com', 'M16', 'D4567890'),
(9, 'David', 'Moore', '1997-09-20', 24, '5559012345', 'davidmoore@email.com', 'M26', 'E2345678'),
(10, 'Amanda', 'Taylor', '1980-10-25', 41, '5550123456', 'amandataylor@email.com', 'M29', 'E5678901'),
(11, 'Daniel', 'Anderson', '1993-11-30', 28, '5551234567', 'danielanderson@email.com', 'M04', 'F3456789'),
(12, 'Ashley', 'Thomas', '1984-12-05', 37, '5552345678', 'ashleythomas@email.com', 'M13', 'F6789012'),
(13, 'Matthew', 'Jackson', '1976-01-10', 47, '5553456789', 'matthewjackson@email.com', 'M27', 'G7890123'),
(14, 'Emily', 'White', '1991-02-15', 30, '5554567890', 'emilywhite@email.com', 'M01', 'H8901234'),
(16, 'William', 'Harris', '1996-03-20', 27, '5555678901', 'williamharris@email.com', 'M19', 'I9012345');

select * from billing;
select * from carbooking;
select * from carinsurance;
select * from carpricing;
select * from cars;
select * from customer;
select * from discount;
select * from drivinglicense;
select * from location;
select * from membership;
select * from membershipplans;

ALTER TABLE cars
DROP CONSTRAINT `FK_CarName`;


INSERT INTO `crms`.`cars` (`CarRegNumber`, `ModelID`, `CarName`, `CarType`, `TransType`, `YearOfManufacturing`, `NoOfSeats`, `FuelType`, `Availabliity`, `Current_LocID`)
VALUES
('ABC123', 'M01', 'Toyota Camry', 'Sedan', 'Automatic', '2019', 5, 'Gasoline', 'Y', 1),
('DEF456', 'M02', 'Honda Civic', 'Sedan', 'Automatic', '2020', 5, 'Gasoline', 'Y', 2),
('GHI789', 'M03', 'Nissan Altima', 'Sedan', 'Automatic', '2021', 5, 'Gasoline', 'Y', 3),
('JKL012', 'M04', 'Chevrolet Malibu', 'Sedan', 'Automatic', '2018', 5, 'Gasoline', 'N', 4),
('MNO345', 'M05', 'Kia Optima', 'Sedan', 'Automatic', '2022', 5, 'Gasoline', 'Y', 5),
('PQR678', 'M06', 'Toyota Corolla', 'Sedan', 'Automatic', '2019', 5, 'Gasoline', 'N', 6),
('STU901', 'M07', 'Honda Accord', 'Sedan', 'Automatic', '2020', 5, 'Gasoline', 'Y', 7),
('VWX234', 'M08', 'Nissan Maxima', 'Sedan', 'Automatic', '2021', 5, 'Gasoline', 'Y', 8),
('YZA567', 'M09', 'Chevrolet Impala', 'Sedan', 'Automatic', '2018', 5, 'Gasoline', 'N', 9),
('BCD890', 'M10', 'Toyota Avalon', 'Sedan', 'Automatic', '2019', 5, 'Gasoline', 'Y', 10),
('EFG123', 'M11', 'Honda Fit', 'Hatchback', 'Automatic', '2020', 5, 'Gasoline', 'Y', 11),
('HIJ456', 'M12', 'Nissan Versa', 'Hatchback', 'Automatic', '2021', 5, 'Gasoline', 'Y', 12),
('KLM789', 'M13', 'Chevrolet Sonic', 'Hatchback', 'Automatic', '2018', 5, 'Gasoline', 'N', 13),
('NOP012', 'M14', 'Toyota Yaris', 'Hatchback', 'Automatic', '2019', 5, 'Gasoline', 'Y', 14),
('PQR345', 'M15', 'Honda Insight', 'Hatchback', 'Automatic', '2020', 5, 'Hybrid', 'Y', 15),
('STU678', 'M16', 'Nissan Leaf', 'Hatchback', 'Automatic', '2021', 5, 'Electric', 'N', 16),
('VWX901', 'M17', 'Chevrolet Bolt', 'Hatchback', 'Automatic', '2018', 7, 'Hybrid', 'Y', 22);


INSERT INTO `crms`.`carpricing` (`CarName`, `CarRegNumber`, `NoOfLuggage`, `LateFee`, `CostPerHour`, `CostPerDay`) VALUES
('Toyota Camry', 'ABC123', 2, 25.00, 20.00, 120.00),
('Honda Civic', 'BCD890', 3, 30.00, 22.50, 135.00),
('Nissan Altima', 'DEF456', 2, 25.00, 20.00, 120.00),
('Ford Mustang', 'EFG123', 1, 35.00, 25.00, 150.00),
('Toyota Corolla', 'GHI789', 2, 25.00, 20.00, 120.00),
('Hyundai Elantra', 'HIJ456', 2, 25.00, 20.00, 120.00),
('Chevrolet Malibu', 'JKL012', 3, 30.00, 22.50, 135.00),
('Toyota RAV4', 'KLM789', 4, 35.00, 25.00, 150.00),
('Ford Escape', 'MNO345', 3, 30.00, 22.50, 135.00),
('Nissan Rogue', 'NOP012', 4, 35.00, 25.00, 150.00),
('Honda CR-V', 'PQR345', 4, 35.00, 25.00, 150.00),
('Toyota Highlander', 'PQR678', 5, 40.00, 30.00, 180.00),
('Chevrolet Traverse', 'STU678', 5, 40.00, 30.00, 180.00),
('Ford Explorer', 'STU901', 6, 45.00, 35.00, 210.00),
('Jeep Grand Cherokee', 'VWX234', 5, 40.00, 30.00, 180.00),
('Toyota 4Runner', 'VWX901', 6, 45.00, 35.00, 210.00),
('Nissan Armada', 'YZA567', 7, 50.00, 40.00, 240.00),
('Chevrolet Tahoe', 'ABC123', 6, 45.00, 35.00, 210.00),
('Ford Expedition', 'BCD890', 7, 50.00, 40.00, 240.00),
('GMC Yukon', 'DEF456', 7, 50.00, 40.00, 240.00);


INSERT INTO crms.carbooking
(BookID, BookType, FromDate, ToDate, BStatus, ActualReturn_Date, EstPrice, PickUpLoc_ID, DropOffLoc_ID, CustID, CarRegNumber, Dis_Code, Ins_ID)
VALUES
('B0001', 'Hourly', '2023-03-20 10:00:00', '2023-03-20 13:00:00', 'Booked', NULL, 60.00, 1, 2, 1, 'ABC123', 'BDAY5', 1),
('B0002', 'Hourly', '2023-03-21 11:00:00', '2023-03-21 14:00:00', 'Booked', NULL, 55.00, 3, 4, 2, 'BCD890', 'BDLE1', 2),
('B0003', 'Daily', '2023-03-22 08:00:00', '2023-03-24 08:00:00', 'Booked', NULL, 350.00, 5, 6, 3, 'DEF456', 'BGDL3', 3),
('B0004', 'Hourly', '2023-03-23 09:00:00', '2023-03-23 11:00:00', 'Booked', NULL, 40.00, 7, 8, 4, 'EFG123', 'CLREN', 4),
('B0005', 'Daily', '2023-03-24 12:00:00', '2023-03-27 12:00:00', 'Booked', NULL, 600.00, 9, 10, 5, 'GHI789', 'DISC5', 5),
('B0006', 'Hourly', '2023-03-25 14:00:00', '2023-03-25 16:00:00', 'Booked', NULL, 50.00, 11, 12, 6, 'HIJ456', 'FALL2', 6),
('B0007', 'Daily', '2023-03-26 09:00:00', '2023-03-28 09:00:00', 'Booked', NULL, 360.00, 13, 14, 7, 'JKL012', 'HOLI5', 7),
('B0008', 'Hourly', '2023-03-27 10:00:00', '2023-03-27 12:00:00', 'Booked', NULL, 45.00, 15, 16, 8, 'KLM789', 'LONG1', 8),
('B0009', 'Daily', '2023-03-28 13:00:00', '2023-03-31 13:00:00', 'Booked', NULL, 720.00, 17, 18, 9, 'MNO345', 'LYAL1', 9),
('B0010', 'Hourly', '2023-03-29 15:00:00', '2023-03-29 18:00:00', 'Booked', NULL, 75.00, 19, 20, 10, 'NOP012', 'MEG15', 10),
('B0011', 'Daily', '2023-03-20 15:00:00', '2023-03-21 18:00:00', 'Booked', NULL, 275.00, 19, 20, 10, 'KLM789', 'BDAY5', 10);


INSERT INTO `crms`.`billing` (`BillingID`, `BookID`, `CarAmt`, `DisAmt`, `LateFeeAmt`, `TaxAmt`, `Insu_Cost`, `TotalCost`, `BillStatus`) 
VALUES 
('B001', 'B0001', 120.00, 0.00, 0.00, 24.00, 10.00, 154.00, 'PAID'),
('B002', 'B0002', 200.00, 10.00, 0.00, 40.00, 20.00, 270.00, 'UNPAID'),
('B003', 'B0003', 100.00, 0.00, 50.00, 20.00, 10.00, 180.00, 'UNPAID'),
('B004', 'B0004', 150.00, 0.00, 30.00, 30.00, 15.00, 225.00, 'PAID'),
('B005', 'B0005', 180.00, 0.00, 0.00, 36.00, 12.00, 228.00, 'PAID'),
('B006', 'B0006', 250.00, 20.00, 0.00, 50.00, 25.00, 345.00, 'UNPAID'),
('B007', 'B0007', 90.00, 0.00, 70.00, 18.00, 5.00, 183.00, 'UNPAID'),
('B008', 'B0008', 200.00, 0.00, 0.00, 40.00, 30.00, 270.00, 'PAID'),
('B009', 'B0009', 120.00, 0.00, 0.00, 24.00, 15.00, 159.00, 'PAID'),
('B010', 'B0010', 300.00, 50.00, 0.00, 60.00, 35.00, 445.00, 'UNPAID'),
('B011', 'B0011', 180.00, 0.00, 20.00, 36.00, 10.00, 246.00, 'PAID');


Select c.CarName, c.CarRegNumber 
from cars c 
inner join location l 
on c.Current_LocID = l.Loc_ID 
where c.Availabliity = 'Y' 
and l.City = 'Boston';

select * from billing;
select * from carbooking;
select * from carinsurance;
select * from carpricing;
select * from cars;
select * from customer;
select * from discount;
select * from drivinglicense;
select * from location;
select * from membership;
select * from membershipplans;


select InsuranceName from carinsurance as a inner join 
(select Ins_ID, count(*) as 'Count_Total' from carbooking group by Ins_ID) as b 
on a.Ins_ID = b.Ins_ID order by b.Count_Total desc limit 1;

select count(*) as 'Number of Bookings' 
from carbooking 
where FromDate like '%2023-03-20%';

select c.CarType, count(*) as 'Total_Bookings' from carbooking as cb 
inner join cars as c 
on cb.CarRegNumber = c.CarRegNumber 
group by c.CarType Order by Total_Bookings limit 1;

select CarType from cars as c inner join
(select CarRegNumber, count(*) as 'Count_Total' from carbooking group by CarRegNumber) as cb on c.CarRegNumber = cb.CarRegNumber
order by Count_Total desc limit 1;

select Distinct(CarType) 
from cars 
where Availabliity = 'Y';

SELECT c.FirstName, c.LastName, SUM(b.TotalCost) as TotalSpending
FROM Customer c
INNER JOIN CarBooking cb ON c.Cust_ID = cb.CustID
INNER JOIN Billing b ON cb.BookID = b.BookID
GROUP BY c.Cust_ID, c.FirstName, c.LastName
ORDER BY TotalSpending DESC
limit 5;

SELECT c.FirstName, c.LastName, SUM(b.TotalCost) as TotalSpending
FROM Customer c
INNER JOIN CarBooking cb ON c.Cust_ID = cb.CustID
INNER JOIN Billing b ON cb.BookID = b.BookID
GROUP BY c.Cust_ID, c.FirstName, c.LastName
HAVING SUM(b.TotalCost) >= (
    SELECT DISTINCT SUM(b2.TotalCost)
    FROM Billing b2
    INNER JOIN CarBooking cb2 ON b2.BookID = cb2.BookID
    WHERE cb2.CustID = c.Cust_ID
    GROUP BY cb2.CustID
    ORDER BY SUM(b2.TotalCost) DESC
    LIMIT 4,1
)
ORDER BY TotalSpending DESC;


