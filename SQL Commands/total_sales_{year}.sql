SELECT
    COUNT(*)
FROM
    InvoiceLine il
INNER JOIN Invoice i USING(InvoiceId)
WHERE
    i.InvoiceDate LIKE '%2009%'
OR
    i.InvoiceDate LIKE '%2011%'