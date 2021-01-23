SELECT
    Count(BillingCountry) as NumberOfInvoices,
    BillingCountry
FROM
    Invoice
GROUP BY
    BillingCountry