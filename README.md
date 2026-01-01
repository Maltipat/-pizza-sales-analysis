# 🍕 Pizza Sales Analysis

**SQL Data Analysis Project** - Exploring 48,620 pizza orders from 2015 to uncover revenue trends, peak times, customer behavior, and category performance.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
![SQL](https://img.shields.io/badge/SQL-Analysis-blue)
![Status](https://img.shields.io/badge/Status-Work%20in%20Progress-orange)

## 📈 Key Metrics (Full Dataset)

| Metric                  | Value          |
|-------------------------|----------------|
| **Total Revenue**       | $817,771.84    |
| **Total Pizzas Sold**   | 49,574         |
| **Total Orders**        | 21,350         |
| **Average Order Value** | $38.31         |
| **Avg Pizzas per Order**| 2.32           |

## 🎯 Key Insights So Far

### Peak Ordering Days
- **Friday & Saturday** are the busiest days (highest number of orders)
- Weekends drive ~35% of total orders

### Peak Hours
- Lunch rush: **12 PM - 1 PM**
- Dinner rush: **5 PM - 8 PM** (especially 6 PM & 7 PM)

### Category Performance (January 2015 Example)
- **Classic**: ~38% of sales
- **Supreme**: ~27%
- **Chicken**: ~18%
- **Veggie**: ~15%

## 🛠️ Tech Stack
- **SQL** (Microsoft SQL Server / MySQL compatible)
- Dataset: `pizza_sales.csv` (48,620 rows)
- Future plans: Python (Pandas, Matplotlib), Power BI / Tableau visualizations

## 📂 Project Structure

pizza-sales-analysis/
├── data/
│   └── pizza_sales.csv
├── sql/
│   ├── 01_kpi_metrics.sql
│   ├── 02_daily_trends.sql
│   ├── 03_hourly_trends.sql
│   └── 04_category_analysis.sql
├── README.md
└── .gitignore
