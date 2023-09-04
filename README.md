﻿# Olist E-Commerce  Project
   ![image](https://github.com/Mustafamegahed20/olist-Ecommerce/assets/61358936/a4fc7748-8594-4cb3-a92b-72ebf970bb38)
## Overview

The Olist E-Commerce  project is a comprehensive data engineering and business intelligence (BI) solution designed to handle and analyze the data generated by Olist ,a Brazilian e-commerce platform.This project aims to implement a data warehouse for Olist  E-commerce data, Perform ETL processes using SSIS and implementing incremental load and slowly changing dimensions (SCD)(Type 0 , Type 1 ,Type 2), and create reports using (SSRS) and visualize the data using Power BI to provide valuable insights into Olist's operations.

As a Data Engineer and BI Developer, I have architected and implemented this solution.

## Table of Contents

- [Data Source](#data-source)
- [Architecture](#architecture)
- [ETL Process(SSIS)](#etl-process)
- [Reporting(SSRS)](#reporting)
- [Data Visualization(PowerBI)](#data-visualization)


## Data Source
Using Olist E-Commerce dataset as the source of our data (9 csv files). The dataset has information of 100k orders from 2016 to 2018 made at multiple marketplaces in Brazil.
You can find the dataset [here] [https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce]

## Architecture
I developed Data warehouse based on a star schema and identified fact tables is Fact_orders. On the other hand, identified dimension tables are Dim_costomer, Dim_seller, Dim_product, Dim_date,Dim_Payment
### StarSchema
![image](https://github.com/Mustafamegahed20/olist-Ecommerce/assets/61358936/86c0f973-1315-47b9-93a9-b988e152b0bc)



## ETL Process

By using SSIS, I perform ETL process involves extracting data from Csv files, transforming it to fit our data warehouse schema, and loading it,also i have implemented incremental loading and SCD types to efficiently manage data updates.
### Fact_order control flow 
![fact](https://github.com/Mustafamegahed20/olist-Ecommerce/assets/61358936/f119d7f7-284a-4d4c-add1-60fb76faa5df)


### Fact_order Data flow 
![fact2](https://github.com/Mustafamegahed20/olist-Ecommerce/assets/61358936/33e1bb1d-0aa4-4a18-809a-67ec283ef024)

### Customer_Dim Data flow 
![CustomerFlow](https://github.com/Mustafamegahed20/olist-Ecommerce/assets/61358936/7f6596d6-c55b-4cd3-a076-772ea2f7bc84)

### Seller_Dim Data flow
![SellerDim](https://github.com/Mustafamegahed20/olist-Ecommerce/assets/61358936/6855539d-e0a8-495e-addd-5e2c829e441e)

### Product_Dim Data flow
![ProductDim](https://github.com/Mustafamegahed20/olist-Ecommerce/assets/61358936/ca0f2fca-4265-4487-a837-8c92da610126)

### Payment_Dim Data flow
![payment Dim](https://github.com/Mustafamegahed20/olist-Ecommerce/assets/61358936/19d71792-1095-4893-92e0-0a0ea5ba06c5)

## Reporting 

I generate various reports using SQL Server Reporting Services (SSRS) to provide insights into the Olist eCommerce data. 
### Paginated Reports 
![image](https://github.com/Mustafamegahed20/olist-Ecommerce/assets/61358936/34aa8380-7b85-45a3-be59-5f66882fb484)
![image](https://github.com/Mustafamegahed20/olist-Ecommerce/assets/61358936/3506a08e-5726-4c1c-806d-a5023876d08b)
![image](https://github.com/Mustafamegahed20/olist-Ecommerce/assets/61358936/11a126c8-a798-4042-8943-fd67275aea51)
![image](https://github.com/Mustafamegahed20/olist-Ecommerce/assets/61358936/c1015f4a-65c0-4c4f-a36f-6cfadbca96f5)

## Data Visualization
To visualize our data, I use Power BI. I have created interactive dashboards and visualizations to get insights from it. you can Find it in this Link [https://www.novypro.com/project/olist-ecommerce-power-bi]

   ### Welcome page
   ![image](https://github.com/Mustafamegahed20/olist-Ecommerce/assets/61358936/a4fc7748-8594-4cb3-a92b-72ebf970bb38)

   ### Sales DashBoards
   ![image](https://github.com/Mustafamegahed20/olist-Ecommerce/assets/61358936/50de5dd9-3d12-4724-aa3b-38a784460ba7)

   ### Orders DashBoards
   ![image](https://github.com/Mustafamegahed20/olist-Ecommerce/assets/61358936/f8d67625-585f-4bd3-983b-f879c76fd0f6)

   ### Sellers DashBoards
   ![image](https://github.com/Mustafamegahed20/olist-Ecommerce/assets/61358936/ce0c8db2-2f3a-4aa5-8272-e4f0e5181982)
   ### Customer DashBoards 
   ![image](https://github.com/Mustafamegahed20/olist-Ecommerce/assets/61358936/bbc47677-8a42-45e9-8b9b-e897d63b73bd)

   ### Summary DashBoards
   ![image](https://github.com/Mustafamegahed20/olist-Ecommerce/assets/61358936/3a81401f-bbfb-48e6-8786-32a6bbce1e9f)

   ### Tooltip
   ![image](https://github.com/Mustafamegahed20/olist-Ecommerce/assets/61358936/a93a948b-8a6d-4e80-8f71-a93033102715)






