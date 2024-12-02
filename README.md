# Cofee_Shop_Sales

![image](https://github.com/user-attachments/assets/30623856-73b9-4fc9-b3e7-962e41a1b1d1)

# Table of Contents
[1.1 Project Background](#11-project-background)                                                                                        
[1.2 Data Structure & Initial Checks](#12-data-structure--initial-checks)


# 1.1 Project Background

In this project, I analysed a dataset to investigate trends in Sales, Orders, and Products for a coffee shop located in New York, USA over a 6 month period. 
Key insights and recommendations per below.

- **Insight 1:** There appears to be seasonality in Sales. MoM sales were rather stagnant in Jan and Feb. Sales picked up in March and thereafter continued to grow until the end of May.
  March, April and May growth in MoM sales were 30%, 20% and 32% respectively. The growth in sales resulted in higher contributions to total sales in April, May and June; 17%, 22% and 24% respectively. 

- **Recommendation 1 :** The coffee shop needs to budget/plan and allocate resources and labor based on the seasonality of it sales so as to avoid unforseen events.

- **Insight 2:** Sales by Weekday vs. Weekend hovers in the range of 70%-75% %  vs. 25%-30%.
- **Recommendation 2 :** Plan and allocate more resources and labor during weekdays to boost sales revenue.

- **Insight 2:** Coffee and Tea are the highest selling product categories, with Barista Espresso, Brewed Chai and Gourmet Brewed Coffee being the all time favorites.
- **Recommendation 2 :**
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
   
# Executive Summary

### Overview of Findings

Overarching findings were that weekdays had more sales versus weekends. Further, Barista Espresso, Brewed Chai and Hot Chocolate had the highest sales out of all products.

# Insights Deep Dive
### 1. Sales Analysis:

* **GROWTH: Month over Month (MoM) Growth Analysis for Sales/Orders/Products.**

   Sales appear to be seasonal for the Coffee Shop where by MoM sales were 30% in March, 20% in April and 32% in May respectively.
   Orders and Products followed a similar seasonal pattern to that of sales.
   
   Below is the output of the SQL code created to calculate Total Sales per month, MoM difference is sales and MoM percentage change in sales.
   
   ![image](https://github.com/user-attachments/assets/ce596865-91ec-4714-b13c-a435b73d393f)
   
   You can find my SQL queries for
   1. MoM sales analysis [here](https://github.com/aslamfaleel/Cofee_Shop_Sales/blob/main/1.4_KPI_SalesMoM_Change_PercChange.sql).
   2. MoM orders analysis [here](https://github.com/aslamfaleel/Cofee_Shop_Sales/blob/main/1.5_KPI_OrdersMoM_Change_PercChange.sql).
   3. MoM products analysis [here](https://github.com/aslamfaleel/Cofee_Shop_Sales/blob/main/1.7_KPI_QuantityMoM_Change_PercChange.sql).

* **CONTRIBUTION: Month over Month (MoM) Contribution Analysis for Sales/Orders/Products.**

   The high growth in sales during March, April and May has resulted larger contributions to Total Sales in subsequent months; April 17%, May 22% and June 24%.  
   
   Below is the output of the SQL code created to calculate Total Sales per month, monthly contribution as a percentage to Total Sales.
   
   ![image](https://github.com/user-attachments/assets/2094bfb5-7ee8-4f6c-8ba8-e9267765620e)
   
   You can find my SQL queries for
   1. MoM sales analysis [here](https://github.com/aslamfaleel/Cofee_Shop_Sales/blob/main/1.8_TotalSalesQtyOrders_PerMonthContribution.sql)

* **CONTRIBUTION: Weekday vs. Weekend Contribution Analysis for Sales/Orders/Products.**

   Weekday sales had a larger contribution to Total Sales of 72% as opposed to weekend sales which had a 28% contribution.  
   
   Below is the output of the SQL code created to calculate Weekday sales contribution vs. Weekend sales contribution to Total Sales.

   ![image](https://github.com/user-attachments/assets/16653460-87ce-4399-8145-518d44327c60)

   You can find my SQL queries for
   1. Weekday vs. Weekend sales contribution analysis [here](https://github.com/aslamfaleel/Cofee_Shop_Sales/blob/main/2.1_WeekendvsWeekdaySales_ForAMonth.sql)







* **Main insight 2.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 3.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 4.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.

[Visualization specific to category 1]


### Category 2:

* **Main insight 1.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 2.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 3.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 4.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.

[Visualization specific to category 2]


### Category 3:

* **Main insight 1.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 2.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 3.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 4.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.

[Visualization specific to category 3]


### Category 4:

* **Main insight 1.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 2.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 3.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 4.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.

[Visualization specific to category 4]



# Recommendations:

Based on the insights and findings above, we would recommend the [stakeholder team] to consider the following: 

* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  
* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  
* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  
* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  
* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  


# Assumptions and Caveats:

Throughout the analysis, multiple assumptions were made to manage challenges with the data. These assumptions and caveats are noted below:

* Assumption 1 (ex: missing country records were for customers based in the US, and were re-coded to be US citizens)
  
* Assumption 1 (ex: data for December 2021 was missing - this was imputed using a combination of historical trends and December 2020 data)
  
* Assumption 1 (ex: because 3% of the refund date column contained non-sensical dates, these were excluded from the analysis)
