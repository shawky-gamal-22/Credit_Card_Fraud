import streamlit as st
#from streamlit_option_menu import option_menu
import pandas as pd
import joblib
import numpy as np
import pickle 






#with st.sidebar:
#    selected = option_menu(
#    menu_title= "Main Menu",
#    options=["Home","Project"],
#    #orientation= "horizontal"
#    )
#selected = option_menu(
#   menu_title= None,
#   options=["Home","Project"],
#   orientation= "horizontal"
#)

model = joblib.load("model2")


pipeline = joblib.load("pipeline2")




st.header("Problem Statement:")
st.write("""Digital payments are evolving, but so are cyber criminals.
      According to the Data Breach Index, more than 5 million records are being stolen on a daily basis, a concerning statistic that shows - fraud is still very common both for Card-Present and Card-not Present type of payments.
      In today’s digital world where trillions of Card transaction happens per day, detection of fraud is challenging.
      """)

st.header("Dataset Explanation:")
st.markdown("""
* distance_from_home: The distance from home where the transaction happened.
* distance_from_last_transaction: The distance from last transaction happened.
* ratio_to_median_purchase_price: Ratio of purchased price transaction to median purchase price.
* repeat_retailer: Is the transaction happened from same retailer.
* used_chip: Is the transaction through chip (credit card).
* used_pin_number: Is the transaction happened by using PIN number.
* online_order: Is the transaction an online order.
""")
df = pd.read_csv(r'Practical_Exam/final_data.csv')
df.drop(columns = "Unnamed: 0",inplace= True)
st.write(df.head())

st.header("Our product:")
st.write("We tried to make a program that detects from the features above if the current transaction is a fraud or not")

st.header("Our advice:")
st.write("We have some advices to protect your credit cards:")
st.markdown("""
* *Keep your cards secure*: Store your credit cards in a safe place, and don't leave them lying around where they can be easily accessed by others.
* *Memorize your PIN*: Avoid writing down your PIN or sharing it with anyone. Memorize it instead.
* *Be cautious with online transactions*: Only make online purchases from secure and reputable websites. Look for the padlock symbol in the address bar and ensure the URL starts with "https://".
* *Monitor your accounts*: Regularly review your credit card statements and transactions for any unauthorized charges. Report any suspicious activity to your credit card issuer immediately.
* *Use strong passwords*: When setting up online accounts, use unique and complex passwords that are difficult for others to guess. Consider using a password manager to securely store and manage your passwords.
""")

dist_from_home = st.number_input('Distance_from_home',placeholder="Type the distance...")
distance_from_last_transaction = st.number_input('Distance_from_last_transaction',placeholder="Type the distance...")
ratio_to_median_purchase_price =st.number_input('Ratio_to_median_purchase_price',placeholder="Type the price...")
is_repeat_retailer = st.radio('Is the transaction happened from same retailer',['Yes','No'])
is_used_chip = st.radio('Is the transaction through chip (credit card)',['Yes','No'])
is_used_pin_number = st.radio('Is the transaction happened by using PIN number',['Yes','No'])
is_online_order = st.radio('Is the transaction an online order',['Yes','No'])

predict = st.button("Predict",type= "primary")

if predict :
  
  index = [0]
  row_data = pd.DataFrame({'distance_from_home':dist_from_home, 'distance_from_last_transaction':distance_from_last_transaction,	
                          'ratio_to_median_purchase_price':ratio_to_median_purchase_price,	'repeat_retailer':is_repeat_retailer,
                          'used_chip':is_used_chip,	'used_pin_number':is_used_pin_number,	'online_order':is_online_order},index = index)
  ready_data = pipeline.transform(row_data)
  prediction = model.predict(ready_data)
  if(prediction[0] == 0 ):
    st.write("There is a fraud")
  else :
    st.write("Valid Transaction")








