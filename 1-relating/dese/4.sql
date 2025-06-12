SELECT "city", COUNT("name") AS "No. of Schools" FROM "schools"
GROUP BY "city"
HAVING "type" = 'Public School'
ORDER BY "No. of Schools" DESC, "name"
LIMIT 10
;
