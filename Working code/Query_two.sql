-- start with suburb and inquire into information as to how many charities are in a suburb, 
-- including suburb name as this is most likely our search criteria

SELECT s.suburb, s.postcode, count(s.postcode) AS Number_Charities
from ato as a
	join acnc as c
	on (a.postcode = c.postcode)
		join suburb as s
		on(s.postcode = c.postcode)
		Group BY s.suburb, s.postcode
		ORDER BY s.postcode;
		
		
		
		
		
