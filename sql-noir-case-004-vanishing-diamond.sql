SELECT * FROM crime_scene WHERE location LIKE '%Fontaineb%';
SELECT id, name, invitation_code FROM guest
WHERE occupation LIKE 'consultant' AND name LIKE '%an %';
SELECT * FROM witness_statements WHERE guest_id IN (
  SELECT id FROM guest WHERE
    (occupation='Actor' AND name LIKE 'c% e%') OR
    (occupation='Consultant' AND name LIKE '%an %')
);
SELECT note FROM attire_registry LIMIT 10;
SELECT dock_number FROM marina_rentals LIMIT 3;
SELECT g.*, i.confession
FROM guest g
  INNER JOIN final_interviews i ON g.id = i.guest_id
WHERE
  (g.invitation_code LIKE '%-R'
    AND
    g.id = (SELECT guest_id FROM attire_registry
      WHERE note = 'navy suit, white tie')
  ) OR
  guest_id IN (
    SELECT renter_guest_id FROM marina_rentals
      WHERE dock_number = 3
      AND
      rental_date = (SELECT date FROM crime_scene
        WHERE location = 'Fontainebleau Hotel')
  );

