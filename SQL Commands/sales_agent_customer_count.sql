SELECT 
    e.FirstName,
    e.LastName,
    COUNT(c.CustomerId)
FROM
    Employee e, Customer c
WHERE c.SupportRepId = e.EmployeeId
GROUP BY e.EmployeeId