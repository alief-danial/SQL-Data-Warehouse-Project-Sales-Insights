-- ================================================
-- Analytical SQL Views
-- ================================================

-- Monthly Sales Trend
CREATE VIEW vw_MonthlySalesTrend AS
SELECT
    d.Year,
    d.Month,
    SUM(f.Total_Sale) AS Monthly_Revenue,
    COUNT(f.Sales_ID) AS Number_of_Sales
FROM Fact_Sales f
JOIN Dim_Date d ON f.Date_ID = d.Date_ID
GROUP BY d.Year, d.Month;

-- Sales Breakdown by Category
CREATE VIEW vw_CategorySalesBreakdown AS
SELECT
    p.Category,
    SUM(f.Total_Sale) AS Category_Revenue
FROM Fact_Sales f
JOIN Dim_Product p ON f.Product_ID = p.Product_ID
GROUP BY p.Category;

-- Customer Income Segments Sales
CREATE VIEW vw_CustomerIncomeSegments AS
SELECT
    c.Income_Segment,
    SUM(f.Total_Sale) AS Segment_Revenue
FROM Fact_Sales f
JOIN Dim_Customer c ON f.Customer_ID = c.Customer_ID
GROUP BY c.Income_Segment;
