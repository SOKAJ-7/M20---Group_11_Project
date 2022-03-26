CREATE TABLE artist_data (
    artist_id varchar   NOT NULL,
    artist_name varchar NOT NULL,
    followers int   NOT NULL,
    PRIMARY KEY (artist_id)
);

CREATE TABLE album_data (
    album_name varchar   NOT NULL,
    album_id varchar   NOT NULL,
    release_date date   NOT NULL,
    PRIMARY KEY (album_id)
)

CREATE TABLE track_features (
    track_name varchar   NOT NULL,
    track_id varchar   NOT NULL,
    artist_id varchar   NOT NULL,
    album_id varchar   NOT NULL,
    acousticness float   NOT NULL,
    danceability float   NOT NULL,
    duration_ms int   NOT NULL,
    energy float   NOT NULL,
    genre varchar   NOT NULL,
    instrumentalness float   NOT NULL,
    key int   NOT NULL,
    liveness float   NOT NULL,
    loudness float   NOT NULL,
    mode int   NOT NULL,
    popularity int   NOT NULL,
    speechiness float   NOT NULL,
    tempo float   NOT NULL,
    time_signature integer   NOT NULL,
    valence float   NOT NULL,
    FOREIGN KEY (album_id) REFERENCES album_data (album_id)
    FOREIGN KEY (artist_id) REFERENCES artist_data (artist_id)
);


