SELECT 
    Age,
    Glucose,
    BMI,
    BloodPressure,
    Outcome

FROM diabetes

ORDER BY Glucose DESC, BMI DESC

LIMIT 10;