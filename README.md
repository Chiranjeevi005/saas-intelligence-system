# SaaS Growth Intelligence System

**Capability:** Retention Analytics | Unit Economics | Predictive Risk Modeling

---

# 1. Executive Summary

A B2C subscription-based SaaS company is experiencing growth driven by customer acquisition. While overall unit economics are healthy, specific premium segments are experiencing high churn, creating a significant revenue leak.

This project builds an end-to-end analytics system to:

* Identify churn drivers
* Segment high-risk customers
* Predict churn risk using behavioral signals
* Evaluate financial impact using LTV and CAC

> The analysis reveals that while the business has a positive LTV:CAC ratio (3.51), scaling is being hampered by a 60.37% churn rate in the highest-value customer cohort.

---

# 2. Business Problem

Despite overall positive unit economics, the company faces:

* High churn rates (26.54% overall)
* Concentrated churn in premium Fiber optic segments
* High-friction manual payment methods (45.29% churn)

This results in:

* Inefficient CAC recovery for specific segments
* Revenue instability in high-value user groups
* Sub-optimal LTV for the Month-to-month segment

> The core issue is not acquisition volume, but retention failure in high-value cohorts impacting scalability.

---

# 3. Objectives

* Identify key drivers of customer churn
* Segment users based on behavioral risk patterns
* Develop a rule-based churn prediction model
* Evaluate unit economics (LTV, CAC, ratio)
* Recommend strategies to improve retention and long-term profitability

---

# 4. Dataset & Data Preparation

* Dataset: Customer churn dataset (7,043 users)
* Features used:
  * Contract type
  * Internet service
  * Payment method
  * Tenure
  * Monthly charges

### Data Preparation:
* Cleaned missing churn values
* Standardized categorical fields (e.g., payment method)
* Validated dataset consistency across 7,043 records

---

# 5. Analytical Approach

## 5.1 Churn Analysis
* Overall churn rate calculation (26.54%)
* Segmentation by:
  * Contract type (Month-to-month: 42.71%)
  * Service type (Fiber optic: 41.89%)
  * Payment behavior (Electronic check: 45.29%)

---

## 5.2 Multi-Factor Risk Segmentation
* Combined variables: Contract + Service + Payment
* Identified highest-risk customer segment: Month-to-month + Fiber optic + Electronic check (60.37% churn)

---

## 5.3 Churn Prediction (Rule-Based Model)
Developed a scoring model:

```text
╭──────────────────────────┬───────╮
│        Condition         │ Score │
╞══════════════════════════╪═══════╡
│ Month-to-month contract  │  +3   │
│ Fiber optic service      │  +2   │
│ Electronic check payment │  +2   │
╰──────────────────────────┴───────╯
```

**Risk Levels:**

```text
╭─────────────┬─────────────╮
│ Score Range │ Risk Level  │
╞═════════════╪═════════════╡
│    0 – 2    │  Low Risk   │
│    3 – 5    │ Medium Risk │
│     6+      │  High Risk  │
╰─────────────┴─────────────╯
```

---

## 5.4 Unit Economics Analysis
* LTV = Tenure × Monthly Charges
* CAC = ₹650 (standard business benchmark)

Calculated:
* Average LTV: 2,279.58
* LTV:CAC Ratio: 3.51

---

# 6. Key Insights

## 6.1 Contract Type Drives Churn
* Month-to-month users: 42.71% churn
* Two-year contract: 2.83% churn (strongest retention lever)

---

## 6.2 High-Risk Segment Identified
**Month-to-month + Fiber optic + Electronic check**
* 1,307 users
* 60.37% churn rate
* Largest single contributor to total churn volume

---

## 6.3 Payment Behavior Impact
* Manual payments (electronic check) → 45.29% churn
* Auto-pay methods → ~15.24% - 16.71% churn

---

## 6.4 Churn → LTV Impact
* High churn reduces tenure
* Reduced tenure dramatically lowers LTV (churners avg 1,531.61 vs base avg 2,279.58)

---

# 7. Financial Analysis

```text
╭─────────────┬────────────┬───────────────╮
│   Metric    │   Value    │ Specification │
╞═════════════╪════════════╪═══════════════╡
│     CAC     │    650     │ Assumed       │
│   Avg LTV   │  2279.58   │ DB Calculated │
│   LTV:CAC   │    3.51    │ Unit Outcome  │
╰─────────────┴────────────┴───────────────╯
```

---

## Interpretation
* Business has a healthy unit baseline (LTV:CAC > 3.0)
* Profitability is concentrated in long-term contracts; losses are concentrated in the first 3 months of Fiber optic plans

---

## Scenario Simulation
If churn in the high-risk segment is reduced:
* Average lifetime increases
* Overall LTV increases significantly above 2,279.58
* LTV:CAC ratio approaches 4.0

> Retention improvement is the most efficient path to increasing margins without raising CAC.

---

# 8. Business Recommendations

## 8.1 Retention Strategy (Primary Lever)
* Target high-risk users (Score 6+) proactively
* Deploy high-touch onboarding for new Fiber optic customers

---

## 8.2 Contract Optimization
* Incentivize migration to annual plans via discounting or loyalty rewards
* Position 1-year contracts as the default selection for new users

---

## 8.3 Payment Optimization
* Promote auto-payment adoption during the signup flow
* Offer one-time credits for enrolling in automatic billing

---

## 8.4 Customer Experience
* Investigate service reliability issues specifically for Fiber optic users
* Implement a 90-day "danger zone" engagement program

---

# 9. Business Impact
* Reduced churn in highest-risk cohorts
* Maximized Customer Lifetime Value (LTV)
* Improved scalability of acquisition spend
* Enhanced revenue predictability

---

# 10. Key Takeaways

> Churn is the primary bottleneck preventing a healthy business (3.51 ratio) from becoming an industry leader (4.0+ ratio).

> Modern SaaS success is built on the retention of high-value segments, not just bulk user acquisition.

---

# 11. Tools & Skills Demonstrated
* SQL (data extraction, aggregation, multi-factor segmentation)
* Analytical thinking (unit economics, rule-based risk modeling)
* Business Strategy (LTV/CAC analysis, retention lever identification)
* Data Cleaning & Validation
* C-Suite Decision Reporting

---

# 12. Project Outcome
This project demonstrates the ability to:
* Translate complex behavioral data into actionable executive insights
* Identify high-impact revenue leaks
* Build predictive logic to identify customers at risk
* Connect retention analytics directly to unit economic outcomes

---

# 13. Repository Structure
```plaintext
data/
  ├── raw/
  └── processed/

sql/          (Analysis Queries 01-10)
analysis/     (Business Reports 01-10)
```

---

# 14. Final Statement
> This system provides the foundation for data-driven growth by ensuring the business focuses its resources on the customers that drive the highest long-term value.
