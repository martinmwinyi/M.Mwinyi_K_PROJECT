SELECT 
    Age,
    Glucose,

    RANK() OVER (ORDER BY Glucose DESC) AS Glucose_Rank

FROM diabetes;