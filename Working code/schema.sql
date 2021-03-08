--Drop any tables if they exist
DROP TABLE IF EXISTS ato CASCADE;
DROP TABLE IF EXISTS suburb CASCADE;
DROP TABLE IF EXISTS acnc CASCADE;

-- Create tables for data to be loaded into

CREATE TABLE suburb (
	postcode INTEGER NOT NULL PRIMARY KEY,
	suburb VARCHAR,
	state VARCHAR
);


CREATE TABLE ato (
	State TEXT,
	postcode INTEGER PRIMARY KEY,
	No_Individuals INT,
	Total_Taxable_$ NUMERIC,
	Total_Donation_$ NUMERIC,
	Area VARCHAR,
	FOREIGN KEY (postcode) REFERENCES suburb(postcode)	
);


CREATE TABLE acnc (
 	ABN VARCHAR,
    Charity_Legal_Name varchar,
    State varchar,
    postcode INTEGER,
    Charity_Size varchar,
    Operates_in_VIC varchar,
    PBI varchar,
    Preventing_or_relieving_suffering_of_animals varchar,
    Advancing_Culture varchar,
    Advancing_Education varchar,
    Advancing_Health varchar,
    Promote_or_oppose_a_change_to_law__government_poll_or_prac varchar,
    Advancing_natual_environment varchar,
    Promoting_or_protecting_human_rights varchar,
    Purposes_beneficial_to_other_general_public_and_other_analogous varchar,
    Promoting_reconciliation__mutual_respect_and_tolerance varchar,
    Advancing_Religion varchar,
    Advancing_social_or_public_welfare varchar,
    Advancing_security_or_safety_of_Australia_or_Australian_public varchar,
    Aboriginal_or_TSI varchar,
	Adults_Concerns varchar,
    Aged_Persons varchar,
	Children varchar,
	Communities_Overseas varchar,
	Early_Childhood varchar,
	Ethnic_Groups varchar,
	Families varchar,
	Females varchar,
	Financially_Disavantaged varchar,
	Gay_Lesbian_Bisexual varchar,
	General_Community_In_Australia varchar,
	Males varchar,
	Migrants_Refugees_or_Asylum_Seekers varchar,
	Other_Beneficaries varchar,
	Other_Charities varchar,
	People_at_risk_of_Homelessness varchar,
	People_with_Chronic_Illness varchar,
	People_with_Disabilities varchar,
	Pre_Post_ReleaseOffenders varchar,
	Rural_Regional_Remote_Communities varchar,
	Unemployed_Person varchar,
	Veterans_or_their_families varchar,
	Victims_of_crime varchar,
	Victims_of_Disasters varchar,
	Youth varchar,
	Primary Key (ABN)
);
  
  
  SELECT *
FROM suburb;
