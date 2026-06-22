Yes. A few well-placed emojis can make the README look more modern and visually appealing **without looking unprofessional**.

For a Data Analytics portfolio project, I'd use emojis only in headings and key sections.

---

# 🛒 Zepto Inventory & Pricing Analysis

## 📌 Project Overview

This project analyzes Zepto's product catalog using PostgreSQL to evaluate inventory health, pricing strategy effectiveness, discount patterns, and revenue risks caused by stock shortages.

The analysis focuses on identifying business opportunities through SQL-driven insights, including inventory optimization, stock-out risk assessment, category-level discount analysis, and ABC inventory classification.

Using advanced SQL concepts such as Common Table Expressions (CTEs), Window Functions, Aggregate Functions, and Ranking Functions, the project transforms raw e-commerce catalog data into actionable business intelligence.

---

## 🎯 Business Problem

E-commerce companies manage thousands of products across multiple categories. Without proper analysis, businesses face challenges such as:

* 📉 Revenue loss from stock-outs
* 📦 Inefficient inventory allocation
* 💰 Poor pricing and discount strategies
* 📊 Overstocking of low-performing products
* 🔍 Lack of visibility into high-value inventory

This project aims to address these challenges through data-driven inventory and pricing analysis.

---

## 🗂️ Dataset Information

The dataset contains over **10,000 product records** from Zepto's inventory catalog and includes:

* Product Name
* Category
* MRP
* Discounted Price
* Discount Percentage
* Available Quantity
* Product Weight
* Product Availability Status

Before analysis, the dataset was cleaned and standardized for accurate reporting and business decision-making.

---

## 🧹 Data Cleaning & Preparation

The following preprocessing steps were performed:

✅ Converted pricing values from Paise to INR

✅ Removed invalid zero-priced product listings

✅ Standardized category information

✅ Handled missing values

✅ Validated pricing consistency across products

---

## 🛠️ Tools & Technologies

### 🗄️ Database

* PostgreSQL

### 📈 Querying & Analysis

* SQL
* Common Table Expressions (CTEs)
* Window Functions
* Aggregate Functions
* Ranking Functions

### 📊 Business Intelligence

* Inventory Analytics
* Pricing Analytics
* Revenue Risk Analysis

---

## 🚀 SQL Concepts Applied

This project demonstrates practical use of:

* SELECT Statements
* WHERE Clauses
* CASE Statements
* Aggregate Functions
* GROUP BY
* HAVING
* ORDER BY
* Subqueries
* Common Table Expressions (CTEs)
* Window Functions
* ROW_NUMBER()
* RANK()
* DENSE_RANK()
* Percentile Analysis
* Inventory Segmentation

---

# 🔍 Key Business Insights

## 📉 Revenue at Risk (Stock-Out Impact)

Inventory analysis revealed a significant portion of products currently unavailable for purchase.

* Approximately **12.14%** of products were identified as Out of Stock.
* 🍨 Ice Cream & Desserts emerged as a major category with high potential revenue leakage.
* ⚠️ Stock-outs in high-demand categories increase the risk of customer churn and lost sales opportunities.

### 💡 Recommendation

Prioritize replenishment of high-demand products and implement inventory forecasting models to reduce stock-out risk.

---

## 💰 Pricing & Discount Strategy

Category-level pricing analysis was benchmarked against platform-wide discount trends.

* Average platform discount: **7.62%**
* 📊 Significant variation in discounts was observed across categories.
* 📦 Bulk-packaged products provided superior value per gram compared to smaller alternatives.

### 💡 Recommendation

Promote value-pack products to price-sensitive customers while optimizing discount allocation across categories.

---

## 📦 Inventory Classification (ABC Analysis)

Using the Pareto Principle (80/20 Rule), products were classified according to inventory value contribution.

### 🥇 Tier A Products

* Represent approximately 20% of products
* Contribute nearly 70% of total inventory value

### 🥈 Tier B Products

* Moderate inventory value contribution
* Require routine monitoring

### 🥉 Tier C Products

* Lower inventory value contribution
* Support catalog breadth

### 💡 Recommendation

Implement stricter inventory controls and forecasting for Tier A products to maximize inventory efficiency.

---

## ❓ Business Questions Solved

* Which product categories have the highest stock-out risk?
* Which products provide the best value per gram?
* What percentage of inventory is unavailable?
* Which categories offer the largest discounts?
* What is the estimated revenue impact of stock shortages?
* Which products should be prioritized for replenishment?
* How should inventory be segmented using ABC analysis?

---

## 📁 Repository Structure

```text
zepto-sql-inventory-analysis/
│
├── Dataset/
│   ├── zepto_v1.xlsx
│   └── zepto_v2.csv
│
├── SQL/
│   └── zepto_inventory_analysis.sql
│
├── Report/
│   └── Executive Summary.pdf
│
└── README.md
```

---

## 🎯 Project Outcomes

This analysis provides:

✅ Inventory Optimization Recommendations

✅ Revenue Leakage Detection

✅ Pricing Strategy Insights

✅ Discount Performance Evaluation

✅ Inventory Segmentation Framework

✅ Business Intelligence Reporting

---

## 🧠 Skills Demonstrated

* SQL
* PostgreSQL
* Data Analysis
* Data Cleaning
* Window Functions
* CTEs
* Inventory Analytics
* Business Intelligence
* Data Storytelling
* Business Recommendations

---

## 👨‍💻 About the Author

**Pranay Kumar**

Aspiring Data Analyst skilled in:

* SQL
* PostgreSQL
* Python
* Power BI
* Excel
* Data Visualization
* Business Analytics

Passionate about transforming raw data into actionable business insights and building end-to-end analytics solutions.

---

### ⭐ Pro Tip

Add this right below your title:

```markdown
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-Database-blue)
![SQL](https://img.shields.io/badge/SQL-Analytics-green)
![Data Analysis](https://img.shields.io/badge/Data-Analysis-orange)
![Business Intelligence](https://img.shields.io/badge/Business-Intelligence-purple)
```

Those badges make the repository look significantly more polished and professional.


        Developed custom voice-command modules for system automation and web navigation.

        Integrated third-party APIs for real-time data retrieval (Weather, News, and System Diagnostics).

        Optimized script performance for low-latency response times.
