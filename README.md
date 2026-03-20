🛒 Zepto E-commerce SQL Inventory Analysis

📌 Project Overview

This project is a deep-dive SQL analysis of real-world e-commerce inventory data from Zepto, one of India’s leading quick-commerce startups. As an aspiring Data Analyst, I transitioned raw, messy CSV data into a structured PostgreSQL database to uncover business-critical insights regarding pricing strategies, stock availability, and revenue potential.

🛠️ Technical Workflow

To ensure a professional and scalable analysis, I followed a structured data engineering pipeline:

    Data Ingestion: Utilized PostgreSQL psql meta-commands (\copy) for high-speed client-side loading.

        Challenge: Handled complex delimiters and UTF-8 encoding issues within the product name strings.

        Solution: Configured QUOTE and ESCAPE parameters to maintain data integrity for 10,000+ rows.

    Data Cleaning: * Normalized pricing by converting values from paise to Rupees (₹).

        Handled null values in the category and quantity fields.

        Deduplicated SKUs appearing across multiple sub-categories.

    Exploratory Data Analysis (EDA): Identified category distributions and out-of-stock ratios.

📊 Business Insights (Key Findings)

    Revenue at Risk: Found that [X]% of high-margin items in the [Category Name] category are currently out of stock, representing a potential revenue gap of ₹[Amount].

    Pricing Strategy: Identified that the average discount across the platform is [X]%, with the [Category Name] category offering the highest value to customers.

    Inventory Optimization: [X]% of products are currently "Low Stock" (Available Quantity < 10), primarily in the [Category Name] segment.

    Value-for-Money: Used price-per-gram analysis to rank the top 5 most cost-effective products for consumers.

💻 SQL Skills Showcased

This project demonstrates my proficiency in advanced SQL techniques:

    Data Definition (DDL): Schema design and table constraints.

    Aggregations: GROUP BY and HAVING for category-level summaries.

    Window Functions: Using RANK() and DENSE_RANK() to identify top-performing products within each category.

    CTEs (Common Table Expressions): Writing modular, readable code for complex multi-step analyses.

    Case Statements: Segmenting products into "Budget," "Mid-Range," and "Premium" tiers.

📁 Repository Structure

    Data/: Contains the zepto_v2.csv raw dataset (sourced from Kaggle).

    Scripts/:

        01_setup.sql: Table creation and \copy ingestion scripts.

        02_cleaning.sql: Data transformation and normalization.

        03_analysis.sql: Business-driven queries and insights.

    README.md: Project documentation and executive summary.

🚀 About the Author

Pranay Kumar
Data Annotation Specialist | Aspiring Data Analyst
Transitioning from a Data Annotation Specialist background to full-time Data Analytics. I specialize in turning raw datasets into actionable business narratives.

Check out my other projects:

    Jarvis Portfolio Project — Project Jarvis: Personal Virtual Assistant

    Role: Lead Developer

    Tech Stack: Python, Speech Recognition, API Integration.

    The Goal: Designed and built an automated virtual assistant to streamline daily digital tasks and system control.

    Key Features:

        Developed custom voice-command modules for system automation and web navigation.

        Integrated third-party APIs for real-time data retrieval (Weather, News, and System Diagnostics).

        Optimized script performance for low-latency response times.
