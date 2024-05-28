DROP TABLE IF EXISTS staging_events;
DROP TABLE IF EXISTS staging_songs;
DROP TABLE IF EXISTS songplay;
DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS song;
DROP TABLE IF EXISTS artist;
DROP TABLE IF EXISTS time;


CREATE TABLE IF NOT EXISTS staging_events (
artist VARCHAR(255),
auth VARCHAR(50),
firstName VARCHAR(50),
gender VARCHAR(20),
iteminSession INT,
lastName VARCHAR(50),
length FLOAT,
level VARCHAR(20),
location VARCHAR(255),
method VARCHAR(20),
page VARCHAR(20),
registration FLOAT,
sessionid INT,
song VARCHAR(255),
status INT,
ts BIGINT,
userAgent VARCHAR(255),
userid INT);


CREATE TABLE IF NOT EXISTS staging_songs ( 
num_songs INT NOT NULL, 
artist_id VARCHAR(50),
artist_latitude FLOAT,
artist_longitude FLOAT,
artist_location VARCHAR(65535),
artist_name VARCHAR(65535),
song_id VARCHAR(50),
title VARCHAR(65535),
duration FLOAT,
year INT NOT NULL);


CREATE TABLE IF NOT EXISTS songplays (
    songplay_id BIGINT PRIMARY KEY,
    start_time TIMESTAMP,
    user_id INT,
    level VARCHAR(10),
    song_id VARCHAR(50),
    artist_id VARCHAR(255),
    session_id INT,
    location VARCHAR(255),
    user_agent TEXT
);

CREATE TABLE IF NOT EXISTS users (
    user_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(10),
    level VARCHAR(10)
);

CREATE TABLE IF NOT EXISTS songs (
    song_id VARCHAR(50),
    title VARCHAR(255),
    artist_id VARCHAR(50),
    year INT,
    duration FLOAT
);

CREATE TABLE IF NOT EXISTS artists (
    artist_id VARCHAR(50),
    name VARCHAR(255),
    location VARCHAR(255),
    latitude FLOAT,
    longitude FLOAT
);

CREATE TABLE IF NOT EXISTS time (
    start_time TIMESTAMP,
    hour INT,
    day INT,
    week INT,
    month INT,
    year INT,
    weekday INT
);

SELECT * FROM stl_load_errors
