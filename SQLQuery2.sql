SELECT
    Id,
    Title,
    SongLength,
    ReleaseDate,
    GenreId,
    ArtistId,
    AlbumId
FROM Song;

SELECT
    Id,
    Title,
    SongLength,
    ReleaseDate,
    GenreId,
    ArtistId,
    AlbumId
FROM Song
WHERE SongLength > 100;

SELECT s.Title,
       a.ArtistName
  FROM Song s
       LEFT JOIN Artist a on s.ArtistId = a.id;

SELECT * FROM Genre;

SELECT * FROM Artist ORDER BY ArtistName ASC;

SELECT s.Title,
       a.ArtistName,
       a.Id,
       a.ArtistName from Song s 
       JOIN Artist a on s.ArtistId = a.Id;

SELECT * FROM Artist a
        JOIN Album al on a.id = al.ArtistId
        JOIN Genre g on al.GenreId = g.Id
        WHERE al.GenreId = 7

INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('Hot Mulligan', 2015)

SELECT * FROM Genre;
INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
VALUES ('You’ll Be Fine',2020-01-01, 2000, 'No Sleep Records', 28, 9)

SELECT * FROM Album
INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
VALUES ('SPS', 230, 2020-01-01, 9, 28, 25)
INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
VALUES ('OG Bule Sky', 230, 2020-01-01, 9, 28, 25)

SELECT s.Title, al.Title, a.ArtistName
FROM Album al
LEFT JOIN Song s on s.AlbumId = al.Id
LEFT jOIN Artist a on al.ArtistId = a.Id
WHERE a.ArtistName = 'Hot Mulligan'

SELECT a.Title, COUNT(s.Id) AS '# of songs'
FROM Album a
LEFT JOIN Song s on a.Id = s.AlbumId
GROUP BY a.Title

SELECT a.ArtistName, COUNT(s.Id) as '# of songs'
FROM Artist a
LEFT JOIN Song s on s.ArtistId = a.Id
GROUP BY a.ArtistName

SELECT g.Name, COUNT(s.Id) as '# of songs'
FROM Genre g
LEFT JOIN Song s ON s.GenreId = g.Id
GROUP BY g.Name

SELECT a.ArtistName, COUNT(al.Label) AS '# of labels'
FROM Artist a
LEFT JOIN Album al ON al.ArtistId = a.Id
GROUP BY a.ArtistName
HAVING COUNT(DISTINCT al.Label) > 1

SELECT al.Title, 
       al.AlbumLength
FROM Album al 
WHERE AlbumLength = (SELECT MAX(AlbumLength) FROM Album)

--ALTERNATIVE:
--SELECT TOP 1 al.Title, MAX(al.AlbumLength)
--FROM Album al
--GROUP BY al.title
--ORDER BY MAX(al.AlbumLength) DESC

SELECT s.Title, s.SongLength
FROM Song s
WHERE s.SongLength = (SELECT MAX(s.SongLength) FROM Song s)

SELECT * FROM Song ORDER BY SongLength DESC

SELECT s.Title, s.SongLength, a.Title
FROM Song s
JOIN Album a ON s.AlbumId = a.Id
WHERE s.SongLength = (SELECT MAX(s.SongLength) FROM Song s)









