SELECT
    SUM(i.total) as InvoiceTotal,
    e.FirstName as EmployeeFN,
    e.LastName as EmployeeLN
FROM
    Invoice i
INNER JOIN Customer c USING(CustomerId)
INNER JOIN Employee e ON
    e.EmployeeId = c.SupportRepId
GROUP BY
    e.EmployeeId
