-- Create tables for data to be loaded into
CREATE TABLE metro (
	id INT PRIMARY KEY,
	postcode VARCHAR,
	area TEXT
);

CREATE TABLE ATO (
	id INT PRIMARY KEY,
	State TEXT,
	postcode VARCHAR,
	No_Individuals INT,
	Total_Taxable_$ NUMERIC,
	Total_Donation_$ NUMERIC
);


-- Joins tables
SELECT metro.postcode, metro.area, ATO.No_Individuals, ATO.Total_Taxable_$, ATO.Total_Donation_$
FROM metro
JOIN ATO
ON metro.postcode = ATO.postcode;
