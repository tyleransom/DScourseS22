.print ' '
.print 'Importing data'

-- First, create the table that the CSV will be stored in

CREATE TABLE "insurance" (

policyID INTEGER,
statecode CHAR(10),
county CHAR(100),
eq_site_limit DOUBLE,
hu_site_limit DOUBLE,
fl_site_limit DOUBLE,
fr_site_limit DOUBLE,
tiv_2011 DOUBLE,
tiv_2012 DOUBLE,
eq_site_deductible DOUBLE,
hu_site_deductible DOUBLE,
fl_site_deductible DOUBLE,
fr_site_deductible DOUBLE,
point_latitude DOUBLE,
point_longitude DOUBLE,
line CHAR(100),
construction CHAR(100),
point_granularity INTEGER


);


-- loading the data from the same directory

.mode csv
.import FL_insurance_sample.csv insurance


-- ******************
-- View first 10 observations
-- ******************
.print ' '
.print 'View first 10 observations'

Select * FROM insurance LIMIT 10;

.print ' '
.print 'Unique values'
-- Number of unique counties in the data (lists a number)
SELECT DISTINCT county FROM insurance;

-- ******************
-- taking the average of difference
-- ******************
.print ' '
.print 'the average of difference'
SELECT Avg(tiv_2012 - tiv_2011) FROM insurance;

-- ******************
-- ******************
-- this code I found online to construct freq.
-- source: https://www.c-sharpcorner.com/blogs/sql-query-to-find-out-the-frequency-of-each-element-in-a-column1

.print ' '
.print 'Frequency'
SELECT construction, COUNT(construction)AS Frequency 
FROM insurance
GROUP BY construction 
ORDER BY
COUNT(construction) DESC;

-- ******************
-- Save as text file
-- ******************
.output PS3_LastName.sqlite3
.dump
