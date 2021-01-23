SELECT
    MAX(Total) as TotalSales,
    FirstName,
    LastName
FROM
    (SELECT
        SUM(i.Total) as "Total",
        e.FirstName,
        e.LastName
    FROM
        Invoice i
    INNER JOIN Customer c USING(CustomerId)
    INNER JOIN Employee e ON
        e.EmployeeId = c.SupportRepId
    GROUP BY
        e.EmployeeId)