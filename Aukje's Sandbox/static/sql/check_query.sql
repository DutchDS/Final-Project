select * from covid_by_county_v
where country_region = 'US' and us_county like 'St. Louis%' and state = 'MO'
order by us_county, short_date

select * from covid_by_state_v
where country_region = 'US'  and state = 'MO'
order by short_date

select date, state, positive, negative, pending, death, total,  hospitalized, "totalTestResults" as tests 
from tests_and_hospital_data
where state = 'WA'
order by date

-- drop table if exists covid_data
-- truncate table covid_data

-- select * from census_data
-- drop table if exists census_data
-- truncate table census_data

-- select * from age_data
-- drop table if exists age_data
-- truncate table age_data

-- select * from gender_data
-- drop table if exists gender_data
-- truncate table gender_data

-- select * from precondition_data
-- drop table if exists precondition_data
-- truncate table precondition_data

-- select * from individual_case_data
-- drop  table if exists individual_case_data
-- truncate table individual_case_data

-- select * from states_data
-- drop  table if exists states_data
-- truncate table states_data

-- select * from tests_and_hospital_data
-- drop  table if exists tests_and_hospital_data
-- truncate table tests_and_hospital_data