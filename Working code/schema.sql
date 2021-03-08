--Drop any tables if they exist
DROP TABLE IF EXISTS ato CASCADE;
DROP TABLE IF EXISTS suburb CASCADE;

-- Create ATO tables for data to be loaded into 
CREATE TABLE ato (
	State TEXT,
	postcode VARCHAR NOT NULL PRIMARY KEY,
	No_Individuals INT,
	Total_Taxable_$ NUMERIC,
	Total_Donation_$ NUMERIC,
	area TEXT
);

SELECT * FROM ato;

-- Create Suburb tables for data to be loaded into 
CREATE TABLE suburb (
	postcode VARCHAR NOT NULL PRIMARY KEY,
	suburb VARCHAR,
	state VARCHAR
);

SELECT * FROM suburb;

-- Import csv files from the outputfolder into the tables