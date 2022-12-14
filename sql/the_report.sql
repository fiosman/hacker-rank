SELECT 
CASE 
    WHEN grades.grade < 8 THEN 'NULL'
    ELSE students.name
    END, grades.grade, students.marks
FROM students JOIN grades on students.marks BETWEEN grades.min_mark AND grades.max_mark ORDER BY grades.grade DESC, students.name ASC; 