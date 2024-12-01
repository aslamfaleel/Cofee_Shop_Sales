USE coffee_shop_sales_db;
SELECT 
	
    -- 1ST COLUMN: MONTH NUMBER
    MONTH(transaction_date) AS month_number,
    
    -- 2ND COLUMN: MONTH NAME
    MONTHNAME(transaction_date) AS month_name,
    
    -- 3RD COLUMN: TOTAL ORDERS FOR CURRENT MONTH
    FORMAT(ROUND(SUM(transaction_qty)),'N0') AS total_qty_sold,
    
    -- 4TH COLUMN: INCREASE(+) OR DECREASE(-) IN ORDERS
    FORMAT
    ((
    SUM(transaction_qty)
    - 
    LAG(SUM(transaction_qty), 1) OVER (ORDER BY MONTH(transaction_date)) 
    ),'N0') 
    AS 'ΔMoM',
    
	-- 5TH COLUMN: PERCENTAGE(%) INCREASE(+) OR DECREASE(-) IN ORDERS
    ROUND(((
    SUM(transaction_qty)
    /
    LAG(SUM(transaction_qty), 1) OVER (ORDER BY MONTH(transaction_date)) 
    - 1 
    )*100),2) -- ROUND TO 2 DECIMAL PLACES 
    AS '%ΔMoM'
FROM coffee_shop_sales
GROUP BY 
	month_number, 
    month_name
-- HAVING month_number IN (1,2)  -- IF YOU WANT ONLY JAN AND FEB AS OPPOSED TO ALL MONTHS
UNION

(
-- IF YOU DONT WANT YEARLY TOTAL'S THE ENTIRE CODE BELOW SHOULD BE COMMENTED OUT.
SELECT
	'1-6' AS month_number,
    '1st Half 2023' AS month_name,
    FORMAT(ROUND(SUM(transaction_qty)),'N0') AS total_qty_sold, 
    '' AS 'ΔMoM',
    '' AS '%ΔMoM'
FROM coffee_shop_sales
)