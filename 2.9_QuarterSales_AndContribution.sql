USE coffee_shop_sales_db;



(
# 1ST QUARTER TOTAL ORDERS
SELECT 
    '1Q 2023' AS date_range,
    FORMAT(ROUND(SUM(unit_price * transaction_qty),1),'N0') AS Total_Sales,
    ROUND
    ((
    SUM(unit_price * transaction_qty) / 
		(
        SELECT 
		SUM(unit_price * transaction_qty) AS Total_Sales
		FROM coffee_shop_sales
        )
	)*100,2) AS '%_sales',
    FORMAT(ROUND(SUM(transaction_qty),1),'N0') AS total_qty_sold,
    ROUND
    ((
    SUM(transaction_qty) / 
		(
        SELECT 
		SUM(transaction_qty) AS total_qty_sold
		FROM coffee_shop_sales
        )
	)*100,2) AS '%_qty_sold',
    FORMAT(ROUND(COUNT(transaction_id),1),'N0') AS total_orders,
    ROUND
    ((
    COUNT(transaction_id) / 
		(
        SELECT 
		COUNT(transaction_id) AS total_orders
		FROM coffee_shop_sales
        )
	)*100,2) AS '%_orders'
    
    
    
    
    
    
    
FROM coffee_shop_sales
WHERE transaction_date BETWEEN '2023-01-01' AND '2023-03-31' -- WHERE transaction_date >= '2023-01-01' AND transaction_date <= '2023-03-31'
)

UNION

(
# 2ND QUARTER TOTAL ORDERS
SELECT 
    '2Q 2023' AS date_range,
    FORMAT(ROUND(SUM(unit_price * transaction_qty),1),'N0') AS Total_Sales,
    ROUND
    ((
    SUM(unit_price * transaction_qty) / 
		(
        SELECT 
		SUM(unit_price * transaction_qty) AS Total_Sales
		FROM coffee_shop_sales
        )
	)*100,2) AS '%_sales',
    FORMAT(ROUND(SUM(transaction_qty),1),'N0') AS total_qty_sold,
    ROUND
    ((
    SUM(transaction_qty) / 
		(
        SELECT 
		SUM(transaction_qty) AS total_qty_sold
		FROM coffee_shop_sales
        )
	)*100,2) AS '%_qty_sold',
    FORMAT(ROUND(COUNT(transaction_id),1),'N0') AS total_orders,
    ROUND
    ((
    COUNT(transaction_id) / 
		(
        SELECT 
		COUNT(transaction_id) AS total_orders
		FROM coffee_shop_sales
        )
	)*100,2) AS '%_orders'
FROM coffee_shop_sales
WHERE transaction_date BETWEEN '2023-04-01' AND '2023-06-30' -- WHERE transaction_date >= '2023-01-04' AND transaction_date <= '2023-06-30'
)
  

UNION

(
# ORDERS FOR THE ENTIRE YEAR
SELECT 
    '1st Half 2023' AS date_range,
    FORMAT(ROUND(SUM(unit_price * transaction_qty),1),'N0') AS Total_Sales,
    ROUND
    ((
    SUM(unit_price * transaction_qty) / 
		(
        SELECT 
		SUM(unit_price * transaction_qty) AS Total_Sales
		FROM coffee_shop_sales
        )
	)*100,2) AS '%_sales',
    FORMAT(ROUND(SUM(transaction_qty),1),'N0') AS total_qty_sold,
    ROUND
    ((
    SUM(transaction_qty) / 
		(
        SELECT 
		SUM(transaction_qty) AS total_qty_sold
		FROM coffee_shop_sales
        )
	)*100,2) AS '%_qty_sold',
    FORMAT(ROUND(COUNT(transaction_id),1),'N0') AS total_orders,
    ROUND
    ((
    COUNT(transaction_id) / 
		(
        SELECT 
		COUNT(transaction_id) AS total_orders
		FROM coffee_shop_sales
        )
	)*100,2) AS '%_orders'
FROM coffee_shop_sales
WHERE transaction_date BETWEEN '2023-01-01' AND '2023-12-31' -- WHERE transaction_date >= '2023-01-01' AND transaction_date <= '2023-12-31'
)