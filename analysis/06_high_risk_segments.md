# High-Risk Segment Identification

## Key Finding
- Highest-risk segment identified:

  Month-to-month + Fiber optic + Electronic check

  - Users: 1,307
  - Churn Rate: 60.37%
  - Largest contributor to total churn (789/1,869 churned users)

## Interpretation
- Combination of:
  - Low commitment (monthly plan)
  - High expectations (fiber service)
  - Low friction exit (manual payment via electronic check)

- Creates a perfect churn-prone profile

## Business Insight
- Churn is driven by multi-factor interaction, not a single variable

## Priority Decision
- Focus on segments with highest churn volume, not just highest churn rate

## Recommended Actions
- Convert users to annual contracts
- Promote auto-payment adoption
- Target retention campaigns for this segment

## Expected Impact
- Significant reduction in churn volume
- Improvement in LTV and revenue stability
- Better unit economics (LTV:CAC ratio)

## Next Step
- Build churn prediction logic to proactively identify high-risk users

## SQL Analysis Results

```text
╭────────────────┬─────────────────┬───────────────────────────┬─────────────┬───────────────┬────────────╮
│    Contract    │ InternetService │      payment_method       │ total_users │ churned_users │ churn_rate │
╞════════════════╪═════════════════╪═══════════════════════════╪═════════════╪═══════════════╪════════════╡
│ Month-to-month │ Fiber optic     │ Electronic check          │        1307 │           789 │      60.37 │
│ Month-to-month │ Fiber optic     │ Mailed check              │         201 │           102 │      50.75 │
│ Month-to-month │ Fiber optic     │ Bank transfer (automatic) │         327 │           149 │      45.57 │
│ Month-to-month │ Fiber optic     │ Credit card (automatic)   │         293 │           122 │      41.64 │
│ Month-to-month │ DSL             │ Electronic check          │         474 │           192 │      40.51 │
│ Month-to-month │ DSL             │ Mailed check              │         367 │           113 │      30.79 │
│ Month-to-month │ DSL             │ Credit card (automatic)   │         185 │            50 │      27.03 │
│ Month-to-month │ No              │ Mailed check              │         325 │            67 │      20.62 │
│ Month-to-month │ No              │ Bank transfer (automatic) │          65 │            13 │       20.0 │
│ Month-to-month │ DSL             │ Bank transfer (automatic) │         197 │            39 │       19.8 │
│ Month-to-month │ No              │ Electronic check          │          69 │            13 │      18.84 │
│ Month-to-month │ No              │ Credit card (automatic)   │          65 │             6 │       9.23 │
╰────────────────┴─────────────────┴───────────────────────────┴─────────────┴───────────────┴────────────╯
```
