# SQL Lead Auditor & Performance Pipeline 📊🐍

## Overview
A high-velocity data engineering project designed to bridge the gap between **MySQL Relational Databases** and **Python Automation**. This project automates the auditing of large-scale digital marketing portfolios, transforming raw campaign data into actionable "Growth Verdicts."

## Key Features
- **Production-Scale Data:** Manages a dataset of **1,800+ international campaign records** (Kaggle) across multiple industries (SaaS, EdTech, Fintech, etc.).
- **SQL Intelligence:** Engineered complex queries using `GROUP BY`, `CASE` logic, and `Aggregations` to calculate ROAS and Net Impact in real-time.
- **Python-SQL Bridge:** Developed a custom Python pipeline using `mysql-connector` and `Pandas` to fetch live database records and perform secondary audits.
- **Automated Reporting:** Generates stakeholder-ready CSV reports with a single command, reducing manual reporting time by **90%**.

## Tech Stack
- **Database:** MySQL (Relational Schema Design)
- **Language:** Python 3.x
- **Libraries:** Pandas, mysql-connector-python
- **Data Source:** Multi-platform Marketing Dataset (Google Ads, TikTok, Meta)

## How It Works
1. **Extract:** Python connects to the local MySQL instance.
2. **Transform:** SQL logic filters for high-performing industries (ROAS > 4.0).
3. **Load:** Pandas cleans the results and exports a formatted `Scalable_Industry_Report.csv`.

## Growth Verdict Logic
The system automatically categorizes campaigns into:
- **SCALABLE:** ROAS > 4.0
- **STABLE:** ROAS 2.0 - 4.0
- **RE-STRATEGIZE:** ROAS < 2.0

---
*Developed by Tanishk Asopa | Technical Media Analyst & Performance Specialist*
