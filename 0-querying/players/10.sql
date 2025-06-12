SELECT "first_name" AS "Name", "last_name" AS "Last Name",
"birth_city" AS "City", "birth_country" AS "País"
FROM "players"
WHERE "birth_country" = 'Venezuela'
ORDER BY "birth_city", "first_name", "last_name"
;
