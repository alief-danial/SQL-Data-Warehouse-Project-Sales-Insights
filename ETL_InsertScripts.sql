-- ================================================
-- ETL Insert Scripts: Load Data from Staging to Fact & Dimension
-- ================================================

-- Load Date Dimension
INSERT INTO Dim_Date (Date_ID, Date, Year, Quarter, Month, Day)
SELECT DISTINCT
    Date_ID,
    Date,
    Year,
    Quarter,
    Month,
    Day
FROM Staging_Date;

-- Load Product Dimension
INSERT INTO Dim_Product (Product_ID, Product_Name, Category)
SELECT DISTINCT
    Product_ID,
    Product_Name,
    Category
FROM Staging_Product;

-- Load Customer Dimension
INSERT INTO Dim_Customer (Customer_ID, Customer_Name, Income_Segment)
SELECT DISTINCT
    Customer_ID,
    Customer_Name,
    Income_Segment
FROM Staging_Customer;

-- Load Fact_Sales
INSERT INTO Fact_Sales (Sales_ID, Date_ID, Product_ID, Customer_ID, Quantity, Total_Sale)
SELECT
    Sales_ID,
    Date_ID,
    Product_ID,
    Customer_ID,
    Quantity,
    Total_Sale
FROM Staging_Sales;
