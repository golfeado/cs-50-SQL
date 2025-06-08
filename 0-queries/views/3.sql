SELECT COUNT(*) AS "Views of Hokusai with `Fuji` in its title" FROM "views"
WHERE "artist" = 'Hokusai' AND "english_title" LIKE '%Fuji%'
;
