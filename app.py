import uvicorn
from fastapi import FastAPI
import numpy as np
import pickle
import pandas as pd
import joblib
from variables import BankNote
from fastapi.responses import JSONResponse


karim = FastAPI()
model = joblib.load("model.pkl")
pipeline = joblib.load("pipeline.pkl")

@karim.get('/')
def index():
    return {'Message':'Hello World'}

@karim.post('/predict')
def predict(data : BankNote):
    data = data.dict()
    data = pd.DataFrame(data, index=[0])
    ready_data = pipeline.transform(data)
    prediction = model.predict(ready_data)

    if prediction[0] == 0:
        return JSONResponse(content={"prediction": "There is a fraud"})
    else:
        return JSONResponse(content={"prediction": "Valid Transaction"})



if __name__ == '__main__':
    uvicorn.run(karim, host="127.0.0.1", port=8000)