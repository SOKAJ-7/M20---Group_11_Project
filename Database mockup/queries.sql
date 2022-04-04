SELECT track_natural_key, count(*)
FROM track_features
INNER JOIN genre_data 
ON genre_data.genre = track_features.genre
GROUP BY track_natural_key
ORDER BY count(*) DESC;

SELECT *
FROM track_features
INNER JOIN genre_data
ON genre_data.genre = track_features.genre
WHERE track_natural_key = 'Beach House_Space Song';

SELECT *
FROM track_features
INNER JOIN album_data
ON album_data.album_id = track_features.album_id
WHERE track_natural_key = 'Frank Ocean_Lost';