USE coffee_shop_sales_db;
(
SELECT 
    -- 1ST COLUMN: MONTH NUMBER
    MONTH(transaction_date) AS month_number,  
    
    -- 2ND COLUMN: MONTH NAME
    MONTHNAME(transaction_date) AS month_name, 
    
    -- 3RD COLUMN: TOTAL SALES
    FORMAT(ROUND(SUM(unit_price * transaction_qty)),'N0') AS total_sales, 
    
    -- 4TH COLUMN: INCREASE(+) OR DECREASE(-) IN ORDERS
    FORMAT
    ((
    ROUND(SUM(unit_price * transaction_qty))                                                  -- Current Month Total Sales.
    -                                                                                         -- Less
    ROUND(LAG(SUM(unit_price * transaction_qty), 1) OVER (ORDER BY MONTH(transaction_date)))  -- 'Prior Month Sales populated on the same row' ordered by the transaction date 
							                                      -- (If populated it will be in the same ROW as the current Month).
    ),'N0')                                                                                   -- Formatted Number
    AS 'ΔMoM',                                                                                -- Column Name.
    
    -- 5TH COLUMN: INCREASE(+) OR DECREASE(-) IN SALES
	ROUND(((
    ROUND(SUM(unit_price * transaction_qty))
    /
    ROUND(LAG(SUM(unit_price * transaction_qty), 1) OVER (ORDER BY MONTH(transaction_date))) 
    - 1 
    )*100),2) -- ROUND TO 2 DECIMAL PLACES 
    AS '%ΔMoM'

FROM 
	coffee_shop_sales
--  WHERE MONTH(transaction_date) IN (4, 5)     -- If you want results for April and May.
GROUP BY 
    month_number, 
    month_name
)
UNION
(
-- IF YOU DONT WANT YEARLY TOTAL'S THE ENTIRE CODE BELOW SHOULD BE COMMENTED OUT.
SELECT
    '1-6' AS month_number,
    '1st Half 2023' AS month_name,
    FORMAT(ROUND(SUM(unit_price * transaction_qty)),'N0') AS total_sales, 
    '' AS 'ΔMoM',
    '' AS '%ΔMoM'
FROM coffee_shop_sales
)
