-- start with suburb and inquire into information as to how many charities are in a suburb, 
-- including suburb name as this is most likely our search criteria

SELECT s.suburb, s.postcode, c.pbi, c.charity_size, count(s.postcode) AS Number_Charities
from ato as a
	join acnc as c
	on (a.postcode = c.postcode)
		join suburb as s
		on(s.postcode = c.postcode)
		Group BY s.suburb, s.postcode, c.pbi, c.charity_size
		ORDER BY s.postcode;
		
		
		
--what sort of charities in our area of interest (charities carrying for homeless) in the regional VIctoria
		
SELECT s.suburb, s.postcode, c.pbi, c.charity_size, c.people_at_risk_of_homelessness, a.area, count(s.postcode) AS Number_Charities
from ato as a
	join acnc as c
	on (a.postcode = c.postcode)
		join suburb as s
		on(s.postcode = c.postcode)
		
		WHERE c.people_at_risk_of_homelessness = 'Y' and a.area = 'Regional'
		
		Group BY s.suburb, s.postcode, c.pbi, c.charity_size, c.people_at_risk_of_homelessness, a.area
		ORDER BY s.postcode;
		

--what sort of charities in our immediate area (postcode 3146 to 3152)
		
SELECT s.suburb, s.postcode, c.pbi, c.charity_size, count(s.postcode) AS Number_Charities
from ato as a
	join acnc as c
	on (a.postcode = c.postcode)
		join suburb as s
		on(s.postcode = c.postcode)
		
		WHERE s.postcode between 3146 and 3153
		
		Group BY s.suburb, s.postcode, c.pbi, c.charity_size
		ORDER BY s.postcode;