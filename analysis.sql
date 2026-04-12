-- =====================================
-- SALES ANALYSIS PROJECT (SQL)
-- =====================================

-- 1. Total Sales
SELECT SUM(Sales) AS Total_Sales
FROM SampleSuperstore;

-- 2. Sales by Category
SELECT Category, SUM(Sales) AS Total_Sales
FROM SampleSuperstore
GROUP BY Category
ORDER BY Total_Sales DESC;

-- 3. Profit by Region
SELECT Region, SUM(Profit) AS Total_Profit
FROM SampleSuperstore
GROUP BY Region
ORDER BY Total_Profit DESC;

-- 4. Top 5 Sub-Categories by Sales
SELECT "Sub-Category", SUM(Sales) AS Total_Sales
FROM SampleSuperstore
GROUP BY "Sub-Category"
ORDER BY Total_Sales DESC
LIMIT 5;

-- 5. Loss Making Products
SELECT "Product Name", SUM(Profit) AS Total_Profit
FROM SampleSuperstore
GROUP BY "Product Name"
HAVING SUM(Profit) < 0
ORDER BY Total_Profit ASC;
