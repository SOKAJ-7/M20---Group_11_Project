![this is picture](https://github.com/SOKAJ-7/M20---Group_11_Project/blob/main/screenshots/github.png)






# Group 11: Spotify Song Popularity Predictor

[Presentation Slides](https://docs.google.com/presentation/d/1ss1A2awXBqLZalN5tS-lgd4YEhbEr5G-roDdLKwtnSI/edit?usp=sharing)

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
     - sklearn
     - imblearn
     - pandas
     - numpy
     - matplotlib
- Jupyter Notebook.


## Exploratory data analysis (EDA) 
After importing the dependencies and checking the shape of the data we tried to show few check points in Spotify as shown below:

1.As the picture shows we can see for example that the artist_name have the value close to 10,000 and for the track_name we have a value greater than 30,000.

![pic](https://github.com/SOKAJ-7/M20---Group_11_Project/blob/main/images/eda_1.png)

2. Next we removed all the unconventional or non-musical genres to summarize general musical trends. The most popular genre in our dataset is Singer-Songwriter.

![](https://github.com/SOKAJ-7/M20---Group_11_Project/blob/main/images/eda_2.png)

3. This table show us the mean, the standard deviation, the minimum value, the maximum value and the quartiles for popularity, which is our most important feature.

![pic](https://github.com/SOKAJ-7/M20---Group_11_Project/blob/main/images/eda_3.png)

4.All of the histograms below have the number of songs on the y-axis.
This following histogram shows the feature (speachness):Detects the presence of spoken words in a track. The more exclusively speech-like the recording , the closer the attribute value is to 1.0.

![pic](https://github.com/SOKAJ-7/M20---Group_11_Project/blob/main/images/eda_4.png)

5.The histogram shows the feature (instrumentalness):Predicts whether a track contains no vocals. Sounds such as "ooh" and "aah" are treated as instrumental in this context. Rap or spoken word tracks are clearly "vocal". The higher the value, the greater the likelihood that the track contains no vocal content. Values above 0.5 are intended to represent instrumental tracks, but the confidence is higher as the value approaches 1.0.

![pic](https://github.com/SOKAJ-7/M20---Group_11_Project/blob/main/images/eda_5.png)

6. This histogram shows the feature (danceability): Describes how suitable a track is for dancing based on a combination of musical elements including tempo, rhythm stability, beat strength, and overall regularity. The higher the value, the easier it is to dance to the song.

![pic](https://github.com/SOKAJ-7/M20---Group_11_Project/blob/main/images/eda_6.png)

7.This histogram show the feature (acousticness):A measure of whether the track is acoustic (i.e. not having electrical amplification). The higher the value, the more acoustic the song.

![pic](https://github.com/SOKAJ-7/M20---Group_11_Project/blob/main/images/eda_7.png)

8. This histogram shows the feature (loudness):The overall loudness of a track in decibels (dB). Loudness values are averaged across the entire track and are useful for comparing relative loudness of tracks.

![pic](https://github.com/SOKAJ-7/M20---Group_11_Project/blob/main/images/eda_8.png)
 
9. This histogram shows the feature (liveness):Detects the presence of an audience in the recording. Higher liveness values represent an increased probability that the track was performed live. A value above 0.8 provides a strong likelihood that the track is live.
 
![pic](https://github.com/SOKAJ-7/M20---Group_11_Project/blob/main/images/eda_9.png)
 
10.This histogram shows the feature (tempo):The overall estimated tempo of a track in beats per minute (BPM). In musical terminology, tempo is the speed or pace of a given piece, and derives directly from the average beat duration.

![pic](https://github.com/SOKAJ-7/M20---Group_11_Project/blob/main/images/eda_10.png)
 
11. This histogram show the feature (valence):Describes the musical positiveness conveyed by a track. Tracks with a higher valence sound more positive (i.e. happy, cheerful, euphoric), while tracks with low valence convey a more negative sound (i.e. sad, depressed, angry)

![pic](https://github.com/SOKAJ-7/M20---Group_11_Project/blob/main/images/eda_11.png)

12. This histogram show the feature(energy):Represents a perceptual measure of intensity and activity - the higher the value, the more energetic the song. Typically, energetic tracks feel fast, loud, and noisy. For example, death metal has a high energy, while a Bach prelude scores low on the scale. Perceptual features contributing to this attribute include dynamic range, perceived loudness, timbre, onset rate, and general entropy. 

![pic](https://github.com/SOKAJ-7/M20---Group_11_Project/blob/main/images/eda_12.png)
 
13.This histogram show the feature(popularity):is a score (0-100, 100 being the most popular) calculated by a Spotify algorithm,the closer to 100 the more popular the songs is.

![pic](https://github.com/SOKAJ-7/M20---Group_11_Project/blob/main/images/eda_13.png)
 
 

## Database
Records were written into the database using a connection string (SQLAlchemy) in the [data processing notebook](/Notebooks/data_processing_spotify_sqlite.ipynb) and according to the below entity relationship diagram:
```
# Imports
from sqlalchemy import create_engine
import psycopg2 
from config import db_password

# Create connection to database
db_string = f"postgresql://postgres:{db_password}@127.0.0.1:5432/spotify_db"

# instantiate engine
engine = create_engine(db_string)

Albums.to_sql(name='albums', con=engine, if_exists='replace', index=False)
Artists.to_sql(name='artists', con=engine, if_exists='replace', index=False)
Audio_features.to_sql(name='audio_features', con=engine, if_exists='replace', index=False)
R_artist_genre.to_sql(name='r_artist_genre', con=engine, if_exists='replace', index=False)
R_albums_tracks.to_sql(name='r_albums_tracks', con=engine, if_exists='replace', index=False)
R_albums_artists.to_sql(name='r_albums_artists', con=engine, if_exists='replace', index=False)
Tracks.to_sql(name='tracks', con=engine, if_exists='replace', index=False)
```

Entity relationship diagram of the Spotify database consists of seven tables:
![ERD.png](/images/ERD.png)

The dataset to be used downstream for the dashboard and machine learning model was generated through a series of [joins](/images/spotify_db_inner_join.png):
```
SELECT tracks.track_name, 
    artists.artist_name, 
    albums.album_name, 
    rag.genre, 
    tracks.popularity, 
    af.*
FROM tracks
INNER JOIN audio_features as af
ON af.track_id = tracks.track_id
INNER JOIN r_albums_tracks as rat
ON rat.track_id = af.track_id
INNER JOIN albums
ON rat.album_id = albums.album_id
INNER JOIN r_albums_artists as raa
ON raa.album_id = rat.album_id
INNER JOIN artists 
ON raa.artist_id = artists.artist_id
INNER JOIN r_artist_genre as rag
ON rag.artist_id = raa.artist_id;
```
The resulting table, spotify_all_tables, was exported as CSV and then hosted on an [AWS S3 bucket](https://dyl-lee-bucket.s3.amazonaws.com/spotify_all_tables.csv). spotify_all_tables contains 5156587 unique track_id's and 5460 unique genres. Many of these genres are variations of alternatives of generic genres (e.g. Red Hot Chili Peppers are classified as alternative rock, funk rock as well as rock). The decision to keep these alternative genres in the dataset was meant to keep options open for transformations, including reducing the alternative genres to the generic ones if necessary.

![unique_track_ids.png](/images/spotify_db_distinct_tracks.png)
![unique_genres.png](/images/spotify_db_genre_groupby.png)
![rhcp_example.png](/images/spotify_db_distinct_genre_RHCP.png)

## Questions to be answered
1. Our main question, what mix of audio features make a song more popular in any given genre?
2. Which metrics have the highest impact on song popularity? Which has the least effect?
3. How does mean song popularity vary from genre to genre? Can we create a tiered-list of the most popular genres?
4. How much variance is there between the "ideal" song in each genre? Which genres are the most or least sonically similar?
5. Is it possible to assign a genre to a song accurately using the metrics used as feature variables for our algorithm

## Communication Protocols
Prior to designing our project each member shared their availability for all 7 days of the week with the rest of the group in a Whatsapp group chat. During this project, written communication will take place on the aforementioned Whatsapp chat as well as the Group chat on Slac. For vocal communication, our group will be meeting every Tuesday and Thursday for our scheduled class as well as scheduling additional meetings on the weekend as necessary. Information and documents that each member would like to share can also be posted to a group Google Docs document which has allowed for collaboration on designing the project and machine learning model. Additionally, each group member has been added to a GitHub where code was peer reviewed.

## Our Machine Learning Model

### Model Choice
For our machine learning model, we chose to use a Random Forest Regressor. Listed below are some of the reasons we chose this model:
- **Feature importance**: This is important to our project as we aim to determine which aspects of a song in each genre should be intensified or dulled to maximize popularity. If we chose a model that could not rank feature importance, this task would be near-impossible.
- **Good at handling both categorical and numerical data**: Our dataset contains multiple columns of both data types.
- **Robust to outliers**: Three of our features-of-interest have over 10,000 outliers: duration (11,487); loudness (11,525); and instrumentalness (39,670).
- **No need for scaling/normalization**: Because Random Forests are decision-tree based algorithms, there is no need to scale or normalize our data. This makes our preprocessing tasks simpler.
- **Simplicity**: The coding for Random Forests is relatively straight-forward, especially when combined with the lack of a need for feature engineering. They also do not need much parameter tuning to create a decent model.

Random Forests do not come without any drawbacks, however:
- **Outputs can be hard to interpret**: Random Forests can be described as ‘black boxes’, where the sheer number of trees created can make user-interpretation difficult.
- **Computationally costly**: Random forests create many trees and as a result can take up lots of memory and be slow to evaluate data.

Overall, the ability of Random Forests to create a simple, accurate, and robust model combined with its ability to rank feature importance makes it an optimal choice for our project.

### Preliminary Data Preprocessing
The first preprocessing task to accomplish is to subset our dataframe for the genre we wish to examine. After subsetting our dataframe for our chosen genre, the columns ‘genre’, ‘artist_name’, ‘track_name’, and ‘track_id’ will be dropped as they are identification variables and have no impact on our machine learning model.  Next, categorical variables like ‘mode’ and ‘key’ will be encoded using pandas’ “get_dummies” function or sklearn’s “onehotencoder”.  

The resulting dataframe will have the ‘popularity’ column dropped and the ‘. values’ function applied to create the features array (X). The target (y) array will be the ‘popularity’ column that was dropped to create the features array. Lastly, sklearn’s ‘.train_test_split()’ function will be used to create a test and training set for both our feature and target arrays. After all this is accomplished, our data will be ready to be used in our Random Forest model.

### Preliminary Feature Selection and Engineering
Features to be used in our model were selected based on exploratory data analysis (EDA) on each feature in combination with practical considerations. Based on these guidelines, the following columns were selected to be dropped from our model:
- **Time Signature**: ~95% of all songs in the dataset have a time signature of ‘4/4’. The overwhelming number of songs in this time signature means that this feature will not likely add value to our model.
- **Liveness**: Less than 10% of the songs in our dataset have an above 40% chance of being a live recording. Additionally, the purpose of our project is to help artist write songs that will be recorded in-studio. Whether a song is performed live has no effect on the songwriting process and so, ‘liveness’ is not important to our model.
- **Acousticness**: This feature should only be dropped depending on the genre being examined in our model. Some genres will naturally be more acoustic like folk or country while genres like electronic music will be overwhelmingly not acoustic.
- **Speechiness**: Only 12% of the songs in our dataset have ‘speechiness’ values above 0.2. There is an overall lack of diversity in the ‘speechiness’ values across all genres of interest. Additionally, this measure is poorly correlated with song popularity with a correlation coefficient of 0.1. Other than the ‘liveness’ feature, there is no other more poorly correlated feature with popularity.
 
As mentioned in our ‘Model Choice’ section, a main benefit of using a Random Forest model is that it does not require much feature engineering. So, no scaling or normalization of our data will need to be done for our model. Furthermore, binning of our data had no significant impact on the accuracy of our model. 

## Changes to the Model Since Deliverable 2
As mentioned in the sections above, our original thought process for our machine learning model was to use a RandomForestRegressor() model. However, upon carrying out the regressor model we realized that our target variable may be too hard to predict accurately using regression. The R-squared value of the regression model was extremely low, ~0.05. With a mean square error of ~52.00 and a root mean square error of ~7.00. These measurements indicate a model that is highly innaccurate and would not be of much use to any prospective users. Thus, we decided to use a RandomForestClassifier() model to acheive our desired results. We decided to stick with using a Random Forest model as it would retain many of the benefits of the regressor model but allow us to have more control over the target feature (popularity) to increase the accuracy of our model.

With this change in model selection, the 'popularity' column of our data frame needed to be binned to ensure relatively even distribution amongst the different classes of the target feature. This proved to be a very difficult task as songs in the 50-70 range of popularity were vastly over-represented in most genres of our dataset. This led to highly biased predictions and uninformative confusion matrices (see 'Performance Metrics and Accuracy Score' below). This problem limited the number of bins we could group our popularity column into as if we used too many bins, there would inevitably be a few which were drastically over-represented. We settled at creating 3 bins: 'Unpopular (0-35)', 'Average (35-60)', and 'Popular (60-100)'. These bins provided the best compromise between specificity of classification and model accuracy.

To account for any additional class imbalance we further employed various sampling strategies which we hoped would improve our model's performance metrics (See 'Training' below).

## Training
Our data was trained with various datasets based on resampling techniques. In our original train/test split, we used 50% of the data for each split, this number was chosen as it resulted in the most balanced classes in our training set. To improve on class balancing, we employed oversampling, undersampling, and SMOTEENN combination sampling. Our model was then trained using data resulting from each of these sampling techniques along with one model that was trained without any resampling.

## Performance Metrics and Accuracy Score
The performance metrics for our model are difficult to definitively quantify as our model will perform slightly differently based on the genre that our training set is based on. To come up with estimates of our model metrics. We will run each model on 3 different genres and take the mean metric scores to represent our model.

### No resampling
**Mean Model Accuracy**: (0.46 + 0.53 + 0.44)/3 = 0.48

### Undersampling
**Mean Model Accuracy**: (0.42 + 0.44 + 0.37)/3 = 0.41

### Oversampling
**Mean Model Accuracy**: (0.44 + 0.42 + 0.37)/3 = 0.41

### SMOTEENN
**Mean Model Accuracy**: (0.35 + 0.22 + 0.27)/3 = 0.28

Based on these accuracy scores, it is clear that our model performs best without any resampling techniques. However, our mean model score does not tell the entire story. When our model is evaluated on a per-class basis by a multiclass confusion matrix, it performs much better. Below is a multi-class matrix for our under-sampling model for the 'latin' genre. The mean model accuracy was 0.37 but our multilabel confusion matrix scores our model's accuracy around 0.58.

![Undersample_scores](https://user-images.githubusercontent.com/93050931/162639178-3df9797f-b656-4c76-901a-1fa517ecfbcf.png)

(*An example of our model's performance metrics when analyzed on a per-class basis*)




