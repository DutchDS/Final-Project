# dependencies
import pandas as pd
import os
from datetime import datetime, timedelta
from sqlalchemy import create_engine
import numpy as np  
import matplotlib.pyplot as plt  
from fbprophet import Prophet
# from fbprophet.plot import plot_plotly, add_changepoints_to_plot

# Create a POSTGRES database with the name 'COVID19_db'
# Replace username:password if it's not set to postgres:postgres
DATABASE_URI = os.environ.get('DATABASE_URL', '') or "postgresql://password:postgres@localhost:5432/COVID19_db"
print(DATABASE_URI)

engine = create_engine(DATABASE_URI)

# import data from SQL:daily US confirmed, hospitalized, death, new_cases, new_hospitalizations, new_deaths
daily_df = pd.read_sql("select distinct date, sum(positive) as confirmed, sum(recovered) as recovered,sum(hospitalized) as hospitalized, sum(death) as death,sum(pos_inc) as new_cases,sum(hospital_inc) as new_hospitalizations,sum(death_inc) as new_deaths from covid_data_states group by date order by date", con=engine)

daily_df['confirmed']=daily_df['confirmed'].astype(int)
daily_df['hospitalized']=daily_df['hospitalized'].astype(int)
daily_df['death']=daily_df['death'].astype(int)
daily_df['new_cases']=daily_df['new_cases'].astype(int)
daily_df['new_hospitalizations']=daily_df['new_hospitalizations'].astype(int)
daily_df['new_deaths']=daily_df['new_deaths'].astype(int)
# Format date column
daily_df['date'] = pd.to_datetime(daily_df['date'])
# set index
daily_df=daily_df.set_index(['date'])
# Create confirmed, hospitalized, death, new cases, new hospitalizations, new deaths DataFrame
confirmed_df=daily_df[['date','confirmed']]
hospitalized_df=daily_df[['date','hospitalized']]
death_df=daily_df[['date','death']]
new_case_df=daily_df[['date','new_cases']]
new_hos_df=daily_df[['date','new_hospitalizations']]
new_death_df=daily_df[['date','new_deaths']]

# Convert DataFrame from long to wide
confirmed_df.columns = ['ds','y']
hospitalized_df.columns = ['ds','y']
death_df.columns = ['ds','y']
new_case_df.columns = ['ds','y']
new_hos_df.columns = ['ds','y']
new_death_df.columns = ['ds','y']
# Create function to generate each prediction plot and save
def forecast(df,i):
    y_label=['Confirmed','New Cases','Hospitalized','New Hospitalizations','Deaths','New Deaths']
    m = Prophet(interval_width=0.95,
    yearly_seasonality=True,seasonality_mode='additive')
    m.fit(df)
    future = m.make_future_dataframe(periods=7)
    forecast = m.predict(future)
    m.plot(forecast)
    plt.ylabel(y_label[i])
    plt.xlabel('Date')
    plt.savefig("static/images/prediction"+str(i)+".jpg")
forecast(confirmed_df,0)
forecast(new_case_df,1)
forecast(hospitalized_df,2)
forecast(new_hos_df,3)
forecast(death_df,4)
forecast(new_death_df,5)