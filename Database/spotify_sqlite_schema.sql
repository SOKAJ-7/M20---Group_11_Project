CREATE TABLE albums (
    album_id varchar   NOT NULL,
    album_name varchar   NOT NULL,
    release_date date   NOT NULL,
    release_season varchar   NOT NULL,
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
    PRIMARY KEY (track_id)
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
    duration int   NOT NULL,
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

-- Query to generate spotify_all_tables table
SELECT tracks.track_name, 
    artists.artist_name, 
    albums.album_name, 
    rag.genre, 
    tracks.popularity, 
    af.*
FROM tracks
INNER JOIN audio_features as af
on af.track_id = t.track_id
INNER JOIN r_albums_tracks as rat
on rat.track_id = af.track_id
INNER JOIN r_albums_artist as raa
on raa.album_id = rat.album_id
INNER JOIN artists as a
on raa.artist_id = a.artist_id
INNER JOIN r_artist_genre as rag
on rag.artist_id = raa.artist_id;