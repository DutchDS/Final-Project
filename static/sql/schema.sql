DROP TABLE IF EXISTS age_data;

CREATE TABLE age_data
(
	id serial not null,		
	age text COLLATE pg_catalog."default",
    pct_deaths_confirmed double precision,
    pct_deaths_all double precision,
	CONSTRAINT "pk_age_data" PRIMARY KEY (
        "id"
     )  
);
-- **********************************************************************
DROP TABLE IF EXISTS  census_data;

CREATE TABLE census_data
(
	id serial not null,	
    "TractId" bigint,
    "State" text COLLATE pg_catalog."default",
    "County" text COLLATE pg_catalog."default",
    "TotalPop" bigint,
    "Men" bigint,
    "Women" bigint,
    "Hispanic" double precision,
    "White" double precision,
    "Black" double precision,
    "Native" double precision,
    "Asian" double precision,
    "Pacific" double precision,
    "VotingAgeCitizen" bigint,
    "Income" double precision,
    "IncomeErr" double precision,
    "IncomePerCap" double precision,
    "IncomePerCapErr" double precision,
    "Poverty" double precision,
    "ChildPoverty" double precision,
    "Professional" double precision,
    "Service" double precision,
    "Office" double precision,
    "Construction" double precision,
    "Production" double precision,
    "Drive" double precision,
    "Carpool" double precision,
    "Transit" double precision,
    "Walk" double precision,
    "OtherTransp" double precision,
    "WorkAtHome" double precision,
    "MeanCommute" double precision,
    "Employed" bigint,
    "PrivateWork" double precision,
    "PublicWork" double precision,
    "SelfEmployed" double precision,
    "FamilyWork" double precision,
    "Unemployment" double precision,
	CONSTRAINT "pk_census_data" PRIMARY KEY (
        "id"
     )
);
-- ******************************************************************************
DROP TABLE IF EXISTS covid_data_states;

CREATE TABLE covid_data_states
(
	id serial not null,	
    date date,
    state text COLLATE pg_catalog."default",
    positive bigint,
    negative bigint,
    pending bigint,
    hospitalized bigint,
    death bigint,
    dontuse_total bigint,
    check_date date,
    total_tests bigint,
    fips bigint,
    death_inc bigint,
    hospital_inc bigint,
    neg_inc bigint,
    pos_inc bigint,
    tot_tests_inc bigint,
	CONSTRAINT "pk_covid_data_states" PRIMARY KEY (
        "id"
     )
);
-- **********************************************************************
DROP TABLE IF EXISTS covid_data_0;

CREATE TABLE covid_data_0
(
	id serial not null,	
    province_state text COLLATE pg_catalog."default",
    country_region text COLLATE pg_catalog."default",
    confirmed integer,
    deaths integer,
    recovered integer,
    active bigint,
    short_date date,
    latitude double precision,
    longitude double precision,
    us_county text COLLATE pg_catalog."default",
	CONSTRAINT "pk_covid_data_0" PRIMARY KEY (
        "id"
     )
);

DROP TABLE IF EXISTS covid_data_1;

CREATE TABLE covid_data_1
(
	id serial not null,	
    province_state text COLLATE pg_catalog."default",
    country_region text COLLATE pg_catalog."default",
    confirmed integer,
    deaths integer,
    recovered integer,
    active bigint,
    short_date date,
    latitude double precision,
    longitude double precision,
    us_county text COLLATE pg_catalog."default",
	CONSTRAINT "pk_covid_data_1" PRIMARY KEY (
        "id"
     )
);

DROP TABLE IF EXISTS covid_data_2;

CREATE TABLE covid_data_2
(
	id serial not null,	
    province_state text COLLATE pg_catalog."default",
    country_region text COLLATE pg_catalog."default",
    confirmed integer,
    deaths integer,
    recovered integer,
    active bigint,
    short_date date,
    latitude double precision,
    longitude double precision,
    us_county text COLLATE pg_catalog."default",
	CONSTRAINT "pk_covid_data_2" PRIMARY KEY (
        "id"
     )
);

DROP TABLE IF EXISTS covid_data_3;

CREATE TABLE covid_data_3
(
	id serial not null,	
    province_state text COLLATE pg_catalog."default",
    country_region text COLLATE pg_catalog."default",
    confirmed integer,
    deaths integer,
    recovered integer,
    active bigint,
    short_date date,
    latitude double precision,
    longitude double precision,
    us_county text COLLATE pg_catalog."default",
	CONSTRAINT "pk_covid_data_3" PRIMARY KEY (
        "id"
     )
);

