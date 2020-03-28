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
