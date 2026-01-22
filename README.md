# RETAIL-ANALYSIS
Retail Sales Data Analysis using SQL: End-to-end SQL project analyzing retail transaction data to clean raw records, perform exploratory analysis, and solve real-world business problems. Includes category-wise sales, customer analysis, time-based trends, high-value transactions, and advanced SQL techniques like CTEs and window functions.
Objectives

Create a structured retail sales table

Clean the dataset by handling missing (NULL) values

Perform exploratory data analysis (EDA)

Answer business-driven questions using SQL

Extract actionable insights from sales data

🗂️ Project Structure
1️⃣ Database & Table Setup

A table named RETAIL is created to store retail transaction data.

Table Columns:

transactions_id – Unique transaction ID

sale_date – Date of sale

sale_time – Time of transaction

customer_id – Unique customer ID

gender – Gender of customer

age – Age of customer

category – Product category

quantity – Units sold

price_per_unit – Price per unit

cogs – Cost of goods sold

total_sale – Total transaction value

2️⃣ Data Cleaning

Steps Performed:

Checked for NULL values in critical columns

Identified incomplete records

Removed records containing NULL values

This step ensures data accuracy and reliability before analysis.

3️⃣ Exploratory Data Analysis (EDA)

The following insights were explored:

Total number of sales transactions

Total number of unique customers

Total number of unique product categories

These queries helped understand the overall size and structure of the dataset.

4️⃣ Data Analysis & Business Questions

The following SQL queries were used to answer key business questions:

Retrieve all sales made on a specific date

Identify Clothing category transactions with high quantity in Nov-2022

Calculate category-wise total sales and order count

Find high-value transactions where total sale > 1000

Analyze gender-wise transactions across categories

Identify the best-selling month for each year using window functions

Find top 5 customers based on total sales

Count unique customers per category

Analyze shift-wise orders (Morning, Afternoon, Evening) using time-based logic

📈 Findings

Customer Behavior: Customers belong to different age groups with purchases across multiple categories.

High-Value Sales: Several transactions show high total sales, indicating premium customers.

Sales Trends: Monthly analysis helps identify peak sales periods.

Time-Based Insights: Evening and afternoon shifts contribute significantly to total orders.

Customer Insights: A small group of customers contributes a major share of revenue.

📊 Reports & Insights

Sales Summary: Overview of total sales and category performance

Trend Analysis: Monthly and shift-based sales trends

Customer Insights: Top customers and unique customer distribution

✅ Conclusion

This project provides hands-on experience in using SQL for data analysis.
It demonstrates how SQL can be used to clean data, perform exploratory analysis, and answer business questions.
The insights generated from this project can support better decision-making related to sales, customer targeting, and business planning.
