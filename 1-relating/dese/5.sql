SELECT "city", COUNT("id") FROM "schools"
GROUP BY "city"
HAVING COUNT("id") <= 3 AND "type" = 'Public School'
ORDER BY COUNT("id") DESC, "city"
;
