# A. CREATE DATABASE, NAME: coffee_shop_sales_db
CREATE coffee_shop_sales_db

# B. CLEAN THE DATA

# 1. Describe coffee shop sales
DESCRIBE coffee_shop_sales



# 2. CHANGE FORMAT OF TRANSACTION DATE AND ALTER TABLE.

# 2.1 CONVERT DATE (transaction_date) COLUMN TO PROPER DATE FORMAT
USE coffee_shop_sales_db;
UPDATE coffee_shop_sales
SET transaction_date = STR_TO_DATE(transaction_date, '%d-%m-%Y');

# 2.2 ALTER DATE (transaction_date) COLUMN TO DATE DATA TYPE
ALTER TABLE coffee_shop_sales
MODIFY COLUMN transaction_date DATE;

# 2.3 Check if data type has changed
DESCRIBE coffee_shop_sales



# 3. CHANGE FORMAT OF TRANSACTION TIME AND ALTER TABLE

# 3.1 CONVERT TIME (transaction_time)  COLUMN TO PROPER DATE FORMAT
USE coffee_shop_sales_db;
UPDATE coffee_shop_sales
SET transaction_time = STR_TO_DATE(transaction_time, '%H:%i:%s');

# 3.2 ALTER TIME (transaction_time) COLUMN TO DATE DATA TYPE
ALTER TABLE coffee_shop_sales
MODIFY COLUMN transaction_time TIME;

# 3.3 Check if data type has changed
DESCRIBE coffee_shop_sales



# 4. CHANGE TRANSACTION ID COLUMN NAME
ALTER TABLE coffee_shop_sales
CHANGE COLUMN `ï»¿transaction_id` transaction_id INT;



# 5. FINAL DESCRIBE CHECK TO SEE IF ALL CHANGES WERE MADE.
DESCRIBE coffee_shop_sales