DROP TABLE IF EXISTS covid_data_4;

CREATE TABLE covid_data_4
(
	id serial not null,	
    province_state text COLLATE pg_catalog."default",
    country_region text COLLATE pg_catalog."default",
    confirmed integer,
    deaths integer,
    recovered integer,
    active bigint,
    short_date date,
    latitude double precision,
    longitude double precision,
    us_county text COLLATE pg_catalog."default",
	CONSTRAINT "pk_covid_data_4" PRIMARY KEY (
        "id"
     )
);
-- **********************************************************************
DROP TABLE IF EXISTS gender_data;

CREATE TABLE gender_data
(
	id serial not null,	
    gender text COLLATE pg_catalog."default",
    pct_deaths_confirmed double precision,
	CONSTRAINT "pk_gender_data" PRIMARY KEY (
        "id"
     )
);
-- **********************************************************************
DROP TABLE IF EXISTS individual_case_data;

CREATE TABLE individual_case_data
(
	id serial not null,	
    "ID" double precision,
    age text COLLATE pg_catalog."default",
    sex text COLLATE pg_catalog."default",
    city text COLLATE pg_catalog."default",
    province text COLLATE pg_catalog."default",
    country text COLLATE pg_catalog."default",
    wuhan_1_or_0 double precision,
    latitude double precision,
    longitude double precision,
    geo_resolution text COLLATE pg_catalog."default",
    date_onset_symptoms text COLLATE pg_catalog."default",
    date_admission_hospital text COLLATE pg_catalog."default",
    date_confirmation text COLLATE pg_catalog."default",
    symptoms text COLLATE pg_catalog."default",
    "lives_in_Wuhan" text COLLATE pg_catalog."default",
    travel_history_dates text COLLATE pg_catalog."default",
    travel_history_location text COLLATE pg_catalog."default",
    reported_market_exposure text COLLATE pg_catalog."default",
    additional_information text COLLATE pg_catalog."default",
    chronic_disease_binary double precision,
    chronic_disease text COLLATE pg_catalog."default",
    source text COLLATE pg_catalog."default",
    sequence_available text COLLATE pg_catalog."default",
    outcome text COLLATE pg_catalog."default",
    date_death_or_discharge text COLLATE pg_catalog."default",
    notes_for_discussion text COLLATE pg_catalog."default",
    location text COLLATE pg_catalog."default",
    admin3 text COLLATE pg_catalog."default",
    admin2 text COLLATE pg_catalog."default",
    admin1 text COLLATE pg_catalog."default",
    country_new text COLLATE pg_catalog."default",
    admin_id text COLLATE pg_catalog."default",
    data_moderator_initials text COLLATE pg_catalog."default",
    "Unnamed: 33" double precision,
    "Unnamed: 34" double precision,
    "Unnamed: 35" double precision,
    "Unnamed: 36" double precision,
    "Unnamed: 37" double precision,
    "Unnamed: 38" double precision,
    "Unnamed: 39" double precision,
    "Unnamed: 40" double precision,
    "Unnamed: 41" double precision,
    "Unnamed: 42" double precision,
    "Unnamed: 43" double precision,
    "Unnamed: 44" double precision,
	CONSTRAINT "pk_individual_case_data" PRIMARY KEY (
        "id"
     )
);
-- **********************************************************************
DROP TABLE IF EXISTS precondition_data;

CREATE TABLE precondition_data
(	id serial not null,	
    precondition text COLLATE pg_catalog."default",
    pct_deaths_confirmed double precision,
    pct_deaths_all double precision,
 	CONSTRAINT "pk_precondition_data" PRIMARY KEY (
        "id"
     )
);
-- **********************************************************************
DROP TABLE IF EXISTS states_data;

CREATE TABLE states_data
(
	id serial not null,	
    "Unnamed: 0" bigint,
    state_name text COLLATE pg_catalog."default",
    state text COLLATE pg_catalog."default",
    emergency_date text COLLATE pg_catalog."default",
    first_case_date text COLLATE pg_catalog."default",
	latitude double precision,
    longitude double precision,
	 CONSTRAINT "pk_states_data" PRIMARY KEY (
        "id"
     )
);
-- **********************************************************************
DROP TABLE IF EXISTS tests_and_hospital_data;

