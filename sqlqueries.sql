--data base creation

IF Db_id('Oliststore') IS NOT NULL
  DROP DATABASE Oliststore;

CREATE DATABASE Oliststore;
go 


use Oliststore
go

-- Dimension Table: Dim_Customer
CREATE TABLE Dim_Customer (
    CustomerKey INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    Customer_ID VARCHAR(50),
    Customer_Unique_ID VARCHAR(50),
    ZipCodePrefix VARCHAR(10),
    State VARCHAR(50),
    City VARCHAR(50),
    start_date  DATETIME NOT NULL DEFAULT (Getdate()),
    end_date    DATETIME NULL,
);


-- Dimension Table: Dim_Product
CREATE TABLE Dim_Product(
    ProductKey INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    Product_ID VARCHAR(50),
    CategoryName VARCHAR(50),
    Namelength tinyint,
    DescriptionLength smallint,
    PhotosQty tinyint,
    Weight_g smallint,
    Length_cm tinyint,
    Height_cm tinyint,
    Width_cm tinyint,
);


-- Dimension Table: Dim_Seller
CREATE TABLE Dim_Seller (
    SellerKey INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    Seller_ID VARCHAR(50),
    ZipCodePrefix VARCHAR(10),
    State VARCHAR(50),
    City VARCHAR(50),
	start_date  DATETIME NOT NULL DEFAULT (Getdate()),
    end_date    DATETIME NULL,
);

-- Dimension Table: Dim_Payment

CREATE TABLE Dim_Payment (
    PaymentKey INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    PaymentType VARCHAR(50),
    PaymentValue DECIMAL(18, 2),
    PaymentInstallments INT,
    
);


-- Fact Table: Fact_Orders
CREATE TABLE Fact_Order (
    DateKey INT NOT NULL, -- Foreign key reference to Dim_Date
    ProductKey INT NOT NULL, -- Foreign key reference to Dim_Product
    CustomerKey INT NOT NULL, -- Foreign key reference to Dim_Customer
    SellerKey INT NOT NULL, -- Foreign key reference to Dim_Seller
    PaymentKey INT NOT NULL, -- Foreign key reference to Dim_Payment
    OrderItemID INT Not null ,
    ReviewScore INT,
    FreightValue DECIMAL(18, 2),
    Price DECIMAL(18, 2),
    TotalAmount DECIMAL(18, 2),
    OrderStatus VARCHAR(50),
    OrderDate DATE,
    OrderApprovedAt DATE,
    OrderDeliveredCarrier DATE,
    OrderDeliveredCustomer DATE,
    OrderEstimatedDelivery DATE,

);

-- Add CONSTRAINTs to fact_orders_table

ALTER TABLE Fact_Order
ADD CONSTRAINT FK_Fact_Orders_Dim_Customer
FOREIGN KEY (CustomerKey) REFERENCES Dim_Customer(CustomerKey);


alter table Dim_Customer
Add customer_names varchar(50) null

ALTER TABLE Fact_Order
ADD CONSTRAINT FK_Fact_Orders_ProductKey
FOREIGN KEY (ProductKey) REFERENCES Dim_Product(ProductKey);

ALTER TABLE Fact_Order
ADD CONSTRAINT FK_Fact_Orders_Dim_Seller
FOREIGN KEY (SellerKey) REFERENCES Dim_Seller(SellerKey);

ALTER TABLE Fact_Order
ADD CONSTRAINT FK_Fact_Orders_Dim_Date
FOREIGN KEY (DateKey) REFERENCES Dim_Date(DateKey);

ALTER TABLE Fact_Order
ADD CONSTRAINT FK_Fact_Orders_Dim_Payment
FOREIGN KEY (Dim_Payment) REFERENCES Dim_Payment(PaymentKey);

-- Create the Dim_Date table
CREATE TABLE Dim_Date (
    DateKey INT NOT NULL PRIMARY KEY,
    FullDate DATE,
    Year INT,
    DayNumberOfWeek INT,
    DayNameOfMonth VARCHAR(20),
    EnglishDayNameOfWeek VARCHAR(20),
    WeekNumberOfYear INT,
    WeekNumberOfMonth INT,
    MonthName VARCHAR(20),
    MonthNumber INT
);


-- Insert values in date dim

DECLARE @StartDate DATE = '2016-01-01';
DECLARE @EndDate DATE = '2020-01-01';

-- Create a temporary table to hold the date values

CREATE TABLE #TempDates (
    DateValue DATE
);

-- Generate a list of dates and insert them into the temporary table
WHILE @StartDate < @EndDate
BEGIN
    INSERT INTO #TempDates (DateValue)
    VALUES (@StartDate);

    SET @StartDate = DATEADD(DAY, 1, @StartDate);
END

-- Insert data from the temporary table into Dim_Date
INSERT INTO Dim_Date (DateKey, FullDate, Year, DayNumberOfWeek, DayNameOfMonth, EnglishDayNameOfWeek, WeekNumberOfYear, WeekNumberOfMonth, MonthName, MonthNumber)
SELECT
    CAST(REPLACE(CONVERT(VARCHAR, DateValue, 112), '-', '') AS INT) AS DateKey,
    DateValue AS FullDate,
    YEAR(DateValue) AS Year,
    DATEPART(WEEKDAY, DateValue) AS DayNumberOfWeek,
    DATENAME(MONTH, DateValue) AS DayNameOfMonth,
    DATENAME(WEEKDAY, DateValue) AS EnglishDayNameOfWeek,
    DATEPART(WEEK, DateValue) AS WeekNumberOfYear,
    DATEPART(WEEK, DateValue) - DATEPART(WEEK, DATEADD(MONTH, DATEDIFF(MONTH, 0, DateValue), 0)) + 1 AS WeekNumberOfMonth,
    DATENAME(MONTH, DateValue) AS MonthName,
    MONTH(DateValue) AS MonthNumber
FROM #TempDates;

-- Drop the temporary table
DROP TABLE #TempDates;


-- Meta_control_table_creation

IF EXISTS (SELECT
		*
	FROM sys.tables
	WHERE type = 'u'
	AND name = 'meta_control_table')
	DROP TABLE meta_control_table
	;

CREATE TABLE meta_control_table (
	id int IDENTITY (1, 1),
	source_table nvarchar(50) NOT NULL,
	last_load_date datetime
);


INSERT INTO meta_control_table (source_table, last_load_date)
	VALUES ('order Details', '1900-01-01')
;

truncate table meta_control_table

-- check duplications

DELETE FROM [dbo].[Dim_Customer]
WHERE ([Customer_ID]) IN (
    SELECT [Customer_ID]
    FROM [dbo].[Dim_Customer]
    GROUP BY [Customer_ID]
    HAVING COUNT(*) > 1
);

DELETE FROM [dbo].[Dim_Seller]
WHERE ([Seller_ID]) IN (
    SELECT [Seller_ID]
    FROM [dbo].[Dim_Seller]
    GROUP BY [Seller_ID]
    HAVING COUNT(*) > 1
);


DELETE FROM [dbo].[Dim_Payment]
WHERE ([order_id]) IN (
    SELECT [order_id]
    FROM [dbo].[Dim_Payment]
    GROUP BY [order_id]
    HAVING COUNT(*) > 1
);


select * from [dbo].[Fact_Order]
order by OrderDate

select * from Dim_Date
order by year

