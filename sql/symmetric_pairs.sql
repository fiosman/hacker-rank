SELECT
    distinct f1.X, f1.Y
FROM
    (select *, row_number() over(order by X asc) as id from functions) f1
INNER JOIN (select *, row_number() over(order by X asc) as id from functions) f2
    ON f1.Y = f2.X
    AND f1.X = f2.Y
WHERE f1.X <= f1.Y
and f1.id != f2.id
ORDER BY f1.X asc