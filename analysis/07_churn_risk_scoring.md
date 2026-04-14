# Churn Risk Scoring Model

## Objective
To proactively identify users at high risk of churn using a rule-based scoring model built on key behavioral features.

---

## Model Approach

A risk scoring system was developed using three primary drivers of churn:

- Contract Type
- Internet Service Type
- Payment Method

### Risk Scoring Logic

```text
╭──────────────────────────┬───────╮
│        Condition         │ Score │
╞══════════════════════════╪═══════╡
│ Month-to-month contract  │  +3   │
│ Fiber optic service      │  +2   │
│ Electronic check payment │  +2   │
╰──────────────────────────┴───────╯
```

**Total Risk Score = Sum of all applicable conditions**

---

## Risk Segmentation

```text
╭─────────────┬─────────────╮
│ Score Range │ Risk Level  │
╞═════════════╪═════════════╡
│    0 – 2    │  Low Risk   │
│    3 – 5    │ Medium Risk │
│     6+      │  High Risk  │
╰─────────────┴─────────────╯
```
## Key Findings

- A significant portion of users fall into the Medium and High-risk segments
- High-risk users represent the intersection of:
  - Low commitment (monthly plans)
  - High expectation service (fiber)
  - Low-friction payment (manual)

- These users are structurally more likely to churn, not randomly

---

## Interpretation

- Churn is not driven by a single factor but by combined behavioral signals
- The model demonstrates that:
  - Contract flexibility increases exit probability
  - Manual payments reduce retention friction
  - Service expectations influence satisfaction and retention

---

## Business Insight

> High-risk users can be identified before churn occurs, enabling proactive intervention rather than reactive analysis.

---

## Recommended Actions

### 1. Target High-Risk Users
- Focus retention campaigns on users with risk score ≥ 6

---

### 2. Reduce Risk Factors
- Convert users to annual contracts
- Encourage auto-payment adoption
- Improve experience for fiber users

---

### 3. Early Warning System
- Use risk score as a trigger for:
  - retention emails
  - discount offers
  - engagement nudges

---

## Business Impact

- Enables proactive churn prevention
- Improves customer lifetime value (LTV)
- Reduces dependency on new customer acquisition
- Strengthens unit economics (LTV:CAC ratio)

---

## Key Takeaway

> A simple rule-based model can effectively identify high-risk users and drive targeted retention strategies without requiring complex machine learning models.

---

## Next Step

- Quantify the financial impact of reducing churn in high-risk segments
- Integrate risk scoring into CAC vs LTV analysis

---

## SQL Analysis Results

```text
╭────────────┬────────────┬────────────╮
│ risk_level │ user_count │ percentage │
╞════════════╪════════════╪════════════╡
│ High       │       1307 │      18.56 │
│ Medium     │       2856 │      40.55 │
│ Low        │       2880 │      40.89 │
╰────────────┴────────────┴────────────╯
```
