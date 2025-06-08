SELECT "schools"."name", "per_pupil_expenditure", "graduated" FROM "schools"
INNER JOIN "graduation_rates" ON "graduation_rates"."school_id" = "schools"."id"
INNER JOIN "districts" ON "districts"."id" = "schools"."district_id"
INNER JOIN "expenditures" ON "expenditures"."district_id" = "districts"."id"
ORDER BY "per_pupil_expenditure" DESC, "schools"."name"
;
