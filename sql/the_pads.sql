SELECT CONCAT(name,'(',upper(left(occupation, 1)),')') FROM OCCUPATIONS ORDER BY name ASC; 
SELECT CONCAT('There are a total of ',COUNT(occupation), ' ', lower(occupation), 's.') FROM OCCUPATIONS GROUP BY occupation ORDER BY COUNT(occupation), occupation;