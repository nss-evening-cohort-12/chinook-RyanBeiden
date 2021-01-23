SELECT 
    c.FirstName,
    c.LastName,
    i.InvoiceId,
    i.InvoiceDate,
    i.BillingCountry
FROM
    Invoice i
INNER JOIN Customer c USING(CustomerId)
WHERE
    BillingCountry == "Brazil"