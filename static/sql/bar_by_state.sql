select
date,
s.state_name,
-- positive,
-- (positive - recovered - death) as pos_remaining,
(positive - recovered - death - hospitalized_curr) as pos_at_home,
-- hospitalized_curr as in_hospital,
-- hospitalized_curr-"in_ICU_curr"  as in_hosp_not_ICU,
-- "in_ICU_curr" as in_hosp_ICU,
hospitalized_curr,
recovered,
death
-- hospitalized,
-- ,on_vent_curr as on_vent
from covid_data_states c left join states_data s on c.state = s.state
-- where c.state = 'CA'
order by c.state, date desc
