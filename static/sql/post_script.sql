-- *******************************************************************************************
-- Add first case date to states_date
with new_values as (
	select min(short_date) as first_date, s.state
	from covid_by_state_v c join states_data s on c.state = s.state
	group by s.state 
	)
update states_data as s
  set first_case_date = nv.first_date
from new_values nv
where nv.state = s.state;
-- *******************************************************************************************
-- Add latitude and longituden to states_date
with new_values as (
select province_state, latitude, longitude from covid_data_3 where country_region = 'US' and short_date = '2020-03-21'
	)
update states_data as s
  set latitude = nv.latitude,
  		longitude = nv.longitude
from new_values nv
where nv.province_state = s.state_name;
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