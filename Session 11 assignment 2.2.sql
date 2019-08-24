SELECT students.name, students.city, courses.course_name
FROM students, courses, courses_registered, departments
WHERE students.roll_number = courses_registered.student_code
AND courses.course_number = courses_registered.course_code
AND courses.department_code = departments.department_code
AND departments.department_name = "CSE";
SELECT 
    COUNT(*) AS 'Total Faculty', departments.department_name
FROM
    teachers,
    departments
WHERE
    teachers.department_code = departments.department_code
        AND departments.department_name = 'CSE';
SELECT courses.course_number, courses.course_name
FROM courses, departments
WHERE courses.department_code = departments.department_code
AND departments.department_name = "CSE";
SELECT 
    *
FROM
    students
WHERE
    semester = 'FALL2018';
SELECT a.name, a.CGPA
FROM (SELECT students.name, CAST(sum(grade * course_credit) / (sum(course_credit)*10) AS DECIMAL(9,1)) AS CGPA
	FROM students, courses_registered, courses
	WHERE courses_registered.student_code = students.roll_number
	AND courses.course_number = courses_registered.course_code
	GROUP BY students.name) a
WHERE a.CGPA >= 8.5;
SELECT 
    students.name,
    COUNT(courses_registered.course_code) AS 'Courses Registered'
FROM
    courses_registered,
    students
WHERE
    students.roll_number = courses_registered.student_code
GROUP BY courses_registered.student_code;
SELECT students.name
FROM students, courses_registered
WHERE students.roll_number = courses_registered.student_code
	AND courses_registered.course_code IN (
	SELECT a.course_code
	FROM courses_required a, academic_programs a1, courses_required b, academic_programs b1
	WHERE a.program_code = a1.program_code
		AND a1.program_name = "MCA"
		AND b.program_code = b1.program_code
		AND b1.program_name = "M.Tech"
	 	AND a.course_code = b.course_code);
SELECT students.name
FROM students, courses, courses_registered
WHERE students.roll_number = courses_registered.student_code
	AND courses.course_number = courses_registered.course_code
	AND courses.course_name = "DBMS";
SELECT 
    courses_registered.sem AS 'Semester'
FROM
    courses_registered,
    courses
WHERE
    courses.course_number = courses_registered.course_code
        AND courses.course_name = 'DBMS';
SELECT 
    students.name
FROM
    students
ORDER BY students.name;
UPDATE students 
SET 
    city = 'Tezpur'
WHERE
    (roll_number = 'CSI08002');
SELECT 
    academic_programs.duration
FROM
    academic_programs
WHERE
    academic_programs.program_name LIKE 'MCA';
SELECT *
FROM courses
WHERE courses.course_name LIKE '%Computer Science%';
SELECT 
    students.name
FROM
    students
WHERE
    students.city LIKE 'Tezpur';
SELECT 
    COUNT(*) AS 'Number of Departments'
FROM
    departments;