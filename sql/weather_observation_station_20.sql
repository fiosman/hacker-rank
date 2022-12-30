SELECT ROUND(AVG(LAT_N), 4)
FROM (SELECT LAT_N,
             ROW_NUMBER() OVER (ORDER BY LAT_N) AS RowNumber,
             COUNT(*) OVER () as cnt
      FROM STATION
     ) s
WHERE 2 * RowNumber IN (CNT, CNT + 1, CNT + 2);