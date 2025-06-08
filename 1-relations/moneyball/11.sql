SELECT "first_name", "last_name", "H", ("salary" / "H") AS "dollars per hit"
FROM "players"
RIGHT JOIN "salaries" ON "salaries"."player_id" = "players"."id"
JOIN "performances" ON "performances"."player_id" = "players"."id"
WHERE "performances"."H" > 0
      AND "salaries"."year" = 2001
      AND "performances"."year" = 2001
ORDER BY "dollars per hit",
         "first_name",
         "last_name"
LIMIT 10
;
