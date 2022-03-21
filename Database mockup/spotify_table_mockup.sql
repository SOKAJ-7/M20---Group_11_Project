-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Edited PK/FK constraints

CREATE TABLE track_metadata (
    track_id varchar   NOT NULL,
    track_name varchar   NOT NULL,
    artist_name varchar   NOT NULL,
    genre varchar   NOT NULL,
    PRIMARY KEY (track_id)
);

CREATE TABLE track_features (
    track_id varchar   NOT NULL,
    acousticness float   NOT NULL,
    danceability float   NOT NULL,
    duration_ms int   NOT NULL,
    energy float   NOT NULL,
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
    FOREIGN KEY (track_id) REFERENCES track_metadata (track_id)
);


