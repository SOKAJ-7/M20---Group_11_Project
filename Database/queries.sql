-- To find total number of songs
select count(*) 
FROM track_features as tf
INNER JOIN album_data as ad
ON tf.album_id = ad.album_id

-- To find total number of unique genres
SELECT genre, COUNT(*) 
FROM track_features AS tf
INNER JOIN album_data AS ad
ON tf.album_id = ad.album_id
GROUP BY genre
ORDER BY count(*) DESC;

-- To merge and eventually generate spotify_merged.csv 
SELECT tf.track_name,
	tf.artist_name,
	ad.album_name,
	tf.release_date,
	tf.release_season,
	tf.album_id,
	tf.track_id,
	tf.danceability,
	tf.duration_mins,
	tf.energy,
	tf.genre,
	tf.key,
	tf.mode,
	tf.speechiness,
	tf.tempo,
	tf.valence
-- INTO spotify_merged
FROM track_features as tf
INNER JOIN album_data as ad
ON tf.album_id = ad.album_id