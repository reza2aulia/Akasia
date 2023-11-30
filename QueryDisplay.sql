SELECT
    a.EmployeeId,
    a.FullName,
    a.BirthDate,
    a.Address,
    b.PosId,
    b.PosTitle,
    b.StartDate,
    b.EndDate
FROM
    Employee a
JOIN
    PositionHistory b ON a.EmployeeId = b.EmployeeId