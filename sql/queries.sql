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
