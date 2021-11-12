SELECT bands.name AS 'Band Name'
FROM bands
LEFT JOIN albums ON bands.id = albums.band_id
GROUP BY bands.id
HAVING COUNT(albums.id) = 0;
