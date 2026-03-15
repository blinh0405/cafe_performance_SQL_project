
---

# Coffee Shop Sales Analysis Report

## 1. Introduction

The purpose of this project is to analyze transaction-level sales data from a coffee shop to understand how the business is performing across different products, stores, and purchase channels. The analysis focuses on identifying key sales trends, top-performing products, and store-level performance. It also explores customer behavior in terms of payment methods and purchasing patterns.

The dataset contains **9,999 transactions** recorded across **nine store locations** over the course of one year. Using SQL, several analyses were conducted to calculate key performance indicators (KPIs), identify top-selling products, and evaluate revenue performance across stores.

---

# 2. Key Performance Indicators

The first step in the analysis was to calculate the main performance metrics of the coffee shop.

| Metric                        | Value      |
| ----------------------------- | ---------- |
| Total Transactions            | 9,999      |
| Total Revenue                 | £89,239.52 |
| Average Transaction Value     | £8.92      |
| Total Units Sold              | 30,282.63  |
| Average Units per Transaction | 3.03       |

These metrics show that the coffee shop generated approximately **£89,000 in revenue** from almost **10,000 transactions**. On average, customers spend around **£8.92 per visit**, and purchase roughly **three items per transaction**.

This suggests that many customers purchase multiple items together, which is common in café environments where drinks are often paired with food items such as cakes or sandwiches.

---

# 3. Top Products by Units Sold

The next step was to identify which products sell the most frequently.

| Product  | Units Sold |
| -------- | ---------- |
| Juice    | 4531.85    |
| Coffee   | 3550.74    |
| Salad    | 3470.51    |
| Cake     | 3468.31    |
| Sandwich | 3429.74    |

From the results, **juice is the most frequently purchased item**, followed by coffee. This indicates that beverages are a major driver of customer traffic in the café.

Food items such as salads, cakes, and sandwiches also appear in the top five products, which shows that customers often purchase food alongside drinks.

---

# 4. Top Products by Revenue

While unit sales show which items are purchased most frequently, revenue analysis helps identify which products generate the most income.

| Product  | Revenue    |
| -------- | ---------- |
| Salad    | £17,069.07 |
| Sandwich | £13,545.01 |
| Juice    | £13,510.93 |
| Smoothie | £13,198.55 |
| Cake     | £10,388.14 |

Although **juice sells the most units**, **salads generate the highest revenue**. This likely means that salads have a higher price compared to drinks.

This result highlights that **food items contribute significantly to overall revenue**, even if beverages drive higher transaction volume.

---

# 5. Payment Method Analysis

The dataset also includes information about how customers pay for their purchases.

| Payment Method | Transactions | Revenue    | Avg Transaction |
| -------------- | ------------ | ---------- | --------------- |
| Digital Wallet | 4870         | £43,166.15 | £8.86           |
| Credit Card    | 2272         | £20,505.28 | £9.03           |
| Cash           | 2258         | £20,450.47 | £9.06           |
| ERROR          | 306          | £2,640.91  | £8.63           |
| UNKNOWN        | 293          | £2,476.71  | £8.45           |

Digital wallets account for **almost half of all transactions**, showing that many customers prefer using mobile payments.

Credit card and cash transactions are relatively similar in number and revenue.

However, the presence of **ERROR and UNKNOWN payment categories** suggests there may be some data recording issues in the payment system. Improving this data collection would help produce more accurate financial reports.

---

# 6. Purchase Type Analysis

Another part of the analysis looked at how customers receive their orders.

| Purchase Type | Transactions | Avg Transaction |
| ------------- | ------------ | --------------- |
| Takeaway      | 4483         | £8.81           |
| In-store      | 4438         | £9.01           |
| ERROR         | 552          | £9.25           |
| UNKNOWN       | 526          | £8.82           |

The number of **takeaway and in-store transactions is almost equal**, indicating that the café operates with a balanced service model.

In-store purchases have a slightly higher average transaction value, which may be because customers who sit in the café tend to order additional items.

