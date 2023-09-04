# Olist eCommerce  Project

## Overview

This project aims to design a data warehouse for Olist  E-commerce data, implement ETL processes using SSIS and implement incremental loading and slowly changing dimensions (SCD), and create reports using SQL Server Reporting Services (SSRS) and visualize the data using Power BI.

## Table of Contents

- [Data Source](#data-source)
- [Architecture](#architecture)
- [ETL Process](#etl-process)
- [Reporting](#reporting)
- [Data Visualization](#data-visualization)


## Data Source
Using the Olist eCommerce dataset as the source of our data (9 csv files). The dataset has information of 100k orders from 2016 to 2018 made at multiple marketplaces in Brazil.
.You can find the dataset [here] [https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce]

## Architecture
Designed a data warehouse using SQL, implementing a star schema for efficient data modeling.
### StarSchema
![image](https://github.com/Mustafamegahed20/olist-Ecommerce/assets/61358936/f2fb476e-52a6-49f4-bef3-26089f886b2b)



## ETL Process

By using SSIS, I perform ETL process involves extracting data from Csv files, transforming it to fit our data warehouse schema, and loading it. I have implemented incremental loading and SCD to efficiently manage data updates.

## Reporting

I generate various reports using SQL Server Reporting Services (SSRS) to provide insights into the Olist eCommerce data. 

## Data Visualization

To visualize our data, I use Power BI. I have created interactive dashboards and visualizations to get insights from it.



