-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "track_metadata" (
    "track_id" varchar   NOT NULL,
    "track_name" varchar   NOT NULL,
    "artist" varchar   NOT NULL,
    "genre" varchar   NOT NULL,
    CONSTRAINT "pk_track_metadata" PRIMARY KEY (
        "track_id"
     )
);

CREATE TABLE "track_features" (
    "track_id" varchar   NOT NULL,
    "acousticness" float   NOT NULL,
    "danceability" float   NOT NULL,
    "duration_ms" int   NOT NULL,
    "energy" float   NOT NULL,
    "instrumentalness" float   NOT NULL,
    "key" int   NOT NULL,
    "liveness" float   NOT NULL,
    "loudness" float   NOT NULL,
    "mode" int   NOT NULL,
    "popularity" int   NOT NULL,
    "speechiness" float   NOT NULL,
    "tempo" float   NOT NULL,
    "time_signature" integer   NOT NULL,
    "valence" float   NOT NULL,
    CONSTRAINT "pk_track_features" PRIMARY KEY (
        "track_id"
     )
);

ALTER TABLE "track_features" ADD CONSTRAINT "fk_track_features_track_id" FOREIGN KEY("track_id")
REFERENCES "track_metadata" ("track_id");

