# M20---Group 11 Project

## Database 
### March 20, 2022 notes
* Created ERD and schemas for dataset, splitting SpotifyFeatures.csv into two tables one for associated information per track ID and another for the track's audio features.
* [Images](/images/) of the provisional Postgres database with sample data provided.
* The resulting table joined on track_id can be exported as CSV to be used downstream for the machine learning model:
```
SELECT * 
FROM track_metadata as tm
INNER JOIN track_features as tf
ON (tm.track_id = tf.track_id)
```