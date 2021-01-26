SELECT
    SUM(il.Quantity) as TrackCount,
    t.Name as TrackName
FROM 
    InvoiceLine il
INNER JOIN Invoice i USING(InvoiceId)
INNER JOIN Track t USING(TrackId)
GROUP BY il.TrackId
ORDER BY TrackCount DESC
LIMIT 5
