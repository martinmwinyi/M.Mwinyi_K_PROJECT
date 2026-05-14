SELECT 
    CASE
        WHEN Age < 30 THEN 'Under 30'
        WHEN Age BETWEEN 30 AND 50 THEN '30-50'
        ELSE 'Over 50'
    END AS Age_Group,

    COUNT(*) AS Total_Patients,

    SUM(Outcome) AS Diabetes_Cases,

    ROUND((SUM(Outcome) * 100.0 / COUNT(*)), 2) AS Diabetes_Rate_Percent

FROM diabetes

GROUP BY Age_Group

ORDER BY Diabetes_Rate_Percent DESC;