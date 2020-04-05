select
short_date as date,
country_region as country,
confirmed as positive,
recovered,
deaths as deceased
from covid_by_country_v 
-- where country_region = 'Netherlands'
order by country, short_date 