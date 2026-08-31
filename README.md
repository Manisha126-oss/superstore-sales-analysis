# Superstore Sales Analysis

## Overview

This project analyzes Superstore retail sales data using **SQL (SQLite)** to identify key drivers of sales and profitability and answer practical business questions.

The analysis focuses on product performance, discounting, regional profitability, customer segments, shipping methods, and sales trends over time.

## Business Questions

1. Which categories/sub-categories drive the most sales vs. the most profit?
2. Does higher discount hurt profitability, and at what level?
3. Which regions/states are most/least profitable?
4. Does customer segment differ in order value or profitability?
5. Does ship mode relate to profit?
6. How have sales and profit trended over time? Are there seasonal patterns?

## Tools & Skills

* **SQL**
* **SQLite**
* Aggregations (`SUM`, `COUNT`)
* `GROUP BY` and `ORDER BY`
* `COUNT(DISTINCT)`
* Calculated metrics
* Profit margin analysis
* Date/string manipulation
* Business-focused data analysis

## Key Findings

### 1. Sales vs. Profitability

Tables generated high sales of **₹206,965.53** but recorded a loss of **₹17,725.48**. In contrast, Copiers generated the highest profit of **₹55,617.82** despite lower sales.

**Insight:** High revenue does not necessarily translate into high profitability, so product performance should be evaluated using both sales and profit.

### 2. Discount vs. Profitability

Profitability declines substantially at higher discount levels. Profit margin falls from **29.51% at 0% discount** to **5.15% at 15% discount** and becomes negative at **30% discount (−10.05%)**. All discount levels above 30% are also loss-making in the aggregated data.

**Insight:** Aggressive discounting can erode profitability. Discounts of 30% or more should be reviewed carefully, while considering product mix and sales volume.

### 3. Regional & State Profitability

The **West region** generated the highest profit at **₹108,418.45** and the highest regional profit margin at **14.94%**.

At the state level, **California** generated the highest total profit at **₹76,381.39**, while **New York** achieved a higher profit margin of **23.82%** despite lower sales.

**Insight:** Profitability varies significantly by location. **10 states recorded overall losses**, with Texas having the largest loss at **−₹25,729.36**.

### 4. Customer Segment

**Home Office** customers had the highest average order value at **₹472.67** and the highest average profit per order at **₹66.34**.

Consumer customers generated the highest total sales and profit because of their larger order volume.

**Insight:** Consumer drives volume, while Home Office generates greater value per order.

### 5. Ship Mode & Profitability

Profit margins were relatively similar across shipping modes, ranging from **12.08% to 13.93%**.

First Class had the highest profit margin at **13.93%**, while Standard Class had the lowest at **12.08%**.

**Insight:** The data does not show a clear negative relationship between faster shipping options and profitability.

### 6. Sales & Profit Trends

The monthly data suggests a recurring seasonal pattern, with stronger performance toward the end of the year.

**November** generated the highest combined sales at **₹352,461.07**, while **December** generated the highest combined profit at **₹43,369.19**. February recorded the lowest combined sales at **₹59,751.25**.

**Insight:** The September–December period shows stronger demand, while January–February are comparatively weaker.

## Business Recommendations

Based on the analysis:

* Review high-discount transactions, particularly discounts of **30% or more**.
* Investigate loss-making states, especially **Texas and Ohio**.
* Evaluate product performance based on **profit as well as sales**.
* Explore strategies to increase the value and retention of **Home Office customers**.
* Prepare inventory and operational capacity for the stronger **September–December** period.

## SQL Analysis

All SQL queries used for this analysis are available in:

`sql/superstore_analysis.sql`

The queries demonstrate SQL-based aggregation, profitability analysis, segmentation, geographic analysis, and time-based analysis.

## Project Status

✅ **Completed — 6 business questions analyzed using SQL**
