SELECT
    i.*,
    t.name as TrackName,
    a.name as ArtistName
FROM
    InvoiceLine i
INNER JOIN Track t USING(TrackId)
INNER JOIN Album USING(AlbumId)
INNER JOIN Artist a USING(ArtistId)