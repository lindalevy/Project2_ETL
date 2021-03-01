--1. Join metro and ato tables
SELECT 
	metro.postcode, 
	metro.area, 
	ato.No_Individuals, 
	ato.Total_Taxable_$, 
	ato.Total_Donation_$
FROM metro AS m
OUTER JOIN ato AS a
ON m.postcode = a.postcode;
