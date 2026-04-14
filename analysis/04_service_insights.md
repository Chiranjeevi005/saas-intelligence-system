# Service-Based Churn Analysis

## Key Findings
- Fiber optic users:
  - 41.89% churn rate
  - Represents a major portion of churn within high-risk segments (1,297 churned users)
- DSL users: 18.96% churn rate
- No Internet service: 7.40% churn rate

## Interpretation
- Possible mismatch between service expectations and delivery
- May indicate pricing sensitivity or service dissatisfaction among premium Fiber optic customers

## Business Insight
- High-value service segments can still be high-risk if expectations are not met

## Recommendation
- Investigate service quality issues (speed, reliability)
- Improve onboarding and user experience for fiber customers

## Impact
- Reduced churn in high-value segment
- Improved customer satisfaction and retention

## SQL Analysis Results

```text
╭─────────────────┬─────────────┬───────────────┬────────────╮
│ InternetService │ total_users │ churned_users │ churn_rate │
╞═════════════════╪═════════════╪═══════════════╪════════════╡
│ Fiber optic     │        3096 │          1297 │      41.89 │
│ DSL             │        2421 │           459 │      18.96 │
│ No              │        1526 │           113 │        7.4 │
╰─────────────────┴─────────────┴───────────────┴────────────╯
```
