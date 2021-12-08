import joblib
model = joblib.load("salary_model.pkl")

#predict
years=int(input("Enter years of experience: \n"))
predict=model.predict([[years]])
print("################################")
print("# Your salary :",round(predict[0],2)," INR #") 
print("################################")
