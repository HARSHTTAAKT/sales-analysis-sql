-- 1. Total Sales
SELECT ROUND(SUM(Sales), 2) AS Total_Sales
FROM superstore_data;

-- 2. Total Profit
SELECT ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore_data;

-- 3. Top 5 Products by Sales
SELECT "Product Name", ROUND(SUM(Sales), 2) AS Total_Sales
FROM superstore_data
GROUP BY "Product Name"
ORDER BY Total_Sales DESC
LIMIT 5;

-- 4. Sales by Region
SELECT Region, ROUND(SUM(Sales), 2) AS Total_Sales
FROM superstore_data
GROUP BY Region
ORDER BY Total_Sales DESC;

-- 5. Monthly Revenue Trend
SELECT strftime('%Y-%m', "Order Date") AS Month, ROUND(SUM(Sales), 2) AS Revenue
FROM superstore_data
GROUP BY Month
ORDER BY Month;

-- 6. Top 3 Categories by Profit
SELECT Category, ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore_data
GROUP BY Category
ORDER BY Total_Profit DESC
LIMIT 3;

-- 7. Average Discount by Segment
SELECT Segment, ROUND(AVG(Discount), 3) AS Avg_Discount
FROM superstore_data
GROUP BY Segment;

-- 8. Most Frequently Ordered Products
SELECT "Product Name", COUNT(*) AS Frequency
FROM superstore_data
GROUP BY "Product Name"
ORDER BY Frequency DESC
LIMIT 5;
