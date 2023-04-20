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
bookingID int not null,
paymentID int not null,
PRIMARY KEY(bookingID , paymentID),
FOREIGN KEY(bookingID) REFERENCES Booking(bookingID) ON DELETE CASCADE,
rating decimal,
comment varchar(30) default 'No comment',
reviewDate date
)
create table Reviews 
(
customerID int not null,
driverID int not null,
PRIMARY KEY(customerID, driverID),
FOREIGN KEY(customerID) REFERENCES Customers(customerID) ON DELETE CASCADE,
FOREIGN KEY(driverID) REFERENCES Drivers(driverID) ON DELETE CASCADE,
rating decimal,
comment varchar(30) default 'No comment',
reviewDate date
)
