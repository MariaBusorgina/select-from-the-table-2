CREATE TABLE IF NOT EXISTS Genre (
id SERIAL PRIMARY KEY,
genre_title VARCHAR(60) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Author (
id SERIAL PRIMARY KEY,
author_name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS Album (
id SERIAL PRIMARY KEY,
album_title VARCHAR(60) NOT NULL,
year INTEGER CHECK (year > 1990) NOT NULL 
);

CREATE TABLE IF NOT EXISTS GenreAuthors (
author_id INTEGER REFERENCES Author(id),
genre_id INTEGER REFERENCES Genre(id),
CONSTRAINT pk PRIMARY KEY(author_id, genre_id)
);

CREATE TABLE IF NOT EXISTS AlbumAuthors (
album_id INTEGER REFERENCES Album(id),
author_id INTEGER REFERENCES Author(id),
CONSTRAINT pk_2 PRIMARY KEY(album_id, author_id)
);

CREATE TABLE IF NOT EXISTS Track (
track_id SERIAL PRIMARY KEY,
track_title VARCHAR(60) NOT NULL,
album_id INTEGER REFERENCES Album(id),
time_track INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS Collection (
collection_id SERIAL PRIMARY KEY,
collection_title VARCHAR(60) NOT NULL,
year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS TrackCollections (
id_Track INTEGER REFERENCES Track(track_id),
id_Collection INTEGER REFERENCES Collection(collection_id),
CONSTRAINT pk_3 PRIMARY KEY(id_Track, id_Collection)
);