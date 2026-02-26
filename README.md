# SQL Project WEEK 1 - Danny's Dinner 🍽️ | [Link](https://8weeksqlchallenge.com/case-study-1/)

**Danny's Dinner** is a subscription-based restaurant dataset where we analyze customer purchases, membership behavior, and loyalty points. The goal of this project was to use **advanced SQL techniques** to extract insights from transactional and membership data, simulating real-world business analytics scenarios.

The dataset included three main tables:
- `sales`: records of customer purchases including `product_id`, `order_date`, and `customer_id`.
- `menu`: menu items with their `product_name` and `price`.
- `members`: customer membership data with `customer_id` and `join_date`.

## SQL Techniques Used
- **Aggregations and Grouping:** `SUM()`, `COUNT()`, `GROUP BY` for total spend, total items, and visit counts.  
- **Window Functions:** `DENSE_RANK()` to rank purchases, find first/most purchased items per customer, and compute member transaction order.  
- **Conditional Logic:** `CASE` statements to calculate points based on rules (e.g., sushi 2x points, first-week double points).  
- **Joins:** Inner and left joins across `sales`, `menu`, and `members` to combine transactional and membership data.  
- **CTEs (Common Table Expressions):** For clean, stepwise calculations and intermediate tables.  
- **Time-Based Calculations:** Date differences to identify purchases before or after membership, and within specific periods.  
---
## Insights and Highlights
- Identified **most popular items overall** and **per customer**, enabling targeted promotions.  
- Tracked **membership influence** on purchase behavior, showing what customers buy before and after joining.  
- Calculated **loyalty points accurately** with multiple rules, demonstrating the ability to implement complex business logic in SQL.  
- Built **actionable datasets** using window functions and CTEs, showcasing advanced SQL capabilities.  
---
## Learning Outcomes
This project strengthened my ability to:
- Solve **real-world business problems** with SQL.  
- Combine multiple SQL techniques in a single workflow: aggregation, ranking, conditional logic, and joins.  
- Write **readable, maintainable SQL** using CTEs for intermediate steps.  
- Implement **business logic programmatically**, such as points calculations and membership analytics.
- 
---
## Conclusion
The Danny’s Dinner project is an example of **end-to-end SQL analytics**, from cleaning and aggregating data to performing advanced ranking and conditional computations. The insights derived can inform business decisions, reward loyal customers, and optimize restaurant operations.


---


# SQL Project WEEK 2 - Pizza Runner 🍕🏃 | [Link](https://8weeksqlchallenge.com/case-study-2/)
**Pizza Runner** is a delivery-focused dataset that tracks customer orders, pizza details, runner assignments, and delivery logistics. The goal of this project was to leverage **advanced SQL skills** to clean, transform, and analyze complex transactional and operational data, producing actionable insights for business optimization.

The dataset included multiple tables:
- `customer_orders`: records of pizzas ordered, including `pizza_id`, `order_time`, `exclusions`, `extras`, and `customer_id`.
- `runner_orders`: delivery information including `runner_id`, `pickup_time`, `distance`, `duration`, and `cancellation`.
- `pizza_names` & `pizza_toppings`: details about pizza types and ingredient names.
- `pizza_recipes`: mapping of pizzas to standard toppings.
- `ratings`: newly created table to capture customer ratings for runners.

---
## Data Cleaning and Preparation
Before analysis, I performed extensive **data cleaning and normalization**:
- Converted null and `'null'` string values to standard empty strings (`''`) in `exclusions` and `extras`.
- Standardized delivery metrics: removed `'km'` and `'mins'` text, converted `distance` and `duration` to numeric types.
- Ensured date-time consistency for `order_time` and `pickup_time`.
- Normalized pizza ingredient data into a separate table for easier aggregation (`pizza_recipes_normalized`) and expanded extras and exclusions using `UNNEST`.
- Created `ratings` table for customer feedback, enabling integration of qualitative metrics with operational data.

These steps ensured that all subsequent SQL queries would produce accurate, reliable, and analyzable results.

