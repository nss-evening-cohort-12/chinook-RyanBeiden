SELECT
    COUNT(pt.PlaylistId) as TrackCount,
    p.name as PlaylistName
FROM
    PlaylistTrack pt
INNER JOIN Playlist p USING(PlaylistId)
INNER JOIN Track t USING(TrackId)
GROUP BY
    PlaylistId