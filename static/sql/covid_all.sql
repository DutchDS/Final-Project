select country, state_name, short_date, confirmed, deaths, recovered, 'unknown' as county, 0 as latitude,0 as longitude, 0 as active
from covid_data_phase0
where country = 'US' and state_name = 'Washington'
union 
select country, s.state_name, short_date, confirmed, deaths, recovered, substring(c.state_name, 0, position(', ' in c.state_name)) county, 0 as latitude,0 as longitude, 0 as active
from covid_data_phase1 as c left join states_data as s on substring(c.state_name, position(', ' in c.state_name)+2, 2) = s.state
where country = 'US' and s.state_name = 'Washington'
union 
select country, s.state_name, short_date, confirmed, deaths, recovered,  substring(c.state_name, 0, position(', ' in c.state_name)) county, latitude, longitude, 0 as active  
from covid_data_phase2 as c left join states_data as s on substring(c.state_name, position(', ' in c.state_name)+2, 2) = s.state
where country = 'US' and s.state_name = 'Washington'
union
select country, state_name, short_date, confirmed, deaths, recovered, 'unknown' as county, latitude, longitude, 0 as active  
from covid_data_phase3
where country = 'US' and state_name = 'Washington'
union
select country, state_name, short_date, confirmed, deaths, recovered, county, latitude, longitude, active   
from covid_data_phase4
where country = 'US' and state_name = 'Washington'



order by short_date desc
-- drop table covid_data_phase2

