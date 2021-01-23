SELECT
    InvoiceId,
    COUNT(InvoiceId) as InvoiceCount
FROM 
    InvoiceLine
GROUP BY
    InvoiceId