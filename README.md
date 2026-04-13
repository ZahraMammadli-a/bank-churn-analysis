# Bank Customer Churn Analysis

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-16-336791?style=flat&logo=postgresql&logoColor=white)
![Excel](https://img.shields.io/badge/Microsoft_Excel-217346?style=flat&logo=microsoft-excel&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-yellow.svg)

Customer churn analysis for a bank dataset using SQL and Excel. This project identifies behavioral patterns and key churn indicators to help retain customers.

---

## Dataset

| Property | Value |
|----------|-------|
| Source | [Kaggle - Bank Customer Churn](https://www.kaggle.com/datasets/shrutimechlearn/churn-modelling) |
| Records | 10,000 customers |
| Features | 14 columns |
| Target Variable | `exited` (1 = churned, 0 = retained) |

**Features:** `customer_id`, `surname`, `credit_score`, `geography`, `gender`, `age`, `tenure`, `balance`, `num_of_products`, `has_cr_card`, `is_active_member`, `estimated_salary`, `exited`

---

## Key Findings

### Churn Rate by Segment

| Factor | Segment | Churn Rate |
|--------|---------|------------|
| Age | 50+ | 45.45% |
| Products | 4 products | 100.00% |
| Products | 3 products | 82.71% |
| Activity | Passive members | 26.85% |
| Geography | Germany | 32.44% |
| Gender | Female | 25.07% |

### High-Risk Customer Profile

> Customers aged **50+**, **passive**, located in **Germany**, with **1 or 3+ products**

```
Churn Rate: 90.48%  (133 out of 147 customers)
```

---

## Business Recommendations

| # | Recommendation | Target Segment |
|---|---------------|----------------|
| 1 | Launch retention programs | Customers aged 40+ |
| 2 | Personalized engagement campaigns | Passive members |
| 3 | Investigate operations | Germany region |
| 4 | Limit cross-sell to 2 products | Customers with 3-4 products |

---

## SQL Techniques Used

- **Aggregate Functions** — `COUNT`, `SUM`, `AVG`, `ROUND`
- **CASE Statements** — Age group segmentation
- **GROUP BY** — Multi-column grouping
- **Window Functions**
  - `ROW_NUMBER()` — Ranking customers by balance
  - `RANK()` — Top N customers per country
  - `SUM() OVER()` — Running totals
  - `LAG()` — Row-over-row comparison

---

## Project Structure

```
bank-churn-analysis/
├── data/
│   └── Churn_Modelling.csv       # Raw dataset (10,000 records)
├── sql/
│   ├── 01_create_table.sql       # Table schema
│   ├── 02_basic_analysis.sql     # Overview queries
│   ├── 03_churn_analysis.sql     # Churn segmentation
│   ├── 04_window_functions.sql   # Advanced SQL
│   └── 05_export_for_excel.sql   # Export queries
├── excel/
│   └── churn_report.xlsx         # Pivot tables & charts
└── README.md
```

---

## How to Run

**1. Create the database:**
```sql
CREATE DATABASE bank_churn;
```

**2. Run scripts in order:**
```bash
01_create_table.sql       # Create customers table
02_basic_analysis.sql     # Run basic queries
03_churn_analysis.sql     # Run churn analysis
04_window_functions.sql   # Run window function queries
05_export_for_excel.sql   # Export for Excel
```

**3. Import CSV:**
- Right-click `customers` table in pgAdmin → Import/Export
- Select `data/Churn_Modelling.csv`, Header: ON, Delimiter: `,`

**4. Open Excel report:**
- Open `excel/churn_report.xlsx` to view Pivot Tables and charts

---

## Tools

| Tool | Version | Purpose |
|------|---------|---------|
| PostgreSQL | 16 | Database & SQL analysis |
| pgAdmin | 4 | SQL IDE |
| Microsoft Excel | — | Pivot Tables & visualization |

---

## Author

**Zahra Mammadli**
- GitHub: [ZahraMammadli-a](https://github.com/ZahraMammadli-a)

---

## License

MIT
