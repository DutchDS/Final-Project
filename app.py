# import necessary libraries
import os
from flask import (
    Flask,
    render_template,
    jsonify,
    request,
    redirect)
import pandas as pd
from sqlalchemy import create_engine
from flask_sqlalchemy import SQLAlchemy
import decimal
import flask.json
from run_models import model1, model2, model3, model4
# import load_db

app = Flask(__name__)

DATABASE_URI = os.environ.get('DATABASE_URL', '') or "postgresql://postgres:postgres@localhost:5432/COVID19_db"
print(DATABASE_URI)

engine = create_engine(DATABASE_URI)

app.config['SQLALCHEMY_DATABASE_URI'] = DATABASE_URI 

db = SQLAlchemy(app)

@app.route("/")
def world():

    return render_template("Covid_Landing.html")

@app.route("/home")
def home():

    return render_template("Covid_Home.html")

@app.route("/team")
def team():
    return render_template("Covid_About.html")

@app.route("/risk")
def risk(): 
  
    return render_template("Covid_Risk.html")

@app.route("/viz")
def viz(): 
  
    return render_template("Covid_Home.html")

@app.route("/charts")
def charts(): 
  
    return render_template("Covid_Charts.html")

@app.route("/api/v1.0/<model>/<selFeatures>")
def model(model, selFeatures): 
    
    result=""
    if model == 'model1':
        result = model1(selFeatures)
    elif model == 'model2':
        result = model2(selFeatures)
    elif model == 'model3':
        result = model3(selFeatures)
    else:
         result = model4(selFeatures)
    # print(result)
    # print(str(result[0]))
    # return jsonify(str(result[0]))

    print(result)
    x = (str(result[0]))
    print(x)
    return x


@app.route("/api/v1.0/bar_states")
def bar_states(): 
    result_set = []
    
    query_str = open('static/sql/bar_by_state.sql')
    query_text = ""
    
    for text in query_str:
        query_text = query_text + text
        
    result_set = engine.execute(query_text)
    
    all_results = []
    for date, state, pos_at_home, hospitalized_curr, recovered, death, new_cases, new_hospitalizations, new_deaths in result_set:
        results_dict = {}
        results_dict["date"] = date
        results_dict["state"] = state
        results_dict["pos_at_home"] = pos_at_home
        results_dict["hospitalized_curr"] = hospitalized_curr
        results_dict["recovered"] = recovered
        results_dict["death"] = death
        results_dict["new_cases"] = new_cases
        results_dict["new_hospitalizations"] = new_hospitalizations
        results_dict["new_deaths"] = new_deaths
        all_results.append(results_dict)

    return jsonify(all_results)