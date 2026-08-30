
# Superstore Sales Analysis

## Overview
This project analyzes Superstore retail sales data to understand 
profitability drivers, discount impact, and regional performance, with 
the aim of surfacing actionable business recommendations rather than 
just describing sales trends.

## Business Questions
1. Which categories/sub-categories drive the most sales vs. the most profit?
2. Does higher discount hurt profitability, and at what level?
3. Which regions/states are most/least profitable?
4. Does customer segment differ in order value or profitability?
5. Does ship mode relate to profit?
6. How have sales/profit trended over time?

## Tools Used
- SQL (SQLite) — querying and aggregating sales data

## Key Findings

**Sales vs. profit (Q1):** Tables were a high-revenue but loss-making 
sub-category, generating ₹206,965.53 in sales while losing ₹17,725.48. 
Meanwhile, Copiers generated the highest profit at ₹55,617.82 despite 
lower sales. This suggests that management should evaluate products based 
on profitability, not revenue alone.

**Discount vs. profitability (Q2):** Higher discount levels are strongly 
associated with lower profitability. Profit margin falls from 29.51% at 
0% discount to 5.15% at 15% discount, and becomes negative at 30% discount 
(−10.05%). Every discount level above 30% also shows a negative profit 
margin, reaching −180.03% at 80% discount. This suggests aggressive 
discounting is eroding profitability, with 30% appearing to be the point 
at which aggregated discount groups become loss-making. However, the 
relationship is not perfectly linear, so discount level should be evaluated 
alongside product mix and sales volume. Management should review 
high-discount transactions and consider limiting aggressive discounts, 
particularly at 30% and above, unless they serve a specific strategic 
purpose.

**Regional & state profitability (Q3):** The West region is the strongest 
performer, generating the highest profit of ₹108,418.45 and the highest 
regional profit margin of 14.94%. The Central region has the lowest profit 
margin at 7.92%, though it remains profitable overall. At the state level, 
California generates the highest total profit (₹76,381.39), while New York 
achieves a higher profit margin (23.82%) despite lower sales — reinforcing 
that higher sales don't necessarily mean better profitability. The analysis 
also identifies 10 loss-making states, with Texas showing the largest 
absolute loss (−₹25,729.36) despite ₹170,188.05 in sales; Ohio has the 
lowest profit margin among states (−21.69%). Management should prioritize 
profitable regions like the West while investigating loss-making states, 
particularly Texas and Ohio, to identify drivers of negative profitability.
## Status
🚧 In progress — questions 4-6 still to come.
