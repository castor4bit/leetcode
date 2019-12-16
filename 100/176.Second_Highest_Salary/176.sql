# Write your MySQL query statement below
SELECT MAX(Salary) as SecondHighestSalary
FROM (
    SELECT Salary
    FROM Employee
    GROUP BY Salary
    ORDER BY Salary DESC
    LIMIT 1,1
) a