Again, the presence of **ERROR and UNKNOWN categories** indicates some data quality issues.

---

# 7. Store Performance Analysis

The dataset includes nine store locations, allowing for comparison of sales performance across different branches.

| Store          | Transactions | Units Sold | Revenue    | Avg Transaction |
| -------------- | ------------ | ---------- | ---------- | --------------- |
| Birmingham     | 1182         | 3569       | £10,472.96 | £8.86           |
| Glasgow        | 1167         | 3499       | £10,135.04 | £8.68           |
| Liverpool      | 1107         | 3393       | £10,000.64 | £9.03           |
| London Central | 1100         | 3346       | £9,946.69  | £9.04           |
| Edinburgh      | 1116         | 3318       | £9,908.92  | £8.88           |
| Leeds          | 1077         | 3343       | £9,831.22  | £9.13           |
| Bristol        | 1109         | 3302       | £9,802.73  | £8.84           |
| Sheffield      | 1070         | 3216       | £9,636.11  | £9.01           |
| Manchester     | 1071         | 3292       | £9,505.22  | £8.88           |

Among all locations, **Birmingham generates the highest revenue**, while **Manchester records the lowest revenue**.

Despite this difference, the average transaction value is relatively consistent across stores, suggesting that product pricing and purchasing patterns are similar across locations.

---

# 8. Best-Selling Product by Store

Across nearly every store, **juice appears as the best-selling product** in terms of units sold.

This shows that beverage demand is consistent across locations, making juice and similar drinks key products for the café’s business model.

Maintaining sufficient inventory of these high-demand items is important for smooth store operations.

---

# 9. Sales Trend Analysis

Monthly revenue was also examined to understand how sales change throughout the year.

Average daily revenue across the dataset is approximately **£243.16**.

Revenue appears relatively stable across most months, with only small fluctuations. October recorded the highest monthly revenue, while February and September showed slightly lower sales.

Overall, the café appears to experience **consistent demand throughout the year**, without extreme seasonal changes.

---

# 10. Product Profitability

A simple profitability analysis was conducted using estimated product costs.

| Product | Revenue | Estimated Cost | Gross Profit | Margin |
| ------- | ------- | -------------- | ------------ | ------ |
| Coffee  | £7,226  | £4,260         | £2,965       | 41%    |
| Tea     | £5,163  | £2,988         | £2,175       | 42%    |

Both coffee and tea show **gross profit margins above 40%**, confirming that beverages are highly profitable products for the café.

Although some food items generate higher revenue, drinks remain an important contributor to overall profit.

---

# 11. Store Profitability

Estimated store profitability was calculated using revenue and variable cost estimates.

| Store          | Revenue | Variable Cost | Contribution Profit |
| -------------- | ------- | ------------- | ------------------- |
| Birmingham     | £1,602  | £937          | £664                |
| Edinburgh      | £1,438  | £844          | £593                |
| Liverpool      | £1,386  | £799          | £586                |
| Glasgow        | £1,401  | £830          | £570                |
| Bristol        | £1,346  | £780          | £565                |
| London Central | £1,341  | £785          | £555                |
| Leeds          | £1,318  | £772          | £546                |
| Sheffield      | £1,290  | £749          | £540                |

Birmingham again ranks as the most profitable location. Overall, profitability across stores is fairly balanced, which suggests consistent operations across locations.

---

# 12. Conclusion

This analysis provided several insights into the coffee shop’s sales performance.

First, beverages such as juice and coffee play a major role in attracting customers and driving transaction volume. At the same time, food items such as salads and sandwiches generate a significant portion of total revenue.

Second, digital wallets are the most commonly used payment method, indicating that customers prefer contactless payment options.

Third, store performance is relatively consistent across locations, although some branches generate slightly higher revenue than others.

Finally, the presence of **ERROR and UNKNOWN values in several fields highlights the importance of improving data recording systems** to ensure accurate reporting.

Overall, the results suggest that maintaining strong beverage offerings, improving data quality, and continuing to optimize food and drink combinations could help increase revenue and improve operational efficiency.

---

