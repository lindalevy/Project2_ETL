-- join table base on the postcode
SELECT ato.State, ato.postcode, suburb. suburb, ato.No_Individuals, ato.Total_Taxable_$,
ato.Total_Donation_$, ato.area
FROM ato
INNER JOIN suburb ON ato.postcode = suburb.postcode;

-- "Total expected donation index" (total donation / total population)
SELECT ROUND(SUM(Total_Donation_$) / SUM(No_Individuals)) AS "Total Expected Donation Index"
FROM ato;

-- "Metro expected donation index" (metro area donation / metro population)
SELECT ROUND(SUM(Total_Donation_$) / SUM(No_Individuals)) AS "Metro Expected Donation Index"
FROM ato
WHERE area = 'Metro'
GROUP BY area;

-- "Regional expected donation index" (Regional area donation / Regional population)
SELECT ROUND(SUM(Total_Donation_$) / SUM(No_Individuals)) AS "Regional Expected Donation Index"
FROM ato
WHERE area = 'Regional'
GROUP BY area;

-- Show the donation by postcode population
SELECT ato.postcode, suburb. suburb, ROUND(Total_Donation_$ / No_Individuals) AS "Donation by postcode population"
FROM ato
INNER JOIN suburb ON ato.postcode = suburb.postcode;

-- create another column, that compares the value in the column above against the 'expected donation index' 
-- and labels the postcode as "generous" or "no"
--------add column for donation by area population into ato table 

ALTER TABLE ato

ADD COLUMN "Donation by postcode population" INTEGER;
UPDATE ato SET "Donation by postcode population"=ROUND(Total_Donation_$ / No_Individuals);

ALTER TABLE ato
ALTER COLUMN "Donation by postcode population" SET NOT NULL;

SELECT * FROM ato;

--------Compare Donation by postcode population with Total expected donation index (282)
SELECT ato.postcode, suburb. suburb,
       CASE WHEN "Donation by postcode population">282 THEN 'generous'
            WHEN "Donation by postcode population"<282 THEN 'no'
            ELSE 'other'
       END
    FROM ato INNER JOIN suburb ON ato.postcode = suburb.postcode;
