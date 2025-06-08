SELECT "english_title" AS "Title", "artist" AS "Artist", "entropy" AS "Entropy level"
FROM "views"
WHERE "artist" = 'Hokusai'
ORDER BY "entropy" DESC
LIMIT 1
;
