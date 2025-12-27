CREATE TABLE business_price_indexes (
    series_reference VARCHAR(50),
    period NUMERIC(7, 2),
    data_value NUMERIC(20, 10),
    status VARCHAR(20),
    units VARCHAR(50),
    subject TEXT,
    group_name TEXT,
    series_title_1 TEXT,
    series_title_2 TEXT,
    series_title_3 TEXT,
    series_title_4 TEXT,
    series_title_5 TEXT
);

select * from business_price_indexes;

--Q1: How many records are there for each major Subject?

select subject, count(*)

from business_price_indexes
group by subject;


--Q2: What is the average data_value across the entire dataset?

select avg(data_value)
from business_price_indexes;

--Q3: What is the date range (earliest and latest period) covered in this file?

SELECT MIN(period) as earliest_period, MAX(period) as latest_period
FROM business_price_indexes;


--Q4: Which 5 series_reference codes have the highest average data_value?

SELECT series_reference, AVG(data_value) as avg_val
FROM business_price_indexes
GROUP BY series_reference
ORDER BY avg_val DESC
LIMIT 5;

--Q5: What are the unique units of measurement used in the dataset?

SELECT DISTINCT units
FROM business_price_indexes;




