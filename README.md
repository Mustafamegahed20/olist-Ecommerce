﻿# Olist E-Commerce  Project
![image](https://github.com/Mustafamegahed20/olist-Ecommerce/assets/61358936/d4a53e14-d27e-403a-9257-31959fa69b9f)
## Overview

This project aims to design a data warehouse for Olist  E-commerce data, implement ETL processes using SSIS and implement incremental loading and slowly changing dimensions (SCD), and create reports using SQL Server Reporting Services (SSRS) and visualize the data using Power BI.

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
![image](https://github.com/Mustafamegahed20/olist-Ecommerce/assets/61358936/f2fb476e-52a6-49f4-bef3-26089f886b2b)



## ETL Process

By using SSIS, I perform ETL process involves extracting data from Csv files, transforming it to fit our data warehouse schema, and loading it,also i have implemented incremental loading and SCD types to efficiently manage data updates.
### Fact_order control flow 
![fact](https://github.com/Mustafamegahed20/olist-Ecommerce/assets/61358936/4d3d8339-d7c5-4c2f-a127-06dad9275bbc)

### Fact_order Data flow 
![fact2](https://github.com/Mustafamegahed20/olist-Ecommerce/assets/61358936/fa935610-b60e-4785-844b-f4a3e52b90b3)

### Customer_Dim Data flow 
![CustomerFlow](https://github.com/Mustafamegahed20/olist-Ecommerce/assets/61358936/af1aa2b1-4764-4bce-b601-168fd92bc9bc)

### Seller_Dim Data flow
![SellerDim](https://github.com/Mustafamegahed20/olist-Ecommerce/assets/61358936/ad2ec3cd-e689-4457-b12f-2e488ce0d533)

### Product_Dim Data flow
![ProductDim](https://github.com/Mustafamegahed20/olist-Ecommerce/assets/61358936/201b2d2d-88a2-44a2-a45d-1f0611c68f02)

### Payment_Dim Data flow
![payment Dim](https://github.com/Mustafamegahed20/olist-Ecommerce/assets/61358936/c8bdfcca-d0f0-4b7a-aee4-d9556ab9c214)

## Reporting 

I generate various reports using SQL Server Reporting Services (SSRS) to provide insights into the Olist eCommerce data. 
### Paginated Reports 
![image](https://github.com/Mustafamegahed20/olist-Ecommerce/assets/61358936/69d19e84-dcd8-4089-b0b7-e3748efccb74)
![image](https://github.com/Mustafamegahed20/olist-Ecommerce/assets/61358936/fde2feed-1fab-44f5-9f9e-60697b374fac)
![image](https://github.com/Mustafamegahed20/olist-Ecommerce/assets/61358936/1c492b29-7d29-4c27-85f2-5def36c8b53d)
![image](https://github.com/Mustafamegahed20/olist-Ecommerce/assets/61358936/4e0ea12e-53f8-48ea-993f-749f5870ede9)

## Data Visualization
To visualize our data, I use Power BI. I have created interactive dashboards and visualizations to get insights from it. you can Find it in this Link [https://www.novypro.com/project/olist-ecommerce-power-bi]

   ### Welcome page
![image](https://github.com/Mustafamegahed20/olist-Ecommerce/assets/61358936/d4a53e14-d27e-403a-9257-31959fa69b9f)
   ### Sales DashBoards
![image](https://github.com/Mustafamegahed20/olist-Ecommerce/assets/61358936/61ca44d6-6190-4f24-b51d-78ac8714c9d4)
   ### Orders DashBoards
![image](https://github.com/Mustafamegahed20/olist-Ecommerce/assets/61358936/b53331b8-4f15-463e-a810-285743768a69)
   ### Sellers DashBoards
![image](https://github.com/Mustafamegahed20/olist-Ecommerce/assets/61358936/2fab7c45-56ff-41e5-8c76-1511b110ba0d)
   ### Customer DashBoards 
![image](https://github.com/Mustafamegahed20/olist-Ecommerce/assets/61358936/9c7c2669-38ba-4cc5-86ea-0831220dd1ea)
   ### Summary DashBoards
![image](https://github.com/Mustafamegahed20/olist-Ecommerce/assets/61358936/9067a553-ceea-429e-91c5-5498079bb470)
   ### Tooltip
![image](https://github.com/Mustafamegahed20/olist-Ecommerce/assets/61358936/d4ac1729-2b93-4542-9b64-5db656edc2e6)






