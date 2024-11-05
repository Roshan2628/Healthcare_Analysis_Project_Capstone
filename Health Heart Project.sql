Create database Health_Project;
use Health_project;
select *from heart_csv;
CREATE VIEW heart_csv_ï»¿age_bins AS
ALTER TABLE heart_csv
ADD COLUMN age_group VARCHAR(10);

ALTER TABLE heart_csv
CHANGE COLUMN ï»¿age age INT;


UPDATE heart_csv
SET age_group = CASE
    WHEN age < 30 THEN 'Under 30'
    WHEN age BETWEEN 30 AND 39 THEN '30-39'
    WHEN age BETWEEN 40 AND 49 THEN '40-49'
    WHEN age BETWEEN 50 AND 59 THEN '50-59'
    WHEN age BETWEEN 60 AND 69 THEN '60-69'
    ELSE '70+'
END;

CREATE VIEW heart_csv_with_age_groups AS
SELECT *
FROM heart_csv;

select *from heart_csv;