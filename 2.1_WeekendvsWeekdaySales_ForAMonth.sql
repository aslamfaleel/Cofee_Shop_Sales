USE coffee_shop_sales_db;
(
SELECT 
    -- 1ST COLUMN: DAY TYPE
    CASE 
		WHEN DAYOFWEEK(transaction_date) IN (1,7) THEN 'Weekends' -- Sunday is day 1 and Sat is day 7
		WHEN DAYOFWEEK(transaction_date) IN (2,3,4,5,6) THEN 'Weekdays' 
        -- ELSE 'weekdays' -- instead of code in line 4, this code can be used.
	END AS day_type,
    
    -- 2ND COLUMN: TOTAL SALES
    FORMAT(ROUND(SUM(unit_price * transaction_qty)),'N0') AS total_sales,
    
    -- 3RD COLUMN: % SALES
    ROUND
    ((
    FORMAT(ROUND(SUM(unit_price * transaction_qty)),'N0') / 
		(
		SELECT 
		FORMAT(ROUND(SUM(unit_price * transaction_qty)),'N0') AS total_sales
		FROM coffee_shop_sales
		)
	*100),2) AS '%sales',
    
    -- 5TH COLUMN: TOTAL QTY SOLD
    FORMAT(ROUND(SUM(transaction_qty),1),'N0') AS total_qty_sold,
	
    -- 6TH COLUMN: % QTY SOLD
    ROUND
    ((
    SUM(transaction_qty) / 
		(
        SELECT 
		SUM(transaction_qty) AS total_qty_sold
		FROM coffee_shop_sales
        )
	)*100,2) AS '%_qty_sold',
    
    -- 7TH COLUMN: TOTAL ORDERS
    FORMAT(ROUND(COUNT(transaction_id),1),'N0') AS total_orders,
    
    -- 8TH COLUMN: % TOTAL ORDERS
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
-- WHERE MONTH(transaction_date) = 5 -- MAY MONTH
GROUP BY      
	day_type
)
UNION
(
-- IF YOU DONT WANT YEARLY TOTAL'S THE ENTIRE CODE BELOW SHOULD BE COMMENTED OUT.
SELECT
    'Total Sales' AS day_type,
    FORMAT(ROUND(SUM(unit_price * transaction_qty)),'N0') AS total_sales,
    '100.00' AS '%sales',
    FORMAT(ROUND(SUM(transaction_qty),1),'N0') AS total_qty_sold,
    '100.00' AS '%_qty_sold',
    FORMAT(ROUND(COUNT(transaction_id),1),'N0') AS total_orders,
    '100.00' AS '%_orders'
FROM coffee_shop_sales
)



-- NOTE - WHEN TO USE 'GROUP BY': 
	-- Whenever we use a dimension field/aggregate function like SUM, COUNT, AVG, MIN, AND MAX, 
	-- we have to use the GROUP BY statement.