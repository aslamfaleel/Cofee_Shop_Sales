USE coffee_shop_sales_db;
SELECT 
	-- 1ST COLUMN: MONTH NUMBER
    MONTH(transaction_date) AS month_number,  
    
    -- 2ND COLUMN: MONTH NAME
    MONTHNAME(transaction_date) AS month_name, 
    
    -- 3RD COLUMN: TOTAL ORDERS
    FORMAT(COUNT(DISTINCT Transaction_id),'N0') AS total_orders, 
    
    -- 4TH COLUMN: INCREASE(+) OR DECREASE(-) IN ORDERS
    FORMAT
    ((
    COUNT(DISTINCT Transaction_id)
    - 
    LAG(COUNT(DISTINCT Transaction_id), 1) OVER (ORDER BY MONTH(transaction_date)) 
     ),'N0')  
    AS 'ΔMoM',
    
    -- 5TH COLUMN: PERCENTAGE(%) INCREASE(+) OR DECREASE(-) IN ORDERS
    ROUND(((
    COUNT(DISTINCT(Transaction_id))
    /
    LAG(COUNT(DISTINCT(Transaction_id)), 1) OVER (ORDER BY MONTH(transaction_date)) 
    - 1 
    )*100),2) -- ROUND TO 2 DECIMAL PLACES 
    AS '%ΔMoM'
    
FROM coffee_shop_sales
--  WHERE MONTH(transaction_date) IN (4, 5)     -- If you want results for April and May.
GROUP BY 
    month_number, 
    month_name
ORDER BY 
	month_number, 
    month_name
-- HAVING month_number IN (1,2)  -- IF YOU WANT ONLY JAN AND FEB AS OPPOSED TO ALL MONTHS
	
