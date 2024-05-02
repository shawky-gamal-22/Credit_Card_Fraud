import joblib
import pandas as pd
import sklearn
import pickle

with open ('model','rb') as f:

    model = pickle.load(f)
