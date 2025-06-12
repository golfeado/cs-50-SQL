-- Query the 10 higher salary/H players.
SELECT * FROM (
   SELECT "first_name",
          "last_name"
   FROM "players"
   RIGHT JOIN "salaries" ON "salaries"."player_id" = "players"."id"
   JOIN "performances" ON "performances"."player_id" = "players"."id"
   WHERE "performances"."year" = 2001
         AND "salaries"."year" = 2001
         AND "performances"."H" > 0
   ORDER BY ("salary" / "H"),
            "players"."id"
   LIMIT 10
)

INTERSECT

-- Query the 10 higher salary/RBI players.
SELECT * FROM (
       SELECT "first_name",
              "last_name"
       FROM "players"
       RIGHT JOIN "salaries" ON "salaries"."player_id" = "players"."id"
       JOIN "performances" ON "performances"."player_id" = "players"."id"
       WHERE "performances"."year" = 2001
             AND "salaries"."year" = 2001
             AND "RBI" > 0
       ORDER BY ("salary" / "RBI"),
                "players"."id"
       LIMIT 10
);
