CREATE TABLE genre_data (
    genre varchar   NOT NULL,
    PRIMARY KEY (genre)
);

CREATE TABLE album_data (
    album_id varchar   NOT NULL,
    album_name varchar   NOT NULL,
    PRIMARY KEY (album_id)
);

CREATE TABLE track_features (
    track_name varchar   NOT NULL,
    artist_name varchar   NOT NULL,
    track_id varchar   NOT NULL,
    album_id varchar   NOT NULL,
    acousticness float   NOT NULL,
    danceability float   NOT NULL,
    duration_mins time   NOT NULL,
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
    PRIMARY KEY (track_id, genre)
);