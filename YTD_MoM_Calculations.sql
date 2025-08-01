-- ================================================
-- Time Intelligence Queries: YTD & MoM
-- ================================================

-- Year-To-Date (YTD) Revenue
SELECT
    d.Year,
    SUM(f.Total_Sale) AS YTD_Revenue
FROM Fact_Sales f
JOIN Dim_Date d ON f.Date_ID = d.Date_ID
GROUP BY d.Year
ORDER BY d.Year;

-- Month-over-Month (MoM) Growth (Only if data has multiple months)
WITH MonthlyRevenue AS (
    SELECT
        d.Year,
        d.Month,
        SUM(f.Total_Sale) AS Monthly_Revenue
    FROM Fact_Sales f
    JOIN Dim_Date d ON f.Date_ID = d.Date_ID
    GROUP BY d.Year, d.Month
)
SELECT
    m1.Year,
    m1.Month,
    m1.Monthly_Revenue,
    (m1.Monthly_Revenue - m2.Monthly_Revenue) / NULLIF(m2.Monthly_Revenue, 0) * 100 AS MoM_Growth_Percentage
FROM MonthlyRevenue m1
LEFT JOIN MonthlyRevenue m2
    ON m1.Year = m2.Year AND m1.Month = m2.Month + 1
ORDER BY m1.Year, m1.Month;
