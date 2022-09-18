insert into Author (author_name) 
values ('author_1');

insert into Author (author_name) 
values ('author_2');

insert into Author (author_name) 
values ('author_3');

insert into Author (author_name) 
values ('author_4');

insert into Author (author_name) 
values ('author_5');

insert into Author (author_name) 
values ('author_6 bm');

insert into Author (author_name) 
values ('author_7');

insert into Author (author_name) 
values ('author_8');

insert into Genre (genre_title) 
values ('pop');

insert into Genre (genre_title) 
values ('rock');

insert into Genre (genre_title) 
values ('disco');

insert into Genre (genre_title) 
values ('jazz');

insert into Genre (genre_title) 
values ('electronic');

insert into Album (album_title, year)
values ('album_1', 2002);

insert into Album (album_title, year)
values ('album_2', 2015);

insert into Album (album_title, year)
values ('album_3', 2012);

insert into Album (album_title, year)
values ('album_4', 2011);

insert into Album (album_title, year)
values ('album_5', 2002);

insert into Album (album_title, year)
values ('album_6', 2001);

insert into Album (album_title, year)
values ('album_7', 2009);

insert into Album (album_title, year)
values ('album_8', 2020);

insert into Track (track_title, album_id, time_track)
values ('my track_1', 7, 120);

insert into Track (track_title, album_id, time_track)
values ('my track_2', 6, 200);

insert into Track (track_title, album_id, time_track)
values ('track_3', 5, 240);

insert into Track (track_title, album_id, time_track)
values ('track_4', 4, 215);

insert into Track (track_title, album_id, time_track)
values ('track_5', 3, 120);

insert into Track (track_title, album_id, time_track)
values ('track_6', 2, 60);

insert into Track (track_title, album_id, time_track)
values ('track_7', 1, 120);

insert into Track (track_title, album_id, time_track)
values ('my track_8', 8, 220);

insert into Track (track_title, album_id, time_track)
values ('track_9', 1, 250);

insert into Track (track_title, album_id, time_track)
values ('track_10', 2, 120);

insert into Track (track_title, album_id, time_track)
values ('my track_11', 3, 60);

insert into Track (track_title, album_id, time_track)
values ('track_12', 4, 120);

insert into Track (track_title, album_id, time_track)
values ('track_13', 5, 170);

insert into Track (track_title, album_id, time_track)
values ('track_14', 6, 220);

insert into Track (track_title, album_id, time_track)
values ('track_15', 7, 120);

insert into Track (track_title, album_id, time_track)
values ('track_16', 7, 120);

insert into Collection (collection_title, year)
values ('collection_1', 2022);

insert into Collection (collection_title, year)
values ('collection_2', 2020);

insert into Collection (collection_title, year)
values ('collection_3', 2019);

insert into Collection (collection_title, year)
values ('collection_4', 2018);

insert into Collection (collection_title, year)
values ('collection_5', 2017);

insert into Collection (collection_title, year)
values ('collection_6', 2016);

insert into Collection (collection_title, year)
values ('collection_7', 2015);

insert into Collection (collection_title, year)
values ('collection_8', 2014);

insert into GenreAuthors (author_id, genre_id)
values (1, 5);

insert into GenreAuthors (author_id, genre_id)
values (2, 4);

insert into GenreAuthors (author_id, genre_id)
values (3, 3);

insert into GenreAuthors (author_id, genre_id)
values (4, 2);

insert into GenreAuthors (author_id, genre_id)
values (5, 1);

insert into GenreAuthors (author_id, genre_id)
values (6, 5);

insert into GenreAuthors (author_id, genre_id)
values (7, 4);

insert into GenreAuthors (author_id, genre_id)
values (8, 3);

insert into AlbumAuthors (album_id, author_id)
values (1, 8);

insert into AlbumAuthors (album_id, author_id)
values (1, 7);

insert into AlbumAuthors (album_id, author_id)
values (1, 2);

insert into AlbumAuthors (album_id, author_id)
values (2, 7);

insert into AlbumAuthors (album_id, author_id)
values (3, 6);

insert into AlbumAuthors (album_id, author_id)
values (4, 5);

insert into AlbumAuthors (album_id, author_id)
values (5, 4);

insert into AlbumAuthors (album_id, author_id)
values (6, 3);

insert into AlbumAuthors (album_id, author_id)
values (7, 2); 

insert into AlbumAuthors (album_id, author_id)
values (8, 1);

insert into TrackCollections (id_Track, id_Collection)
values (1, 1);

insert into TrackCollections (id_Track, id_Collection)
values (2, 2);

insert into TrackCollections (id_Track, id_Collection)
values (3, 3);

insert into TrackCollections (id_Track, id_Collection)
values (4, 4);

insert into TrackCollections (id_Track, id_Collection)
values (5, 5);

insert into TrackCollections (id_Track, id_Collection)
values (6, 6);

insert into TrackCollections (id_Track, id_Collection)
values (7, 7);

insert into TrackCollections (id_Track, id_Collection)
values (8, 8);

insert into TrackCollections (id_Track, id_Collection)
values (9, 1);

insert into TrackCollections (id_Track, id_Collection)
values (10, 2);

insert into TrackCollections (id_Track, id_Collection)
values (11, 3);

insert into TrackCollections (id_Track, id_Collection)
values (12, 4);

insert into TrackCollections (id_Track, id_Collection)
values (13, 5);

insert into TrackCollections (id_Track, id_Collection)
values (14, 6);

insert into TrackCollections (id_Track, id_Collection)
values (15, 7);
