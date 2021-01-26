SELECT
    MAX(Total) as Total,
    MediaType
FROM
    (SELECT
        SUM(il.Quantity) as Total,
        m.Name as MediaType
    FROM 
        InvoiceLine il
    INNER JOIN Track t ON
        t.TrackId = il.TrackId
    INNER JOIN MediaType m ON
        m.MediaTypeId = t.MediaTypeId
    GROUP BY m.MediaTypeId)
