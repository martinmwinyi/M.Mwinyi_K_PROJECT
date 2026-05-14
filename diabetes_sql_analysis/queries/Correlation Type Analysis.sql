SELECT 
    CASE
        WHEN BMI < 18.5 THEN 'Underweight'
        WHEN BMI BETWEEN 18.5 AND 24.9 THEN 'Normal'
        WHEN BMI BETWEEN 25 AND 29.9 THEN 'Overweight'
        ELSE 'Obese'
    END AS BMI_Category,

    COUNT(*) AS Total_Patients,

    ROUND(AVG(Glucose), 2) AS Avg_Glucose,

    ROUND(AVG(Outcome) * 100, 2) AS Diabetes_Percentage

FROM diabetes

GROUP BY BMI_Category

ORDER BY Diabetes_Percentage DESC;