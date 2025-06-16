--In the neon glow of 1980s Los Angeles, the West Hollywood Records store was rocked by a daring theft. A prized vinyl record, worth over $10,000, vanished during a busy evening, leaving the store owner desperate for answers. Vaguely recalling the details, you know the incident occurred on July 15, 1983, at this famous store. Your task is to track down the thief and bring them to justice.

--SELECT COUNT(DISTINCT location) FROM crime_scene;
--COUNT(DISTINCT location) 77

--SELECT COUNT(*) FROM crime_scene
--WHERE location LIKE 'West%';
--Results COUNT(*) 1

--SELECT COUNT(DISTINCT bandana_color) FROM suspects;
--Results COUNT(DISTINCT bandana_color) 11

--SELECT DISTINCT accessory FROM suspects WHERE accessory LIKE 'gold watch%'
--Results accessory gold watch


--SELECT id, name FROM suspects
--WHERE bandana_color = 'red' AND accessory = 'gold watch'
--Results id	name
--35	Tony Ramirez
--44	Mickey Rivera
--97	Rico Delgado

--SELECT suspect_id, transcript FROM interviews
--WHERE suspect_id IN (SELECT id FROM suspects
  --WHERE bandana_color = 'red' AND accessory = 'gold watch');
--35	I wasn't anywhere near West Hollywood Records that night.
--44	I was busy with my music career; I have nothing to do with this theft.
--97	I couldn't help it. I snapped and took the record.-- Record your SQL detective process here!  Write down: 
  -- 1. The SQL queries you ran
  -- 2. Any notes or insights as SQL comments
  -- 3. Your final conclusion: who did it?
