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
# import load_db

app = Flask(__name__)

DATABASE_URI = os.environ.get('DATABASE_URL', '') or "postgresql://postgres:postgres@localhost:5432/COVID19_db"
print(DATABASE_URI)

engine = create_engine(DATABASE_URI)

app.config['SQLALCHEMY_DATABASE_URI'] = DATABASE_URI 

db = SQLAlchemy(app)
# app.config['SQLALCHEMY_DATABASE_URI'] = os.environ.get('DATABASE_URL', '') or "postgresql://postgres:postgres@localhost:5432/corona_db"

# db = SQLAlchemy(app)
@app.route("/")
def world():
    # result_set = []
    
    # query_str = open('static/sql/world_top_10.sql')
    # query_text = ""
    
    # for text in query_str:
    #     query_text = query_text + text
        
    # result_set = engine.execute(query_text)

    # result_sum = []

    # query_str = open('static/sql/world_summary.sql')
    # query_text = ""
    
    # for text in query_str:
    #     query_text = query_text + text

    # result_sum = engine.execute(query_text)

    # max_date = []

    # query_str = open('static/sql/world_max_date.sql')
    # query_text = ""
    
    # for text in query_str:
    #     query_text = query_text + text

    # max_date = engine.execute(query_text)

    # counter = 0

    # query_str = open('static/sql/world_days.sql')
    # query_text = ""
    
    # for text in query_str:
    #     query_text = query_text + text

    # result_count = engine.execute(query_text)

    # for i in result_count:
    #     counter = i[0]

    # return render_template("world.html", world_facts=result_set, world_sum=result_sum, world_max_date=max_date, world_counter=counter)
    return render_template("world.html")

@app.route("/USA")
def USA():
    result_set = []
    
    query_str = open('static/sql/USA_top_10.sql')
    query_text = ""
    
    for text in query_str:
        query_text = query_text + text
        
    result_set = engine.execute(query_text)

    result_sum = []

    query_str = open('static/sql/USA_summary.sql')
    query_text = ""
    
    for text in query_str:
        query_text = query_text + text

    result_sum = engine.execute(query_text)

    max_date = []

    query_str = open('static/sql/world_max_date.sql')
    query_text = ""
    
    for text in query_str:
        query_text = query_text + text

    max_date = engine.execute(query_text)

    counter = 0

    query_str = open('static/sql/world_days.sql')
    query_text = ""
    
    for text in query_str:
        query_text = query_text + text

    result_count = engine.execute(query_text)

    for i in result_count:
        counter = i[0]

    return render_template("USA.html", world_facts=result_set, world_sum=result_sum, world_max_date=max_date, world_counter=counter)

@app.route("/china")
def china(): 
    result_set = []
    
    query_str = open('static/sql/china_top_10.sql')
    query_text = ""
    
    for text in query_str:
        query_text = query_text + text
        
    result_set = engine.execute(query_text)

    result_sum = []

    query_str = open('static/sql/china_summary.sql')
    query_text = ""
    
    for text in query_str:
        query_text = query_text + text

    result_sum = engine.execute(query_text)
  
    return render_template("china.html", china_facts=result_set, china_sum=result_sum)

@app.route("/slider")
def slider(): 
    return render_template("slider.html")

@app.route("/news")
def news():
    return render_template("news.html")

@app.route("/api/bar_china")
def bar_chart_china():
    
    
    result_set = []
    
    query_str = open('static/sql/china_bar.sql')
    query_text = ""
    
    for text in query_str:
        query_text = query_text + text
        
    result_set = engine.execute(query_text)
    
    all_results = []
    for date, conf_count, cured_count, dead_count, susp_count in result_set:
        results_dict = {}
        results_dict["date"] = date
        results_dict["conf_count"] = conf_count
        results_dict["cured_count"] = cured_count
        results_dict["dead_count"] = dead_count
        results_dict["susp_count"] = susp_count
        all_results.append(results_dict)

    return jsonify(all_results)

@app.route("/api/bar_world")
def bar_chart_world():
    
    result_set = []
    
    query_str = open('static/sql/world_bar.sql')
    query_text = ""
    
    for text in query_str:
        query_text = query_text + text
        
    result_set = engine.execute(query_text)
    
    all_results = []
    for date, country, conf_count, cured_count, dead_count in result_set:
        results_dict = {}
        results_dict["date"] = date
        results_dict["country"] = country
        results_dict["conf_count"] = conf_count
        results_dict["cured_count"] = cured_count
        results_dict["dead_count"] = dead_count
        all_results.append(results_dict)

    return jsonify(all_results)

@app.route("/api/bar_USA")
def bar_chart_USA():
    
    result_set = []
    
    query_str = open('static/sql/USA_bar.sql')
    query_text = ""
    
    for text in query_str:
        query_text = query_text + text
        
    result_set = engine.execute(query_text)
    
    all_results = []
    for date, state, conf_count, cured_count, dead_count in result_set:
        results_dict = {}
        results_dict["date"] = date
        results_dict["state"] = state
        results_dict["conf_count"] = conf_count
        results_dict["cured_count"] = cured_count
        results_dict["dead_count"] = dead_count
        all_results.append(results_dict)

    return jsonify(all_results)


@app.route("/load")
def load():

    # Run the scrape function
    load_db.load_new()
    return "Success"
if __name__ == "__main__":
    app.run(debug=True)
