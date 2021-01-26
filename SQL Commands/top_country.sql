SELECT
    MAX(InvoiceTotal) as Total,
    Country
FROM
    (SELECT
        ROUND(SUM(total), 2) as InvoiceTotal,
        BillingCountry as Country
    FROM
        Invoice
    GROUP BY
        BillingCountry)