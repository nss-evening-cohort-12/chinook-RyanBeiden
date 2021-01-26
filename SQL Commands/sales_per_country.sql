SELECT
    printf("$%.f", SUM(total)) as InvoiceTotal,
    BillingCountry as Country
FROM
    Invoice
GROUP BY
    BillingCountry