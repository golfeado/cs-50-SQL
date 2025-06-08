SELECT "teams"."name", SUM("performances"."H") AS "total hits" FROM "teams"
RIGHT JOIN "performances" ON "performances"."team_id" = "teams"."id"
WHERE "performances"."year" = 2001
GROUP BY "name"
;
