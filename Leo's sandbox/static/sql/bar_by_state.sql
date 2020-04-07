select
date,
s.state_name,
(positive - recovered - death - hospitalized_curr) as pos_at_home,
hospitalized_curr,
recovered,
death,
pos_inc as new_cases,
hospital_inc as new_hospitalizations,
death_inc as new_deaths
from covid_data_states c join states_data s on c.state = s.state
where positive > 0 
-- and c.state = 'MO'
-- where date = '2020-04-01'
order by c.state, date
