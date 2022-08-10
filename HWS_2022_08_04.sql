use University

/* ex 1 */
SELECT '1' as Exercise;
SELECT * FROM Students;

/* ex 2 */
SELECT '2' as Exercise;
SELECT FirstName, LastName FROM Students;

/* ex 3 */
SELECT '3' as Exercise;
SELECT DISTINCT FirstName FROM Students;

/* ex 4 */
SELECT '4' as Exercise;
SELECT FirstName FROM Students
WHERE Age > 80;

/* ex 5 */
SELECT '5' as Exercise;
SELECT * FROM Students
WHERE Id = 1;

/* ex 6 */
SELECT '6' as Exercise;
SELECT * FROM Students
WHERE FirstName='Ami' and LastName='Sason';

/* ex 7 */
SELECT '7' as Exercise;
SELECT * FROM Students
WHERE FirstName='Ami' or FirstName='Yael';

/* ex 8 */
SELECT '8' as Exercise;
SELECT * FROM Students
WHERE Age is NULL;

/* ex 9 */
SELECT '9' as Exercise;
SELECT * FROM Students
WHERE Age is not NULL;

/* ex 10 */
SELECT '10' as Exercise;
SELECT FirstName FROM Students
ORDER BY FirstName ASC;

/* ex 11 */
SELECT '11' as Exercise;
SELECT * FROM Students
ORDER BY Age DESC;

/* ex 12 */
SELECT '12' as Exercise;
SELECT TOP 2 * FROM Students
ORDER BY Age DESC;

/* ex 13 */
SELECT '13' as Exercise;
SELECT * FROM Students
WHERE Age > 20 and FirstName like 'A%'
ORDER BY FirstName;

/* ex 14 */
SELECT '14' as Exercise;
-- INSERT INTO Courses (CourseName) VALUES ('Gaming');
SELECT * FROM Courses;

/* ex 15 */
SELECT '15' as Exercise;
update Students
SET Age = 70 
WHERE Age > 80;
SELECT * FROM Students;

/* ex 16 */
SELECT '16' as Exercise;
/* DELETE FROM Students WHERE Id = 4; */
SELECT * FROM Students;

/* ex 17 */
SELECT '16' as Exercise;
SELECT s.Id as StudentId, s.FirstName, s.LastName, c.Id as CouseId, c.CourseName, cs.Grade FROM CoursesStudents CS
join Courses as c on c.Id = cs.CourseId
join Students as s on s.Id = cs.StudentId;