---
## SQL Techniques Used
- **Aggregations and Grouping:** `COUNT()`, `SUM()`, `GROUP BY` to track order volumes, pizza types, and ingredient usage.
- **Window Functions:** `DENSE_RANK()` for ranking deliveries, ingredients, and customer order sequences.
- **Conditional Logic:** `CASE` statements to calculate points, delivery costs, and categorize orders with exclusions/extras.
- **Joins and CTEs:** Combined multiple tables (`customer_orders`, `runner_orders`, `pizza_names`, `pizza_toppings`) to produce consolidated metrics.
- **String Functions:** `STRING_AGG()`, `REPLACE()`, and `UNNEST()` for ingredient-level transformations and creating human-readable pizza order descriptions.
- **Time-Based Calculations:** Calculated preparation and delivery times, average speeds, and order durations.
- **Financial Calculations:** Estimated total revenue, runner payout costs, and net earnings per delivery scenario.
---
## Insights and Highlights
- Cleaned data enabled precise metrics on **most ordered pizzas**, popular extras/exclusions, and customer preferences.
- Calculated **delivery efficiency**, including average time, distance, speed per runner, and longest vs shortest deliveries.
- Mapped **ingredients used per order**, including extras and exclusions, creating a comprehensive view of pizza customization trends.
- Estimated **financial performance**: revenue per order, additional charges for extras, runner payouts, and net profit.
- Integrated **customer ratings** with delivery and order metrics to analyze performance and identify improvement areas.
---
## Learning Outcomes
This project enhanced my skills in:
- Cleaning and normalizing messy, multi-source datasets using SQL.  
- Combining multiple SQL techniques—aggregations, joins, window functions, and string operations—for operational analytics.  
- Handling **hierarchical and nested data** (ingredients, extras, exclusions) in a structured and analyzable way.  
- Calculating advanced operational metrics like delivery efficiency, total revenue, and net earnings programmatically.  
- Designing new tables (`ratings`) and integrating them into existing workflows for comprehensive analysis.
---
## Conclusion
The **Pizza Runner project** demonstrates a full **end-to-end SQL workflow**: from data cleaning and transformation to advanced analytics and business metric calculations. Insights derived from this analysis can optimize delivery operations, ingredient management, revenue tracking, and customer satisfaction, showcasing expertise in advanced SQL techniques for real-world business scenarios.


---


# SQL Project WEEK 3 - Foodie-Fi 🥗 | [Link](https://8weeksqlchallenge.com/case-study-3/)
**Foodie-Fi** is a subscription-based food delivery platform dataset, tracking customer plans, trials, upgrades, downgrades, and churn. The goal of this project was to analyze customer subscription behavior and transitions between plans using SQL.

The dataset included:
- `subscriptions`: records of customer subscriptions with `customer_id`, `plan_id`, and `start_date`.
- `plans`: plan metadata including `plan_id` and `plan_name`.

---
## SQL Techniques Used
- **Aggregations and Grouping:** `COUNT()` and `SUM()` to find total customers, churn counts, and plan transitions.
- **Window Functions:** `LEAD()` to track subsequent plans after a trial or initial plan, enabling analysis of upgrades/downgrades.
- **Date Arithmetic:** Calculated time between subscription start dates to determine average days to upgrade from trial to annual plans.
- **Conditional Logic:** `CASE` statements were not heavily needed here but could be used to bucket upgrade durations.
---
## Insights and Highlights
- Calculated **total customers and churn rates**, including churn immediately after trial plans.
- Analyzed **conversion rates** from free trials to paid subscriptions.
- Determined **plan distribution** at a specific date (2020-12-31), highlighting the most popular plans.
- Measured **average time to upgrade** to annual plans and segmented it into 30-day periods for business insight.
- Tracked **downgrades** from pro monthly to basic monthly plans, useful for retention strategy.
---
## Learning Outcomes
- Applied SQL to answer **subscription and churn-related business questions**.
- Learned to **track sequential customer actions** using window functions.
- Developed skills in **aggregating temporal data** for meaningful business insights.
---
## Conclusion
This project demonstrates the use of SQL to monitor **subscription behavior**, churn, and plan transitions. The analysis provides actionable insights for **customer retention strategies** and subscription lifecycle optimization.


---


# SQL Project WEEK 4 - DataBank 💾 | [Link](https://8weeksqlchallenge.com/case-study-4/)
**DataBank** is a financial services dataset tracking customer nodes and transaction history. The project focused on exploring **node allocations** and **customer transaction patterns** to derive operational and financial insights.

