-- Changing Data Type from BIT to NVARCHAR:

ALTER TABLE TelcoCustomerChurn
ALTER COLUMN SeniorCitizen nvarchar;

UPDATE TelcoCustomerChurn
SET SeniorCitizen = 'No'
WHERE SeniorCitizen = '0';

UPDATE TelcoCustomerChurn
SET SeniorCitizen = 'Yes'
WHERE SeniorCitizen = '1';

-- Checking for NULL values:

SELECT * FROM TelcoCustomerChurn
WHERE customerID is null 
OR gender is null 
OR SeniorCitizen is null 
OR Partner is null
OR Dependents is null 
OR tenure is null 
OR PhoneService is null 
OR Multiplelines is null
OR InternetService is null 
OR OnlineSecurity is null 
OR OnlineBackup is null 
OR DeviceProtection is null
OR TechSupport is null 
OR StreamingTV is null 
OR StreamingMovies is null 
OR Contract is null
OR PaymentMethod is null 
OR MonthlyCharges is null 
OR TotalCharges is null 
OR Churn is null

-- Checking for empty values:

SELECT * FROM TelcoCustomerChurn WHERE customerID = ''
OR gender = ''
OR SeniorCitizen = ''
OR Partner = ''
OR Dependents = ''
OR tenure = ''
OR PhoneService = '' 
OR Multiplelines = ''
OR InternetService = ''
OR OnlineSecurity = ''
OR OnlineBackup = ''
OR DeviceProtection = ''
OR TechSupport = ''
OR StreamingTV = ''
OR StreamingMovies = ''
OR Contract = ''
OR PaymentMethod = ''
OR MonthlyCharges = '' 
OR TotalCharges = ''
OR Churn = ''
