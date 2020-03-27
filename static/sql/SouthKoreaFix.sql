-- *******************************************************************************************
-- Fix South Korea different names used over time
UPDATE covid_data_0
SET country_region = 'Korea, South'
WHERE country_region = 'South Korea';
UPDATE covid_data_1
SET country_region = 'Korea, South'
WHERE country_region = 'South Korea';
UPDATE covid_data_2
SET country_region = 'Korea, South'
WHERE country_region = 'South Korea';
UPDATE covid_data_3
SET country_region = 'Korea, South'
WHERE country_region = 'Republic of Korea';