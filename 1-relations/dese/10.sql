SELECT "name", "per_pupil_expenditure" FROM "districts"
INNER JOIN "expenditures" ON "district_id" = "districts"."id"
ORDER BY "per_pupil_expenditures" DESC
LIMIT 10
;
