SELECT
    COUNT(il.InvoiceLineid) as NumberOfLineItems,
    i.*
FROM
    Invoice i
INNER JOIN InvoiceLine il USING(InvoiceId)
GROUP BY
    i.InvoiceId