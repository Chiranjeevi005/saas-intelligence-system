# Data Summary

## Dataset Overview
- Total Users: 7,043
- Data Source: Customer churn dataset (subscription-based model)
- Key Features: Contract type, Internet service, Payment method, Churn status

## Data Quality Checks
- Removed records with missing churn values
- Standardized categorical fields (e.g., PaymentMethod using TRIM)
- Verified consistency between churned (1,869) and active (5,174) user counts

## Key Observations
- Dataset is balanced enough for segmentation analysis
- Contains sufficient behavioral and subscription features for churn analysis

## Business Relevance
- Dataset reflects a typical subscription model with recurring revenue
- Suitable for analyzing retention, churn drivers, and unit economics

## Next Step
- Perform overall churn analysis to establish baseline risk level

## SQL Validation Results

```text
╭─────────────┬───────────────┬──────────────╮
│ total_users │ churned_users │ active_users │
╞═════════════╪═══════════════╪══════════════╡
│        7043 │          1869 │         5174 │
╰─────────────┴───────────────┴──────────────╯
```
