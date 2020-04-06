select
short_date as date,
country_region as country,
confirmed as positive,
recovered,
deaths as deceased
from covid_by_country_v 
where confirmed > 0 or recovered>0
-- where country_region = 'Netherlands'
order by country, short_date