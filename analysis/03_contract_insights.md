# Contract-Based Churn Analysis

## Key Findings
- Month-to-month users:
  - 42.71% churn rate (highest)
  - Largest customer segment (3,875 users)

- One-year contract:
  - 11.27% churn rate

- Two-year contract:
  - 2.83% churn rate (lowest)

## Interpretation
- Short-term contracts significantly increase churn risk
- Long-term contracts improve retention by increasing customer commitment

## Business Insight
- Contract duration is the strongest retention lever in the dataset

## Recommendation
- Encourage migration from month-to-month to long-term plans
- Offer pricing incentives or bundled discounts for annual contracts

## Impact
- Increased retention
- Higher customer lifetime value (LTV)
- More predictable revenue stream

## SQL Analysis Results

```text
╭────────────────┬─────────────┬───────────────┬────────────╮
│    Contract    │ total_users │ churned_users │ churn_rate │
╞════════════════╪═════════════╪═══════════════╪════════════╡
│ Month-to-month │        3875 │          1655 │      42.71 │
│ One year       │        1473 │           166 │      11.27 │
│ Two year       │        1695 │            48 │       2.83 │
╰────────────────┴─────────────┴───────────────┴────────────╯
```
