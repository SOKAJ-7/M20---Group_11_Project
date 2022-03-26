![Concert_hall_rock_concert-1366x668 (1) (1)](https://user-images.githubusercontent.com/93050931/160220252-cf9e1863-fb74-4833-b9ad-bdfc3e844efb.jpg)






# Group 11: Spotify Song Popularity Predictor

## Creating a More Diverse Musical Landscape with Machine Learning
Music can bring people together. Our team shares a collective passion for music and to honor the creative dignity of artists, we created a machine learning algorithm that could diversify today's musical landscape. With the rise of big data, our group wondered how increased insights into listener preferences may influence the commercial success for certain genres. A scenario where leveraging data for profit as the main metric for success, instead of creativity for example, could ultimately result in a more homogenous music landscape.

Spotify is one of the largest music streaming services with 31% market share in [Q2 2021](https://www.midiaresearch.com/blog/music-subscriber-market-shares-q2-2021), boasting a healthy lead over competitor streaming services, such as Apple Music and Amazon Music. With such a large userbase and accessible content data via their web API, a Spotify dataset was ideal to train our machine learning model.

## Purpose of the Project
Our model has potential to make a song more successful in less popular genres and assist smaller artists in those genres reach a wider audience, thus increasing mainstream interest in the genre while helping smaller artists find greater financial success.

A Random Forest regression machine learning model was developed to predict the popularity of any given song provided with the following criteria:

- acousticness 
- danceability 
- duration 
- energy
- instrumentalness 
- key 
- liveness 
- loudness
- mode
- speechiness
- tempo
- time signature
- valence

For this dataset, popularity is a score (0-100, 100 being the most popular) calculated by a Spotify algorithm. The score is, in large part, representative of total historical track plays and how recent those plays are (among other metrics not disclosed by Spotify). We intend to subset our database of songs to a single genre to determine how the criteria listed above contributes to the popularity of a song in that genre specifically.

## Source Data
Our source data is a dataset from Kaggle called 'SpotifyFeatures.csv'. The dataset contains the name, track_id, genre, and artist name of 232,725 songs along with the target and feature variables listed in the 'Selected Topic' section of this README file. The songs listed in this dataset were all released in 2019 or earlier. The data contains no missing values but has many duplicate values which will need to be dropped from our dataset before using it. 

## Used Technologies
- PostgreSQL
- Python
- Jupyter Notebook.

## Database
* Edited ERD and schemas for dataset, consists of tables for artist_data, album_data and track_features
* Entity relationship diagram:
  ![ERD.png](/images/ERD.png)
* An [example](/images/mock_database_multiple_join.png) table joined on artist_id, track_id and album_id can be exported as CSV to be used downstream for the machine learning model:
```
SELECT * 
FROM album_data as ad
	INNER JOIN track_features as tf
	ON ad.album_id = tf.album_id
	INNER JOIN artist_data as rd
	ON tf.artist_id = rd.artist_id
```

## Questions to be answered
1. Our main question, what mix of sonic qualities make a song more popular in any given genre?
2. Which metrics have the highest impact on song popularity? Which has the least effect?
3. How does mean song popularity vary from genre to genre? Can we create a tiered-list of the most popular genres?
4. How much variance is there between the "ideal" song in each genre? Which genres are the most or least sonically similar?
5. Is it possible to assign a genre to a song accurately using the metrics used as feature variables for our algorithm

## Communication Protocols
Prior to designing our project each member shared their availability for all 7 days of the week with the rest of the group in a Whatsapp group chat. During this project, written communication will take place on the aforementioned Whatsapp chat as well as the Group chat on Slac. For vocal communication, our group will be meeting every Tuesday and Thursday for our scheduled class as well as scheduling additional meetings on the weekend as necessary. Information and documents that each member would like to share can also be posted to a group Google Docs document which has allowed for collaboration on designing the project and machine learning model. Additionally, each group member has been added to a GitHub where code was peer reviewed.