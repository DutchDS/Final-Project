select
date,
s.state_name,
pos_inc as new_cases,
hospital_inc as new_hospitalizations,
death_inc as new_deaths
from covid_data_states c left join states_data s on c.state = s.state
-- where c.state = 'CA'
order by c.state, date desc