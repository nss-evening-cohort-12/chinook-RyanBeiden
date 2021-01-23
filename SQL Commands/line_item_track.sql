SELECT
    i.*,
    t.name
FROM
    InvoiceLine i
INNER JOIN Track t USING (TrackId)