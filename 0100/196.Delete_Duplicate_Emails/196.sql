DELETE FROM Person
WHERE Id IN (
  SELECT Id
  FROM (
    SELECT * FROM Person p1
    WHERE EXISTS (
      SELECT * FROM Person p2
      WHERE p1.Email = p2.Email
        AND p1.Id > p2.Id
    )
  ) a
)