The dataset included:
- `customer_nodes`: customer allocation across nodes with `node_id`, `region_id`, `start_date`, and `end_date`.
- `regions`: mapping of `region_id` to `region_name`.
- `customer_transactions`: records including `customer_id`, `txn_type`, `txn_amount`, and `txn_date`.

---
## SQL Techniques Used
- **Aggregations and Grouping:** `COUNT()`, `SUM()`, and `AVG()` to summarize nodes, customers, and transaction totals.
- **CTEs (Common Table Expressions):** Used for stepwise computations like monthly transaction summaries and node reallocation averages.
- **Percentiles:** `PERCENTILE_CONT()` to calculate median, 80th, and 95th percentiles for node reallocation durations.
- **Date Arithmetic:** Calculated reallocation durations and monthly metrics from transactional dates.
---
## Insights and Highlights
- Calculated **unique node counts** and **customers per region**, useful for operational planning.
- Computed **average and percentile-based reallocation days**, highlighting customer mobility patterns.
- Summarized **transaction activity** by type and month.
- Identified **customers with multiple deposits and transactions in a month**, providing insights into engagement.
---
## Learning Outcomes
- Practiced SQL for **financial and operational analytics**.
- Applied **aggregations and percentiles** to quantify patterns across customer nodes.
- Built **clean, intermediate CTEs** to structure complex queries effectively.
---
## Conclusion
The DataBank project demonstrates SQL-driven exploration of customer behavior and operational metrics. Insights support **resource planning, customer engagement analysis, and transactional behavior monitoring**.

---


# SQL Project WEEK 5 - Data Mart 🛒 | [Link](https://8weeksqlchallenge.com/case-study-5/)
**Data Mart** is a retail transactional dataset that tracks weekly sales across regions, platforms, and customer segments. The focus of this project was to **clean, structure, and enrich the dataset** to make it suitable for business analytics.

The dataset included:
- `weekly_sales`: transactional records with `week_date`, `region`, `platform`, `sales`, `transactions`, and `segment`.
---
## Data Cleaning
- Created a **cleaned table** `clean_weekly_sales` to preserve the original dataset.
- Converted `week_date` from string to **DATE** type.
- Added **week_number**, **month_number**, and **calendar_year** columns derived from `week_date`.
- Extracted **age_band** and **demographic** from the `segment` field:
  - Mapped segment codes to meaningful categories (e.g., `1 → Young Adults`, `C → Couples`).
- Calculated a new column `avg_transaction` as `sales / transactions`, handling cases where transactions were zero or null.

---
## SQL Techniques Used
- **Aggregations:** `SUM()`, `COUNT()` for total sales, total transactions, and contributions per group.
- **Window Functions:** `SUM() OVER()` for computing percentage contributions by age_band, demographic, or platform.
- **Date Functions:** `EXTRACT()` to compute week, month, and year-based metrics.
- **CTEs (Common Table Expressions):** For intermediate steps like monthly sales, platform-wise percentages, and demographic-wise sales contributions.
- **Conditional Logic:** `CASE` statements to map codes to readable categories and handle nulls.
---
## Insights and Highlights
- Identified **total transactions per year** and **monthly sales per region**.
- Computed **platform-wise contribution** and the **percentage of sales for Retail vs Shopify**.
- Analyzed **demographic-wise contributions** and identified which age_band and demographic combinations drive the most Retail sales.
- Calculated **average transaction size** for each year and platform using both row-level averages and aggregated totals.
- Built a **cleaned, enriched dataset** ready for further business analysis or visualization.
---
## Learning Outcomes
- Strengthened skills in **data cleaning and preparation** using SQL.
- Learned to extract **actionable insights** from structured sales and demographic data.
- Applied **advanced SQL techniques** like window functions, CTEs, and conditional mappings effectively.
- Built a **reliable data mart** suitable for reporting and analytics purposes.
---
## Conclusion
The **Data Mart** project demonstrates **end-to-end SQL data preparation**, from cleaning raw data and generating new columns to performing aggregations and advanced calculations. The cleaned dataset can now serve as a foundation for performance analysis, customer insights, and strategic decision-making.
