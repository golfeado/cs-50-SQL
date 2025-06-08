SELECT COUNT(*) AS "Views of Hiroshige that refers to the `Eastern Capital`"
FROM "views"
WHERE "artist" = 'Hiroshige' AND "english_title" LIKE '%eastern capital%'
;
