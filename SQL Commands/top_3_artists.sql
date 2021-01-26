SELECT
    SUM(il.Quantity) as TrackSum,
    a.Name as ArtistName
FROM 
    InvoiceLine il
INNER JOIN Track t ON
    t.TrackId = il.TrackId
INNER JOIN Album al ON
    al.AlbumId = t.AlbumId
INNER JOIN Artist a ON
    al.ArtistId = a.ArtistId
GROUP BY a.ArtistId
ORDER BY TrackSum DESC
LIMIT 3
