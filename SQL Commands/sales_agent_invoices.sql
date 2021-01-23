SELECT
    e.FirstName,
    e.LastName,
    i.*
FROM
    Employee e
INNER JOIN Customer c ON
    e.EmployeeId = c.SupportRepId
INNER JOIN Invoice i USING(CustomerId)
WHERE
    e.Title LIKE '%sales%'
    AND e.Title LIKE '%agent%'