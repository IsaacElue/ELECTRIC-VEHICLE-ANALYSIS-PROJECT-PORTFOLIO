CREATE DATABASE ev_data;
USE ev_data;
SHOW TABLES;
SELECT * FROM `electric_vehicles_spec_2025.csv`
LIMIT 10;
RENAME TABLE `electric_vehicles_spec_2025.csv` TO ev_specs_2025;
SELECT * FROM ev_specs_2025
LIMIT 10;
-- CHANGED THE TITLE OF THE TABLRE


-- EDA EXPLORATION

SELECT * FROM ev_specs_2025;


-- BASIC OVERVIEW
-- LETS LOOK AT ALL DISTING CAR MODELS FROM THE TABLE
SELECT DISTINCT brand FROM ev_specs_2025;

-- NULL COUNT PER COLUMN
SELECT 
  SUM(CASE WHEN model IS NULL THEN 1 ELSE 0 END) AS missing_model,
  SUM(CASE WHEN segment IS NULL THEN 1 ELSE 0 END) AS missing_segment
FROM ev_specs_2025;

-- DESCRIPTIVE STATISTICS
SELECT
MIN(top_speed_kmh) AS min_speed,
MAX(top_speed_kmh) AS max_speed,
AVG(top_speed_kmh) AS avg_speed
FROM ev_specs_2025;

-- CATEGORICAL DISTRIBUTION
-- lets see how many cars per drivetrain
SELECT drivetrain, COUNT(*) AS total_cars
FROM ev_specs_2025
GROUP BY drivetrain
ORDER BY total_cars ASC;

-- top 5 cars by brand
SELECT brand, COUNT(*) AS model_number
FROM ev_specs_2025
GROUP BY brand
ORDER BY model_number DESC
LIMIT 5;

-- average efficiency by drivetrain
SELECT drivetrain, ROUND(avg(efficiency_wh_per_km)) AS avg_efficiency
FROM ev_specs_2025
GROUP BY drivetrain;

-- cars with really high speeds
SELECT brand, model, top_speed_kmh
FROM ev_specs_2025
WHERE top_speed_kmh > 300;

-- ranges of cars
select brand, expected_range_km
from ev_specs_2025;

-- find the fastest and slowest car
select brand, top_speed_kmh
from ev_specs_2025
ORDER BY top_speed_kmh ASC LIMIT 1;

select brand, top_speed_kmh
from ev_specs_2025
ORDER BY top_speed_kmh DESC LIMIT 1;

SELECT
  segment,
  brand,
  model,
  ROUND(expected_range_km / battery_capacity_kWh, 2) AS km_per_hour
FROM ev_specs_2025
ORDER BY segment, km_per_hour DESC;


-- Which drivetrain layout (FWD, RWD, AWD/4WD) is most energy-efficient?
select drivetrain, COUNT(*) AS models, ROUND(AVG(efficiency_wh_per_km),1) AS avg_wh_per_km
from ev_specs_2025 
group by drivetrain
order by avg_wh_per_km;

-- Why it matters: Efficiency (Wh/km) is a headline KPI in EV comparisons and feeds TCO models.


-- Among SUVs, which models maximise usable space?
SELECT brand, model, seats, cargo_volume_l
FROM ev_specs_2025
WHERE car_body_type = 'SUV'
ORDER BY cargo_volume_l DESC
LIMIT 5;

-- Which models pair high-power DC fast-charging with large batteries
SELECT
    brand,
    model,
    battery_capacity_kWh,
    fast_charging_power_kw_dc
FROM ev_specs_2025
WHERE battery_capacity_kWh >= 80          -- sizeable pack
  AND fast_charging_power_kw_dc >= 150    -- modern high-rate systems
ORDER BY fast_charging_power_kw_dc DESC, battery_capacity_kWh DESC;



-- Average range by segment
SELECT
  segment,
  COUNT(*) AS model_count,
  ROUND(AVG(expected_range_km),1) AS avg_range_km
FROM ev_specs_2025
GROUP BY segment
ORDER BY avg_range_km DESC;
