# Cyclistic Bike-Share Analysis  
Course: [Google Data Analytics Capstone: Complete a Case Study](https://www.coursera.org/learn/google-data-analytics-capstone)

---

## 📑 Project Brief
This repository walks through my end-to-end analysis of **Cyclistic’s** 2022 bike-share trips. Acting as a junior data analyst on the marketing team, I followed the six-step data analysis framework—**Ask → Prepare → Process → Analyze → Share → Act**—to uncover how **casual riders** differ from **annual members** and to outline tactics to convert the former into the latter.

---

## 🔗 Quick Links
| Resource | Description |
|----------|-------------|
| **Data source** | Monthly Divvy trip data (Jan – Dec 2022) – [`divvy_tripdata`](https://divvy-tripdata.s3.amazonaws.com/index.html) |
| **SQL notebooks** | [01. Data Combining](), [02. Data Exploration](), [03. Data Cleaning](), [04. Data Analysis]() |

---

## 🏢 Company Context
**Cyclistic** operates ~5,800 bikes and 600 docking stations across Chicago, including adaptive options (reclining, hand-cycle, cargo). Riders choose from:
- **Single-ride / Day pass** → *Casual riders*  
- **Annual membership** → *Members*

Finance teams show memberships are far more profitable. Marketing therefore aims to **convert casual riders into members** by understanding usage patterns.

---

## 1 — Ask  
**Business objective:** Develop data-backed marketing strategies that boost annual subscriptions.  
**Key question (my assignment):** *How do casual riders and members use Cyclistic bikes differently?*

---

## 2 — Prepare  
*Data:* 12 CSV files (`YYYYMM-divvy-tripdata`) totaling **5.6 M trips**. Columns include ride timestamps, start/end stations, bike type, and rider category. Personally identifiable information is absent.

---

## 3 — Process  
Because the dataset exceeds Excel’s row limit, I used **SQLite** to:

1. Upload each monthly CSV as a table (`2022_tripdata` dataset).  
2. Union them into a single `combined_data` table (5,667,717 rows).  
3. Add derived fields:  
   - `ride_length` (minutes)  
   - `day_of_week`  
   - `month`
4. Remove records with impossible durations (<1 min / >24 h) or critical NULLs.  
   **Rows dropped:** 1,375,912 → **Final rows:** 4,291,805.

---

## 4 — Analyze  
**Tools:** SQLite + Tableau

### Rider Mix
- Members: **59.7 %**  
- Casual: **40.3 %**
  
![Dashboard 1](https://github.com/user-attachments/assets/ade60a27-2e5f-4af4-8863-46dce6e9acee)

### Temporal Patterns
| Dimension | Casual riders | Members |
|-----------|---------------|---------|
| **Month** | Peaks May–Sep | Similar seasonality |
| **Day**   | Weekend-heavy | Weekday-heavy |

![Dashboard 2](https://github.com/user-attachments/assets/dd854fb5-d9ec-45b4-9898-2ff6566737f3)

### Trip Duration
Casual rides average **2×** the length of member rides; member durations stay consistent year-round.

---

## 5 — Share  
Interactive Tableau dashboards illustrate:
- Bike type usage
- Monthly / weekly ride volumes

---

## 6 — Act | Recommendations
1. **Seasonal campaigns:** Promote membership at major tourist & recreation areas each spring/summer.  
2. **Weekend pass-to-membership offer:** Discount annual plans for riders who buy multiple weekend passes.  
3. **Long-ride incentives:** Provide time-based credits to make extended trips cheaper for members.  
4. **Targeted digital ads:** Geofence popular casual-rider stations; retarget users who end ≥2 rides there.

---
