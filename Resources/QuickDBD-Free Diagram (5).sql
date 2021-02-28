-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/dhHix8
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "ATO_File" (
    "ID" numeric   NOT NULL,
    "State" varchar   NOT NULL,
    "Postcode" numeric   NOT NULL,
    "No_Individuals" numeric   NOT NULL,
    "Total_Taxable_$" numeric   NOT NULL,
    "Total_Donation_$" numeric   NOT NULL,
    CONSTRAINT "pk_ATO_File" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "Web_Scraping_Postcode" (
    "Postcode" numeric   NOT NULL,
    "Area" varchar   NOT NULL,
    CONSTRAINT "pk_Web_Scraping_Postcode" PRIMARY KEY (
        "Postcode"
     )
);

CREATE TABLE "postcode_clean" (
    "postcode" numeric   NOT NULL,
    "Suburb" varchar   NOT NULL,
    "state" varchar   NOT NULL,
    CONSTRAINT "pk_postcode_clean" PRIMARY KEY (
        "postcode"
     )
);

ALTER TABLE "ATO_File" ADD CONSTRAINT "fk_ATO_File_Postcode" FOREIGN KEY("Postcode")
REFERENCES "Web_Scraping_Postcode" ("Postcode");

ALTER TABLE "postcode_clean" ADD CONSTRAINT "fk_postcode_clean_postcode" FOREIGN KEY("postcode")
REFERENCES "Web_Scraping_Postcode" ("Postcode");

