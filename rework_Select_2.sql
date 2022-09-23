---количество исполнителей в каждом жанре;
select genre_title, count(*) from genreauthors g2 
join genre g on g2.genre_id  = g.id 
group by genre_title;

---количество треков, вошедших в альбомы 2019-2020 годов
select year, count(*)  from track t  
join album a on t.album_id = a.id 
where year between 2019 and 2020
group by year;

---средняя продолжительность треков по каждому альбому;
select album_title, avg(time_track) from album a2  
join track t on a2.id = t.album_id
group by album_title;

---2.все исполнители, которые не выпустили альбомы в 2020 году;
select author_name from author a
where author_name != (select author_name from albumauthors a
	join author a2 on a.author_id = a2.id
	join album a3 on a.album_id  = a3.id 
	where a3.year = 2020);

---названия сборников, в которых присутствует конкретный исполнитель (выберите сами)
select distinct collection_title from collection c 
join trackcollections t on c.collection_id =t.id_collection 
join track t2 on t.id_track = t2.track_id 
join album a on t2.album_id = a.id 
join albumauthors a2 on a.id = a2.album_id 
join author a3 on a2.author_id = a3.id 
where author_name = 'author_2';

---название альбомов, в которых присутствуют исполнители более 1 жанра;
select album_title, count(distinct genre_title) from album a 
join albumauthors a2 on a.id = a2.album_id 
join author a3 on a2.author_id = a3.id 
join genreauthors g on a3.id = g.author_id 
join genre g2 on g.genre_id = g2.id
group by album_title
having count(album_title) > 1;

---наименование треков, которые не входят в сборники;
select track_title from track t 
left join trackcollections t2 on t.track_id = t2.id_track
where id_track is null;

---исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);
 select author_name from author a 
 join albumauthors a2 on a.id = a2.author_id 
 join track t on a2.album_id = t.album_id 
 where time_track = (select min(time_track) from track t2);

---название альбомов, содержащих наименьшее количество треков
select album_title, count(track_title) from album a 
join track t on t.album_id = a.id 
group by album_title
having count(track_title) = (select min(count) from (
	select track_title, count(track_title) from album a 
	join track t on t.album_id = a.id 
	group by track_title
	order by min(track_title)
	limit 1) as b
);

