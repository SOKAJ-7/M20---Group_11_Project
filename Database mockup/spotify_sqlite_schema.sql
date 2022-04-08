CREATE TABLE albums (
    album_id varchar   NOT NULL,
    album_name varchar   NOT NULL,
    PRIMARY KEY (album_id)
);

CREATE TABLE artists (
    artist_name varchar   NOT NULL,
    artist_id varchar   NOT NULL,
    followers varchar   NOT NULL,
    PRIMARY KEY (artist_id)
);

CREATE TABLE r_artist_genre (
    genre varchar   NOT NULL,
    artist_id varchar   NOT NULL,
    PRIMARY KEY (artist_id)
);

CREATE TABLE r_albums_tracks (
    album_id varchar   NOT NULL,
    track_id varchar   NOT NULL,
    PRIMARY KEY (artist_id)
);

CREATE TABLE r_albums_artists (
    album_id varchar   NOT NULL,
    artist_id varchar   NOT NULL,
    PRIMARY KEY (artist_id)
);

CREATE TABLE audio_features (
    track_id varchar   NOT NULL,
    acousticness float   NOT NULL,
    danceability float   NOT NULL,
    duration_mins time   NOT NULL,
    duration_ms int   NOT NULL,
    energy float   NOT NULL,
    instrumentalness float   NOT NULL,
    key int   NOT NULL,
    liveness float   NOT NULL,
    loudness float   NOT NULL,
    mode int   NOT NULL,
    speechiness float   NOT NULL,
    tempo float   NOT NULL,
    time_signature integer   NOT NULL,
    valence float   NOT NULL,
    PRIMARY KEY (track_id)
);

CREATE TABLE tracks (
    track_id varchar   NOT NULL,
    track_name varchar   NOT NULL,
    popularity int   NOT NULL,
    PRIMARY KEY (artist_id)
);