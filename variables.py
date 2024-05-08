from pydantic import BaseModel



class BankNote (BaseModel):
    distance_from_home : float
    distance_from_last_transaction : float
    ratio_to_median_purchase_price : float 
    repeat_retailer : object
    used_chip   : object                    
    used_pin_number     : object       
    online_order : object