# Cofee_Shop_Sales
Cofee_Shop_Sales

![image](https://github.com/user-attachments/assets/d4ea1086-1e07-4dfa-8fa8-83b7a5ac262e)

# Table of Contents
[1.1 Project Background](#11-project-background)                                                                                                                              
[1.2 Data Structure & Initial Checks](#2-information-in-the-created-database)


# 1.1 Project Background

In this project, I analysed a dataset to investigate trends in Sales, Orders, and Products for a coffee shop located in New York, USA over a 6 month period. 
Key insights and recommendations per below.

- **Insight 1:** Sales by Weekday vs. Weekend hovers in the range of 70%-75% %  vs. 25%-30%.
- **Recommendation 1 :** Allocate more resources, labor during weekdays to boost sales revenue.

- **Insight 2:** Coffee and Tea are the highest selling product categories, with Barista Espresso, Brewed Chai and Gourmet Brewed Coffee being the all time favorites.
- **Recommendation 2 :**
   - Continous training to be carried out to train new joinees on preparing said products.
   - Ensure adequate and user friendly documentation is available at each location on how to prepare said products.
   - Ensure adequate stocks are available at any given point in time.
                   

The SQL queries used to inspect and clean the data for this analysis can be found by clicking [here](https://github.com/aslamfaleel/Coffee_Shop_Sales/blob/main/1.0_CreateDB_and_CleanData.sql).

Targed SQL queries regarding various business questions can be found here [link].

An interactive Power BI dashboard used to report and explore sales trends can be found clicking [here](https://github.com/aslamfaleel/Coffee_Shop_Sales/blob/main/CoffeeShopSalesPowerBIDashboard.pbix).

# 1.2 Data Structure & Initial Checks

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
### Category 1:

* **Weekdays vs. Weekend Sales 1.** Weekdays have more sales than weekends. Sales Ratios on a monthly basis as follows.
* 
  
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