-- Total Sales
SELECT SUM(Sales) AS Total_Sales
FROM SampleSuperstore;

-- Sales by Category
SELECT Category, SUM(Sales) AS Total_Sales
FROM SampleSuperstore
GROUP BY Category
ORDER BY Total_Sales DESC;

-- Profit by Region
SELECT Region, SUM(Profit) AS Total_Profit
FROM SampleSuperstore
GROUP BY Region
ORDER BY Total_Profit DESC;

-- Top Sub-Categories by Sales
SELECT "Sub-Category", SUM(Sales) AS Total_Sales
FROM SampleSuperstore
GROUP BY "Sub-Category"
ORDER BY Total_Sales DESC;
