SELECT
    MAX(TrackCount) as Track,
    TrackName
FROM
    (SELECT
        SUM(il.Quantity) as TrackCount,
        il.TrackId,
        t.Name as TrackName,
        i.InvoiceDate
    FROM 
        InvoiceLine il
    INNER JOIN Invoice i USING(InvoiceId)
    INNER JOIN Track t USING(TrackId)
    WHERE strftime('%Y', i.InvoiceDate) = '2013'
    GROUP BY il.TrackId)
