CREATE TABLE demographics(
   id INTEGER,
   info_date DATE,
   toronto_population NUMERIC,
   toronto_population_growth NUMERIC,
   household_income NUMERIC
);

COPY Demographics
FROM '/private/var/tmp/CSV files/Demographics.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');