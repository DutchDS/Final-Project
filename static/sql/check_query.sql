-- select * from covid_by_country_v 
-- where country_region = 'Netherlands'
-- order by short_date desc

-- select * from covid_by_state_v 
-- where state = 'MO'
-- order by short_date desc

select * from covid_by_county_v 
where state = 'MO' and us_county='St. Louis'
order by short_date desc