CREATE TABLE tests_and_hospital_data
(
	id serial not null,	
    date date,
    state text COLLATE pg_catalog."default",
    positive double precision,
    negative double precision,
    pending double precision,
    hospitalized double precision,
    death double precision,
    total bigint,
    "dateChecked" date,
    "totalTestResults" double precision,
    "deathIncrease" double precision,
    "hospitalizedIncrease" double precision,
    "negativeIncrease" double precision,
    "positiveIncrease" double precision,
    "totalTestResultsIncrease" double precision,
	CONSTRAINT "pk_tests_and_hospital_data" PRIMARY KEY (
        "id"
     )
);

-- **********************************************************************
DROP VIEW IF EXISTS covid_by_county_v;
create view covid_by_county_v as (
select country_region, confirmed, deaths, recovered, active, short_date,  s.state_name, s.state, us_county, s.emergency_date, s.first_case_date
from covid_data_4 join states_data s on province_state = s.state_name
order by short_date
);
-- ************************************************************************************************
DROP VIEW IF EXISTS covid_by_state_v;
create view covid_by_state_v as (
select country_region, confirmed, deaths, recovered, (confirmed - deaths - recovered) as active, short_date, s.state_name, s.state, s.emergency_date, s.first_case_date, s.latitude, s.longitude
from covid_data_0 join states_data s on province_state = s.state_name
union
select country_region, sum(confirmed), sum(deaths), sum(recovered), (sum(confirmed) -sum(deaths) - sum(recovered)) as active, short_date, s.state_name, s.state, s.emergency_date, s.first_case_date, s.latitude, s.longitude 
from covid_data_1 join states_data s on substring(province_state, position(', ' in province_state)+2, 2) = s.state
group by substring(province_state, position(', ' in province_state)+2, 2) , country_region, short_date, s.state_name, s.state, s.emergency_date, s.first_case_date, s.latitude, s.longitude
union
select country_region, sum(confirmed), sum(deaths), sum(recovered), (sum(confirmed) -sum(deaths) - sum(recovered)) as active, short_date, s.state_name, s.state, s.emergency_date, s.first_case_date, s.latitude, s.longitude 
from covid_data_2 join states_data s on substring(province_state, position(', ' in province_state)+2, 2) = s.state
group by substring(province_state, position(', ' in province_state)+2, 2) , country_region, short_date, s.state_name, s.state, s.emergency_date, s.first_case_date, s.latitude, s.longitude
union
select country_region, confirmed, deaths, recovered, (confirmed - deaths - recovered) as active, short_date, s.state_name, s.state, s.emergency_date, s.first_case_date, s.latitude, s.longitude 
from covid_data_3 join states_data s on province_state = s.state_name
union
select country_region, sum(confirmed), sum(deaths), sum(recovered),(sum(confirmed) -sum(deaths) - sum(recovered)) as active, short_date,  s.state_name, s.state, s.emergency_date, s.first_case_date, s.latitude, s.longitude
from covid_data_4 join states_data s on province_state = s.state_name
group by province_state,country_region, short_date,  s.state_name, s.state, s.emergency_date, s.first_case_date, s.latitude, s.longitude
order by short_date);
-- *********************************************************************************************************
DROP VIEW IF EXISTS covid_by_country_v;
create view covid_by_country_v as (
select country_region, sum(confirmed) as confirmed, sum(deaths) as deaths, sum(recovered) as recovered, (sum(confirmed)-sum(deaths)-sum(recovered)) as active, short_date
from covid_data_0
group by country_region, short_date
union
select country_region, sum(confirmed) as confirmed, sum(deaths) as deaths,  sum(recovered) as recovered, (sum(confirmed)-sum(deaths)-sum(recovered)) as active, short_date 
from covid_data_1
group by country_region, short_date
union
select country_region, sum(confirmed) as confirmed, sum(deaths) as deaths, sum(recovered) as recovered, (sum(confirmed)-sum(deaths)-sum(recovered)) as active, short_date 
from covid_data_2 
group by country_region, short_date
union
select country_region, sum(confirmed) as confirmed, sum(deaths) as deaths, sum(recovered) as recovered, (sum(confirmed)-sum(deaths)-sum(recovered)) as active, short_date 
from covid_data_3
group by country_region, short_date
union
select country_region, sum(confirmed) as confirmed, sum(deaths) as deaths, sum(recovered) as recovered, (sum(confirmed)-sum(deaths)-sum(recovered)) as active,short_date
from covid_data_4
group by country_region, short_date
order by short_date
);
-- *******************************************************************
DROP VIEW IF EXISTS census_data_by_state_v;
CREATE VIEW census_data_by_state_v as (
select 
"State" as state, sum("TotalPop") as total_pop, 
"Men" as men, "Women" as women,
"White" as white, "Black" as black, "Native" as native, "Hispanic" as hispanic, "Pacific" as pacific
from census_data
group by "State", men, women, white, black, native, hispanic, pacific
	);
