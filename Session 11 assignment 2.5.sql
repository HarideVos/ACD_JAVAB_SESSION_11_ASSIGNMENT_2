USE library_information_system;


SELECT 
    book_table.book_name
FROM
    book_table
WHERE
    book_table.book_issue_date BETWEEN '2008-08-21' AND '2008-08-29';
    
SELECT 
    book_author,
    COUNT(DISTINCT book_name) AS 'Number of books written'
FROM
    book_table
WHERE
    book_author = 'Caressa Cogan';

SELECT 
    book_table.book_publisher, COUNT(*)
FROM
    book_table
GROUP BY book_table.book_publisher
ORDER BY COUNT(*) DESC
LIMIT 1;

SELECT 
    COUNT(book_table.b_id) AS 'Amount of Books'
FROM
    book_table;

SELECT 
    COUNT(*) AS 'Checked Out'
FROM
    book_table
WHERE
    book_table.student_id LIKE 'CSB06001';

UPDATE book_table 
SET 
    book_author = 'ABC'
WHERE
    (b_id = 'BK003');

SELECT 
    student_table.st_name
FROM
    student_table
        JOIN
    book_table ON book_table.student_id = student_table.st_id
WHERE
    book_name = 'Database System'
        AND book_author = 'E.Navathe';
        
SELECT department_table.dept_name, department_table.dept_total_books FROM department_table;

SELECT 
    book_table.book_name
FROM
    book_table
WHERE
    book_table.book_subject LIKE '%ora%';