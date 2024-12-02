# Cofee_Shop_Sales

![image](https://github.com/user-attachments/assets/30623856-73b9-4fc9-b3e7-962e41a1b1d1)

# Table of Contents
[1.1 Project Background](#11-project-background)                                                                                        
[1.2 Data Structure & Initial Checks](#12-data-structure--initial-checks)                                                                                                                                                                       
[1.3 Executive Summary](#13-executive-summary)                                                                                                                                                                                                  
[1.4 Insights Deep Dive](#14-insights-deep-dive)

# 1.1 Project Background

In this project, I analysed a dataset to investigate trends in Sales, Orders, and Products for a coffee shop located in New York, USA over a 6 month period. 
Key insights and recommendations per below.

- **Insight 1:** There appears to be seasonality in Sales. MoM sales were rather stagnant in Jan and Feb. Sales picked up in March and thereafter continued to grow until the end of May.
  March, April and May growth in MoM sales were 30%, 20% and 32% respectively. The growth in sales resulted in higher contributions to total sales in April, May and June; 17%, 22% and 24% respectively.
  Further, sales contribution in the 2nd half was 63% vs. 37% in the 1st half of the year.

- **Recommendation 1 :** The coffee shop needs to budget/plan and allocate resources and labor based on the seasonality of it sales so as to avoid unforseen events.

- **Insight 2:** Sales by Weekday vs. Weekend hovers in the range of 70%-75% %  vs. 25%-30%.
- **Recommendation 2 :** Plan and allocate more resources and labor during weekdays to boost sales revenue.

- **Insight 3:** Coffee and Tea are the highest selling product categories, with Barista Espresso, Brewed Chai and Gourmet Brewed Coffee being the all time favorites.
- **Recommendation 3 :**
   - Continous training to be carried out to train new joinees on preparing said products.
   - Ensure adequate and user friendly documentation is available at each location on how to prepare said products.
   - Ensure adequate stocks are available at any given point in time.
                   

The SQL queries used to inspect and clean the data for this analysis can be found by clicking [here](https://github.com/aslamfaleel/Cofee_Shop_Sales/blob/main/1.0_CreateDB_and_CleanData.sql).

Targed SQL queries regarding various business questions can be found here [link].

An interactive Power BI dashboard used to report and explore sales trends can be found clicking [here](https://github.com/aslamfaleel/Cofee_Shop_Sales/blob/main/CoffeeShopSalesPowerBIDashboard.pbix).

# 1.2 Data Structure & Initial Checks

[Back to table of contents](#table-of-contents)

## 1. SQL queries used create the database, inspect and clean the data
The SQL queries used to inspect and clean the data for this analysis can be found by clicking [here](https://github.com/aslamfaleel/Coffee_Shop_Sales/blob/main/1.0_CreateDB_and_CleanData.sql).

## 2. Information in the created database
The main database consists of 1 table comprising of below columns organised based on the Data Type.

#### A.  Data Type: Integer 
1. Transaction ID: Contains a Unique Integer for each time a sale is made.
2. Transaction quantity: Quantity purchased for that given transaction ID.
3. Store ID: Unique ID number assigned for a given store.
4. Product ID: Name of the Store Location.

#### B.  Data Type: Date 
5. Transaction date: Date on which the transaction occurred.

#### C.  Data Type: Time
6. Transaction time: Time at which the transaction occurred.

#### D.  Data Type: Text
7. Store Location: Name of the Store Location.
8. Product Category: Broader category to which the product belongs to.
9. Product type: Product purchased.
10. Product detail: additional details on the product.
  
#### E.  Data Type: double
11. Unit Price: Price of the product purchased.
   
# 1.3 Executive Summary

[Back to table of contents](#table-of-contents)

### Overview of Findings

The 2nd half 2023 had more sales versus the 1st half primarily due to staggering growth in sales witnessed during March, April, and May. Further, weekdays had more sales than weekends. Furthermore, Barista Espresso, Brewed Chai and Hot Chocolate had the highest sales out of all products.

# 1.4 Insights Deep Dive

[Back to table of contents](#table-of-contents)

### 1. Sales Analysis:

* **GROWTH: Month over Month (MoM) Growth Analysis for Sales/Orders/Products.**

   Sales appear to be seasonal for the Coffee Shop where by MoM sales were 30% in March, 20% in April and 32% in May respectively.
   Orders and Products followed a similar seasonal pattern to that of sales.
   
   Below is the output of the SQL query created to calculate total sales per month, MoM change in sales, and MoM percentage change in sales.
   
   ![image](https://github.com/user-attachments/assets/ce596865-91ec-4714-b13c-a435b73d393f)
   
   You can find my SQL queries for my
   1. MoM sales analysis [here](https://github.com/aslamfaleel/Cofee_Shop_Sales/blob/main/1.4_KPI_SalesMoM_Change_PercChange.sql).
   2. MoM orders analysis [here](https://github.com/aslamfaleel/Cofee_Shop_Sales/blob/main/1.5_KPI_OrdersMoM_Change_PercChange.sql).
   3. MoM products analysis [here](https://github.com/aslamfaleel/Cofee_Shop_Sales/blob/main/1.7_KPI_QuantityMoM_Change_PercChange.sql).

* **CONTRIBUTION: Month over Month (MoM) Contribution Analysis for Sales/Orders/Products.**

   The staggering sales growth during March, April and May resulted in larger contributions to Total Sales in the following months; April 17%, May 22% and June 24%.  
   
   Below is the output of the SQL query created to calculate montly sales/orders/products and contribution.
   
   ![image](https://github.com/user-attachments/assets/2094bfb5-7ee8-4f6c-8ba8-e9267765620e)
   
   You can find my SQL query for my
   1. MoM sales/orders/products analysis [here](https://github.com/aslamfaleel/Cofee_Shop_Sales/blob/main/1.8_TotalSalesQtyOrders_PerMonthContribution.sql)

* **CONTRIBUTION: Quarter over Quarter (QoQ) Contribution Analysis for Sales/Orders/Products.**

   Second Quarter sales had a larger contribution of 63% to total sales vs. 37% contribution from the First Quarter.
   
   Below is the output of the SQL query created to calculate quarterly sales/orders/products and contribution.
   
   ![image](https://github.com/user-attachments/assets/8733c4b7-4b51-4868-b80f-92f016c900b9)
   
   You can find my SQL query for my
   1. QoQ sales/orders/products analysis [here](https://github.com/aslamfaleel/Cofee_Shop_Sales/blob/main/2.9_QuarterSales_AndContribution.sql)

* **CONTRIBUTION: Weekday vs. Weekend Contribution Analysis for Sales/Orders/Products.**

   Weekday sales had a larger contribution of 72% to Total Sales vs. 28% contribution from weekend sales.  
   
   Below is the output of the SQL query created to calculate weekday vs. weekend contribution to total sales/orders/products.

   ![image](https://github.com/user-attachments/assets/16653460-87ce-4399-8145-518d44327c60)

   You can find my SQL query for my
   1. Weekday vs. weekend sales/orders/products analysis [here](https://github.com/aslamfaleel/Cofee_Shop_Sales/blob/main/2.1_WeekendvsWeekdaySales_ForAMonth.sql)

* **CONTRIBUTION: Product Category and Product Type Contricution on Sales**

   Barista Espresso and Brewed Chai were the highest revenue generating products. For April for example, they were up 19% and 20% MoM respectively.  
   
   Below is the output of the Power BI dashboard created.

   ![image](https://github.com/user-attachments/assets/ea81a415-cad7-459e-a395-6ae2818d08a9)

   An interactive Power BI dashboard used to report and explore sales trends can be found clicking [here](https://github.com/aslamfaleel/Cofee_Shop_Sales/blob/main/CoffeeShopSalesPowerBIDashboard.pbix).

# 1.5 Recommendations:

Based on the insights and findings above, we would recommend the [stakeholder team] to consider the following: 

- **Insight 1:** There appears to be seasonality in Sales. MoM sales were rather stagnant in Jan and Feb. Sales picked up in March and thereafter continued to grow until the end of May.
  March, April and May growth in MoM sales were 30%, 20% and 32% respectively. The growth in sales resulted in higher contributions to total sales in April, May and June; 17%, 22% and 24% respectively.
  Further, sales contribution in the 2nd half was 63% vs. 37% in the 1st half of the year.

- **Recommendation 1 :** The coffee shop needs to budget/plan and allocate resources and labor based on the seasonality of it sales so as to avoid unforseen events.

- **Insight 2:** Sales by Weekday vs. Weekend hovers in the range of 70%-75% %  vs. 25%-30%.
- **Recommendation 2 :** Plan and allocate more resources and labor during weekdays to boost sales revenue.

- **Insight 3:** Coffee and Tea are the highest selling product categories, with Barista Espresso, Brewed Chai and Gourmet Brewed Coffee being the all time favorites.
- **Recommendation 3 :**
   - Continous training to be carried out to train new joinees on preparing said products.
   - Ensure adequate and user friendly documentation is available at each location on how to prepare said products.
   - Ensure adequate stocks are available at any given point in time.
  

# 1.6 Assumptions and Caveats:

Throughout the analysis, multiple assumptions were made to manage challenges with the data. These assumptions and caveats are noted below:

* Assumption 1 (ex: 2nd Half sales trend were similar to 1st half)
  
* Assumption 1 (ex: data for December 2022 was missing. Hence, we fixed the January growth as zero as a result.)