-- ******************************************************************************
DROP VIEW IF EXISTS census_data_by_county_v CASCADE;

create view census_data_by_county_v as (
select 
"State" as state, "County" as county, 
sum("TotalPop") as total_pop, sum("Men") as men, sum("Women") as women, 
sum(round("Hispanic"*"TotalPop"/100)) as hispanic, 
sum(round("White"*"TotalPop"/100)) as white, 
sum(round("Black"*"TotalPop"/100)) as black, 
sum(round("Pacific"*"TotalPop"/100)) as pacific, 
sum(round("Native"*"TotalPop"/100)) as native  
from census_data 
-- where "State" = 'Missouri' and "County" = 'St. Louis County'
group by "State", "County"
	);
-- *****************************************************************************************	

DROP VIEW IF EXISTS covid_and_census_by_state_v;

create view covid_and_census_by_state_v as (
select 
	date, s.state_name, s.state, s.emergency_date, s.first_case_date, 
	positive, negative, pending, hospitalized, death, (positive + hospitalized + death) as total_cases, total_tests, death_inc, hospital_inc, neg_inc, pos_inc, tot_tests_inc, 
	s.latitude, s.longitude,
	cd.total_pop, cd.men, cd.women, cd.white, cd.black, cd.hispanic, cd.native, cd.pacific
from covid_data_states c 
	join states_data s on c.state = s.state
	left join census_data_by_state_v cd on s.state_name = cd.state 
);
-- *********************************************************************************************
DROP VIEW IF EXISTS covid_and_census_by_county_v;

create view covid_and_census_by_county_v as (
select 
	c.short_date, c.state_name, c.state, c.us_county,
-- 	s.emergency_date, s.first_case_date, 
	c.confirmed, c.recovered, c.deaths, c.active,  
-- 	s.latitude, s.longitude,
	cd.total_pop, cd.men, cd.women, cd.white, cd.black, cd.hispanic, cd.native, cd.pacific
from covid_by_county_v c 
	left join census_data_by_county_v cd on (c.us_county || ' County')= cd.county 
-- where c.state = 'MO' and c.us_county = 'St. Louis'
);
-- ***************************************************************************************
DROP VIEW IF EXISTS case_study_1_v;

CREATE VIEW case_study_1_v as (
SELECT
	id,
	CASE WHEN lower(summary) like '%hospitalized%' THEN 1 ELSE 0 END as hospitalized,
	CASE WHEN (death='1') or (death is not null) THEN 1 ELSE 0 END as death,
    CASE WHEN age BETWEEN 0 AND 39 THEN 2 ELSE 0 END as age_0_39,
    CASE WHEN age BETWEEN 40 AND 49 THEN 4 ELSE 0 END as age_40_49,
    CASE WHEN age BETWEEN 50 AND 59 THEN 13 ELSE 0 END as age_50_59,
    CASE WHEN age BETWEEN 60 AND 69 THEN 36 ELSE 0 END as age_60_69,
	CASE WHEN age BETWEEN 70 AND 79 THEN 80 ELSE 0 END as age_70_79,
    CASE WHEN age >= 80 THEN 148 ELSE 0 END as age_80_up,
	CASE WHEN (gender = 'male' or gender = 'Male') THEN 46 ELSE 0 END as gender_male,
	CASE WHEN (gender = 'female' or gender = 'Female') THEN 28 ELSE 0 END as gender_female,
	CASE WHEN lower(summary) like '%pneumonia%' THEN 1 ELSE 0 END as pneumonia,
	CASE WHEN lower(summary) like '%fever%' THEN 1 ELSE 0 END as fever,
	CASE WHEN lower(summary) like '%cough%' THEN 1 ELSE 0 END as cough,
	CASE WHEN lower(summary) like '%breath%' THEN 1 ELSE 0 END as breath,
	CASE WHEN lower(symptom) like '%fatigue%' THEN 1 ELSE 0 END as fatigue,
	CASE WHEN lower(symptom) like '%diarrhea%' THEN 1 ELSE 0 END as diarrhea,
	CASE WHEN lower(symptom) like '%headache%' THEN 1 ELSE 0 END as headache,
	CASE WHEN country = 'China' THEN 1 ELSE 0 END as from_china,
	"visiting Wuhan" as visit_wuhan,
	"from Wuhan" as from_wuhan
FROM individual_case_data	
	);
