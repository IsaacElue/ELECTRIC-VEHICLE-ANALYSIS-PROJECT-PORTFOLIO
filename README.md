# Electric Vehicle Data Analytics Dashboard – 2025
![Screenshot (108)](https://github.com/user-attachments/assets/373a8ba4-abca-4c95-9574-2fe044e326cd)

![Screenshot (94)](https://github.com/user-attachments/assets/7b4c8bcd-49fc-4b4b-aeca-4dc6a6e16f00)

## Full Project: From Raw CSV → SQL EDA → Power BI Business Insights

### Project Overview
This data analytics project portfolio explores a 2025 electric vehicle dataset to uncover market insights, customer priorities, and performance trends. It simulates a real-world business request to guide both corporate EV strategy and consumer decision-making.

# Project Stack
### Tools, Skills and Purpose
1. MySQL - Data exploration, analytical queries
2. Power BI - Dashboarding and interactive visuals
3. Excel / Power Query - Quick data cleaning and formatting
4. Data Storytelling - Translating analysis into business impact
5. GitHub - Portfolio publishing (optional)

# Data Cleaning & Preparation
The dataset included 475 EV models across multiple brands with popular categories such as:

- battery_capacity_kWh
- expected_range_km
- efficiency_wh_per_km
- fast_charging_power_kw_dc
- segment, car_body_type and drivetrain

Steps taken:

Removed unnecessary and flagged rows with nulls in critical fields (like range or battery)

Renamed long column names for clarity and BI compatibility

Standardized categorical values (e.g., segment names, drivetrain labels)


# Exploratory Data Analysis with SQL
Using MySQL, I answered key business and product questions:

🔹 A. Which vehicle segments offer the longest average real-world range?
Found that Luxury and Executive segments consistently outperform compact classes.

🔹 B. How does battery size impact range?
Built a scatter plot of battery_capacity_kWh vs expected_range_km with a clear positive trend with diminishing returns after ~90 kWh

🔹 C. Which drivetrain types are most efficient?
AWD had the highest total consumption, while RWD was more efficient.

🔹 D. Which brands dominate the EV market?
Top 5 brands: Mercedes-Benz, Audi, Volkswagen, Porsche, and Ford

# Interactive Power BI Dashboard
### Dashboard Features:
Slicers: Segment, Drivetrain, Brand, Car Body Type

KPI Cards: Avg Range, Total EVs, Median Battery Capacity

Visuals: Scatter plots, bar charts, donut charts, and detailed tables

📍 Dashboard Insights
1. Average Range by Segment
High-end classes (Luxury, Executive) offer ~550–600 km on average

![average range by segment](https://github.com/user-attachments/assets/f818e5de-373d-4e6f-a128-aba617b12910)


3. Battery Size vs Range
Most efficient EVs squeeze 6–8 km per kWh; larger batteries don’t always mean proportionally longer range

![range by battery size](https://github.com/user-attachments/assets/9324c76c-1961-4fed-924e-24a14ae5c35f)


5. Energy Efficiency by Drivetrain
AWD consumes the most; FWD and RWD are more balanced for city/commuter EVs

![most energy efficien drivetrains](https://github.com/user-attachments/assets/b84394e8-0a8d-4f41-9804-a6e2e6dc6993)


7. Brand Dominance
Mercedes-Benz leads the market with 40+ distinct EV models

![brand dominating ev market](https://github.com/user-attachments/assets/8248568d-8ea3-40ac-bf60-2e06ea630722)


6. Family SUVs with Max Cargo Space
EVs best suited for families with 5+ seats and large cargo areas
![largest cargo suv](https://github.com/user-attachments/assets/c737e31b-2ef0-4f1f-9b17-6bfa208d247a)


# Summary of Key Insights
Luxury and Executive EVs dominate real-world range

Battery size correlates with range, but with diminishing returns

AWD drivetrains use the most energy

Mercedes-Benz, Audi, and VW lead the EV model count

Family SUVs with large cargo volume can be easily identified via filters

# What I Learned
### Technical:
Learning how to write analytical SQL queries with GROUP BY, CASE and JOINS

How to clean and prepare real-world data for BI tools

Best practices for using Power BI visuals (KPI cards, scatter, slicers)

### Analytical Thinking:
How to formulate questions that deliver business value

The importance of combining efficiency, capacity, and performance to define “good EVs”

How visual storytelling helps different audiences

### Communication:
Presenting data clearly with slicers and clean layout

Prioritizing what matters most for each persona: customer vs business

Turning numbers into actionable recommendations

