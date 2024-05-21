SELECT
   EXTRACT(YEAR FROM info_date) AS year,
   ROUND(AVG(prime_rate) * 100, 2) AS Average_PrimeRate_Percentage
FROM
   economic_indicators
WHERE
   EXTRACT(YEAR FROM info_date) IN (2020, 2021, 2022, 2023, 2024)
GROUP BY
   EXTRACT(YEAR FROM info_date)
ORDER BY
   year ASC;



