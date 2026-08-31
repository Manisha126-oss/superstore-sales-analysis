-- Question 1: Which categories/sub-categories drive sales vs. profit?
SELECT 
    Category,
    "Sub-Category",
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit,
    SUM(Profit) / SUM(Sales) * 100 AS profit_margin
FROM Superstore
GROUP BY Category, "Sub-Category"
ORDER BY total_sales DESC;

-- Question 2: Does higher discount hurt profitability?
SELECT 
    Discount,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit,
    SUM(Profit) / SUM(Sales) * 100 AS profit_margin
FROM Superstore
GROUP BY Discount
ORDER BY Discount;

-- Question 3: Which regions/states are most/least profitable?
SELECT 
    Region,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit,
    SUM(Profit) / SUM(Sales) * 100 AS profit_margin
FROM Superstore
GROUP BY Region
ORDER BY total_profit DESC;

SELECT 
    State,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit,
    SUM(Profit) / SUM(Sales) * 100 AS profit_margin
FROM Superstore
GROUP BY State
ORDER BY total_profit DESC;

-- Question 4: Does customer segment differ in order value or profitability?
SELECT
    Segment,
    COUNT(DISTINCT "Order ID") AS total_orders,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit,
    SUM(Sales) / COUNT(DISTINCT "Order ID") AS avg_order_value,
    SUM(Profit) / COUNT(DISTINCT "Order ID") AS avg_profit_per_order
FROM Superstore
GROUP BY Segment
ORDER BY avg_order_value DESC;

-- Question 5: Does ship mode relate to profit?
SELECT
    "Ship Mode",
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit,
    SUM(Profit) / SUM(Sales) * 100 AS profit_margin 
FROM Superstore
GROUP BY "Ship Mode"
ORDER BY profit_margin DESC;

-- Question 6: How have sales/profit trended over time, and is there seasonality?
SELECT
    substr("Order Date", -4) AS year,
    substr("Order Date", 1, instr("Order Date", '/') - 1) AS month,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit
FROM Superstore
GROUP BY year, month
ORDER BY year, month;

SELECT
    CAST(
        substr("Order Date", 1, instr("Order Date", '/') - 1)
        AS INTEGER
    ) AS month,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit
FROM Superstore
GROUP BY month
ORDER BY month;
