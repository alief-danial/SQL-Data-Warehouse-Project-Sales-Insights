-- =============================================
-- File: CreateTables.sql
-- =============================================
CREATE DATABASE SalesDataWarehouse;
GO
USE SalesDataWarehouse;
GO

-- Dimension Tables
CREATE TABLE Dim_Date (
    Date_ID INT PRIMARY KEY,
    Date DATE,
    Year INT,
    Quarter INT,
    Month INT,
    Day INT
);

CREATE TABLE Dim_Product (
    Product_ID INT PRIMARY KEY,
    Product_Name NVARCHAR(255),
    Category NVARCHAR(100)
);

CREATE TABLE Dim_Customer (
    Customer_ID INT PRIMARY KEY,
    Customer_Name NVARCHAR(255),
    Income_Segment NVARCHAR(100)
);

-- Fact Table
CREATE TABLE Fact_Sales (
    Sales_ID INT PRIMARY KEY,
    Date_ID INT FOREIGN KEY REFERENCES Dim_Date(Date_ID),
    Product_ID INT FOREIGN KEY REFERENCES Dim_Product(Product_ID),
    Customer_ID INT FOREIGN KEY REFERENCES Dim_Customer(Customer_ID),
    Quantity INT,
    Total_Sale DECIMAL(10,2)
);

-- Staging Tables (for ETL)
CREATE TABLE Staging_Sales (
    Sales_ID INT,
    OrderDate DATE,
    Product_ID INT,
    Customer_ID INT,
    Quantity INT,
    Total_Sale DECIMAL(10,2)
);

CREATE TABLE Staging_Product (
    Product_ID INT,
    Product_Name NVARCHAR(255),
    Category NVARCHAR(100)
);

CREATE TABLE Staging_Customer (
    Customer_ID INT,
    Customer_Name NVARCHAR(255),
    Income_Segment NVARCHAR(100)
);

CREATE TABLE Staging_Date (
    Date_ID INT,
    Date DATE,
    Year INT,
    Quarter INT,
    Month INT,
    Day INT
);
