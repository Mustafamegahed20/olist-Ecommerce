﻿# Olist eCommerce  Project

## Overview

This project aims to design a data warehouse for Olist  E-commerce data, implement ETL processes using SSIS and implement incremental loading and slowly changing dimensions (SCD), and create reports using SQL Server Reporting Services (SSRS) and visualize the data using Power BI.

## Table of Contents

- [Data Source](#data-source)
- [Architecture](#architecture)
- [ETL Process](#etl-process)
- [Reporting](#reporting)
- [Data Visualization](#data-visualization)


## Data Source

Using the Olist eCommerce dataset as the source of our data. You can find the dataset [here] [https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce]

## Architecture

Our data warehouse is built on [MS sql server], following a [Star] schema. I use [SSIS] for data transformation and loading.

## ETL Process

By using SSIS, I perform ETL process involves extracting data from the source, transforming it to fit our data warehouse schema, and loading it. I have implemented incremental loading and SCD to efficiently manage data updates.

## Reporting

I generate various reports using SQL Server Reporting Services (SSRS) to provide insights into the Olist eCommerce data. 

## Data Visualization

To visualize our data, I use Power BI. I have created interactive dashboards and visualizations to get insights from it.



