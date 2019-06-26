UPDATE journeys j
SET j.purpose = 'Military'
WHERE MOD(j.id, 7) = 0;

UPDATE journeys j
SET j.purpose = 'Educational'
WHERE MOD(j.id, 5) = 0;


UPDATE journeys j
SET j.purpose = 'Technical'
WHERE MOD(j.id, 3) = 0;

UPDATE journeys j
SET j.purpose = 'Medical'
WHERE MOD(j.id, 2) = 0;


