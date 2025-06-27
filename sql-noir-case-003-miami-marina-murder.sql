--43	19860814	Coral Bay Marina	The body of an unidentified man was found near the docks. Two people were seen nearby: one who lives on 300ish "Ocean Drive" and another whose first name ends with "ul" and his last name ends with "ez".

--id	name	alias	occupation	address
--1	Marco Romano	The Shadow	Fisherman	22 Ocean Drive
--5	Michael Santos	Silent Mike	Bartender	33 Ocean Drive
--62	Jesse Brooks	The Judge	Court Clerk	234 Ocean Drive
--101	Carlos Mendez	Los Ojos	Fisherman	369 Ocean Drive
--105	Victor Martinez	Slick Vic	Bartender	33 Ocean Drive

SELECT * FROM person WHERE name LIKE '%ul %ez';
--Results id	name	alias	occupation	address 
----------102	Raul Gutierrez	The Cobra	Nightclub Owner	45 Sunset Ave
--Results
--id	person_id	transcript
--101	101	I saw someone check into a hotel on August 13. The guy looked nervous.
--103	102	I heard someone checked into a hotel with "Sunset" in the name.


SELECT * FROM hotel_checkins
WHERE person_id = 102
OR person_id = 101
OR person_id = 62;
--Results
--id	person_id	hotel_name	check_in_date
--11	62	Island Paradise Resort	19860815
--89	101	Coral View Resort	19860812
--91	102	Marina Paradise Inn	19860815


Results
name
Thomas Brown


