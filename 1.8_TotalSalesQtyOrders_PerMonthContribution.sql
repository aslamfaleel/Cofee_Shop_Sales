USE coffee_shop_sales_db;

(
-- CALCULATES MONTHLY TOTALS FOR SALES, QTY, AND ORDERS.
-- IF YOU DONT WANT THE YEARLY TOTAL'S, COMMENT OUT BELOW CODE.

SELECT 
	-- 1ST COLUMN: MONTH NUMBER
    MONTH(transaction_date) AS month_number,
    -- 2ND COLUMN: MONTH NAME
    MONTHNAME(transaction_date) AS month_name,
    -- 3RD COLUMN: TOTAL SALES
    FORMAT(ROUND(SUM(unit_price * transaction_qty)),'N0') AS total_sales,
	-- 4TH COLUMN: % SALES
	ROUND
    ((
    SUM(unit_price * transaction_qty) / 
		(
        SELECT 
		SUM(unit_price * transaction_qty) AS Total_Sales
		FROM coffee_shop_sales
        )
	)*100,2) AS '%_sales',
    
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
GROUP BY 
	month_number, 
    month_name
)

UNION     -- UNION OPERATOR: 'COMBINES THE RESULTS' OF TWO OR MORE SELECT STATEMENTS.

(
-- CALCULATES YEARLY TOTALS FOR SALES, QTY, AND ORDERS.
-- IF YOU DONT WANT THE YEARLY TOTAL'S, COMMENT OUT BELOW CODE.

SELECT
	'1-6' AS month_number,
    '1st Half 2023' AS month_name,
    FORMAT(ROUND(SUM(unit_price * transaction_qty)),'N0') AS total_sales,
    '100.00' AS '%_sales',
    FORMAT(ROUND(SUM(transaction_qty),1),'N0') AS total_qty_sold,
    '100.00' AS '%_qty_sold',
    FORMAT(ROUND(COUNT(transaction_id),1),'N0') AS total_orders,
    '100.00' AS '%_orders'
FROM coffee_shop_sales
)