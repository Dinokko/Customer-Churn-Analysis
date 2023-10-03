-- Commands Run:

ALTER TABLE TelcoCustomerChurn
ALTER COLUMN SeniorCitizen nvarchar;

UPDATE TelcoCustomerChurn
SET SeniorCitizen = 'No'
WHERE SeniorCitizen = '0';

UPDATE TelcoCustomerChurn
SET SeniorCitizen = 'Yes'
WHERE SeniorCitizen = '1';
