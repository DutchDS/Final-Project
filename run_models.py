# Load Libraries
import os
import pandas as pd
import tensorflow
# from tensorflow import keras
from keras.models import load_model

# Model 1: Classification
def model1(selFeatures):
 
    # Load the models
    model1 = load_model("static/model/best_clf.sav") 
        
    prediction1 = model1.predict_classes(selFeatures)
    print(prediction1)

    return prediction1

# Model 2: Deep Learning
def model2(selFeatures):
 
    # Load the models
    model2 = load_model("/static/model/best_dl.h5") 
        
    prediction2 = model2.predict_classes(selFeatures)
    print(prediction2)

    return prediction2

# Model 3: Random Forest
def model3(selFeatures):
 
    # Load the models
    model3 = load_model("/static/model/best_rf.sav") 
        
    prediction3 = model3.predict_classes(selFeatures)
    print(prediction3)

    return prediction3

def model4(selFeatures):
 
    # Load the models
    model4 = load_model("/static/model/best_knn.sav") 
        
    prediction4 = model4.predict_classes(selFeatures)
    print(prediction4)

    return prediction4