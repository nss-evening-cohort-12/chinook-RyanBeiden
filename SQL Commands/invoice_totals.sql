SELECT
    e.FirstName as EmployeeFirstName,
    e.LastName as EmployeeLastName,
    c.FirstName as CustomerFirstName,
    c.LastName as CustomerLastName,
    i.Total,
    i.BillingCountry
FROM
    Employee e
INNER JOIN Customer c ON
    e.EmployeeId = c.SupportRepId
INNER JOIN Invoice i USING(CustomerId)
WHERE
    e.Title LIKE '%sales%'
    AND e.Title LIKE '%agent%'