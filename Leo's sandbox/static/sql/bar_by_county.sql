select 
short_date as date,
state_name as state,
us_county as county,
confirmed as positive,
recovered,
deaths as deceased
from covid_by_county_v
where (confirmed > 0 or recovered > 0)
-- and state_name = 'Missouri'
-- and us_county = 'St. Louis'
order by date, state_name, county