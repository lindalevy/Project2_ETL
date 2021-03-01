--Drop any tables if they exist
DROP TABLE IF EXISTS ato CASCADE;
DROP TABLE IF EXISTS metro CASCADE;
DROP TABLE IF EXISTS suburb CASCADE;

-- Create tables for data to be loaded into
CREATE TABLE ato (
	State TEXT,
	postcode VARCHAR NOT NULL PRIMARY KEY,
	No_Individuals INT,
	Total_Taxable_$ NUMERIC,
	Total_Donation_$ NUMERIC
);

CREATE TABLE metro (
	postcode VARCHAR,
	area TEXT,
	FOREIGN KEY (postcode) REFERENCES ato (postcode)
);

CREATE TABLE suburb (
	postcode VARCHAR,
	suburb VARCHAR,
	state VARCHAR,
	FOREIGN KEY (postcode) REFERENCES ato (postcode)	
);
