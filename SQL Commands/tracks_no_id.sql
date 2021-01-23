SELECT
    t.Name as Track,
    a.Title as Album,
    mt.Name as MediaType,
    g.Name as Genre
FROM
    Track t
INNER JOIN Album a USING(AlbumId)
INNER JOIN MediaType mt USING(MediaTypeId)
INNER JOIN Genre g USING(GenreId)