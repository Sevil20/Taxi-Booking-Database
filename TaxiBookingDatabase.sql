create database TaxiBooking
create table Booking 
(
bookingID int not null primary key ,
pickupLocation nvarchar(100) default 'no location',
dropoffLocation nvarchar(100) default 'no location',
bookingTime datetime,
costumerID int not null,
driverID int not null,
vehicleID int not null
)
create table Drivers 
(
driverID int not null primary key,
driverName varchar(40) not null,
driverPhoneNumber varchar(20),
driverEmailAdress varchar(60) not null,
licensePlateNumber varchar(10)
)
create table Vehicles 
(
vehicleID int not null primary key,
vehicleModel varchar(20) ,
vehicleYear date,
licensePlateNumber varchar(10),
vehicleCapacity int check (vehicleCapacity>=1)
)
create table Customer 
(
customerID int not null primary key,
customerName varchar(40) not null,
customerPhoneNumber varchar(20),
customerEmailAdress varchar(60) not null,
customerPaymentInformation varchar(20) default 'Cash'
)
create table Locations
(
locationID int not null primary key,
locationName varchar(40) not null,
locationPhoneNumber varchar(20),
locationEmailAdress varchar(50) not null,
locationGPScoordinates varchar(60)
)
create table Payments 
(
paymentID int not null primary key,
paymentAmount decimal not null,
paymentMethod varchar(15),
bookingID int not null ,
transactionID varchar(15)
)
create table Reviews
(
reviewID int not null primary key,
rating decimal,
comment varchar(30) default 'No comment',
customerID int not null,
driverID int not null,
reviewDate date
)
