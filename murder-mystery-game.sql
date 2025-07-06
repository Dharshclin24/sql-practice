-- Record your SQL detective process here!  Write down: 
  -- 1. The SQL queries you ran
  -- 2. Any notes or insights as SQL comments
  -- 3. Your final conclusion: who did it?


SQL mystery Game Notes
SQL to Attain Crime scene report from database:
SELECT name 
  FROM sqlite_master
 where type = 'table'


SQL to Attain murder
SELECT *
FROM crime_scene_report
WHERE type = "murder";
 
SQL to attain date and location
SELECT *
FROM crime_scene_report
WHERE type = "murder"
	AND date = "20180115"
	AND city = "SQL City";

SQL to choose from witnesses
SELECT *
FROM person;


SQL to attain  witness location
SELECT *
FROM person
WHERE address_street_name = "Northwestern Dr"
ORDER BY address_number DESC;

SQL to attain 2nd witness address
SELECT *
FROM person
WHERE name LIKE '%Annabel%'
AND address_street_name = "Franklin Ave";


SQL to attain witness statements
SELECT *
FROM interview
WHERE person_id IN ("14887", "16371");


SQL to attain gym clues 
SELECT *
FROM get_fit_now_check_in
WHERE membership_id LIKE '48Z%'
	AND check_in_date = "20180109";


SQL to attain gender and car plate
SELECT *
FROM drivers_license
WHERE gender = "male"
	AND plate_number LIKE '%H42W%';



More information on the gym persons to decipher 
SELECT *
FROM person
WHERE license_id IN ("423327", "664760");


Suspect
SELECT *
FROM get_fit_now_member
WHERE person_id IN ("51739", "67318");


INSERT INTO solution VALUES (1, 'Jeremy Bowers');
SELECT value FROM solution;
