--Lists courses that have 'data' subword in their name:
SELECT CoName, Credits
FROM COURSE
WHERE CoName LIKE '%data%';

--Lists names with the first letter 'C' and more than one in the database:
SELECT PERSON.Fname, COUNT(*)
FROM PERSON
WHERE PERSON.Fname like 'C%' GROUP BY PERSON.Fname
HAVING COUNT(*) >= 2;

--Shows the department with the largest number of students:
SELECT STUDENT.DCode, COUNT(*)
FROM STUDENT
GROUP BY DCode
ORDER BY COUNT(*) DESC
LIMIT 1;

--Shows the ratio of English curriculums to all curriculums:
SELECT COUNT(*)*100/ (SELECT COUNT(*) FROM CURRICULUM) AS 'EN Language %'
FROM DEPARTMENT, CURRICULUM
WHERE EdLang LIKE 'EN'
AND DEPARTMENT.DCode = CURRICULUM.DCode;

--Lists the professors which aren't chair:
SELECT PersonID
FROM PROFFESOR LEFT JOIN DEPARTMENT
ON PROFFESOR.PersonID = DEPARTMENT.ChairID
WHERE DEPARTMENT.ChairID IS NULL;

--Lists the courses which their language is English and have 'Java' outline:
SELECT COURSE.CoName
FROM COURSE, CURRICULUM, SUBJECTS
WHERE EdLang LIKE 'EN'
AND SUBJECTS.Subject LIKE '%java'
AND COURSE.CurrCode = CURRICULUM.CurrCode
AND SUBJECTS.CoCode = COURSE.CoCode;

--Lists the students who live out of Bornova and study in Bornova:
SELECT PERSON.Fname, PERSON.Address
FROM STUDENT, PERSON, DEPARTMENT
WHERE PERSON.Address NOT LIKE '%Bornova'
AND DEPARTMENT.DOffice LIKE 'Bornova / Izmir'
AND STUDENT.PersonID = PERSON.PersonID
AND STUDENT.DCode = DEPARTMENT.DCode;

--Lists the professors' field of Ph.D. studies which are chair between the given years at the department 1000:
SELECT Area, Fname, Mname, Lname, PROFFESOR.PersonID FROM AREAS, DEPARTMENT, STUDIES, PROFFESOR, PERSON
WHERE TheseType = 'Ph.D.'
AND CStartDate BETWEEN '2020-01-01' AND '2023-01-01'
AND DEPARTMENT.DCode = 1000
AND PROFFESOR.PersonID = PERSON. PersonID
AND (STUDIES.PersonID = AREAS.PersonID AND STUDIES.TheseNo = AREAS.TheseNo)
AND DEPARTMENT.ChairID = PROFFESOR.PersonID
AND STUDIES.PersonID = PERSON.PersonID;

--Lists the number courses that have section on wednesdays at EU Department of Computer Engineering:
SELECT COUNT(*) AS 'Number of Courses'
FROM DEPARTMENT, THEORETICAL, SECTION, CURRICULUM, COURSE
WHERE TWeekDays LIKE '__1__'
AND DEPARTMENT.DName LIKE 'EU Department of Computer Engineering'
AND THEORETICAL.SectionID = SECTION.SectionID
AND SECTION.CoCode = COURSE.CoCode
AND COURSE.CurrCode = CURRICULUM.CurrCode
AND CURRICULUM.DCode = DEPARTMENT.DCode;

--Lists the taken courses' instructors with students:
SELECT STUDENTNAME.Fname AS 'St. N.', STUDENTNAME.Lname AS 'St. L.', INSTID.Fname AS 'Inst. N.', INSTID.Lname AS 'Inst. L.'
FROM PERSON AS STUDENTNAME, PERSON AS INSTID, THEORETICAL, SECTION, TAKES, TEACHES, PERSON
WHERE PERSON.PersonID = INSTID.PersonID
AND SECTION.SectionID = THEORETICAL.SectionID
AND TAKES.SectionID = SECTION.SectionID
AND TAKES.PersonID = STUDENTNAME.PersonID
AND TEACHES.SectionID = SECTION.SectionID
AND TEACHES.InstID = INSTID.PersonID;

--Lists all the faculty members' name, address and department data:
SELECT PERSON.Fname, PERSON.Lname, PERSON.Address, DEPARTMENT.DName
FROM DEPARTMENT, FAC_MEMBER, PERSON
WHERE DEPARTMENT.DCode = FAC_MEMBER.DCode
AND PERSON.PersonID = FAC_MEMBER.PersonID
ORDER BY DEPARTMENT.Dname;

--Lists all the departments' chairs and related faculties:
SELECT DEPARTMENT.Dname AS 'Department', CHAIR.Fname AS 'Name', CHAIR.Lname AS 'L. Name', COLLEGE.CName AS 'Faculty'
FROM DEPARTMENT, PROFFESOR, PERSON AS CHAIR, COLLEGE
WHERE DEPARTMENT.ChairID = CHAIR.PersonID
AND PROFFESOR.PersonID = CHAIR.PersonID
AND COLLEGE.CName = DEPARTMENT.CName;

--Lists all the faculties and their deans:
SELECT COLLEGE.CName, DEAN.Fname, DEAN.Lname FROM PROFFESOR, PERSON AS DEAN, COLLEGE
WHERE COLLEGE.DeanID = DEAN.PersonID
AND PROFFESOR.PersonID = DEAN.PersonID;

--Lists the departments' instructors and courses with the major 10:
SELECT CoName AS 'Courses', CONCAT (Fname, ' ', Lname) AS 'Instructors'
FROM COURSE, PERSON, INSTRUCTOR, DEPARTMENT, CURRICULUM, SECTION, TEACHES, THEORETICAL, DEPT_MAJOR
WHERE DEPT_MAJOR.MajorCode = 10
AND DEPARTMENT.DCode = CURRICULUM.DCode
AND COURSE.CurrCode = CURRICULUM.CurrCode
AND SECTION.CoCode = COURSE.CoCode
AND SECTION.SectionID = THEORETICAL.SectionID
AND TEACHES.SectionID = THEORETICAL.SectionID
AND TEACHES.InstID = INSTRUCTOR.InstID
AND INSTRUCTOR.InstID = PersonID;

--Lists mostly taken course in computer engineering with the number of students who takes it:
SELECT COURSE.CoName, COUNT(*) AS NumberOfStudents
FROM DEPT_MAJOR, DEPARTMENT, STUDENT, TAKES, SECTION, COURSE
WHERE DEPT_MAJOR.MajorCode = DEPARTMENT.DArea
AND DEPARTMENT.DCode = STUDENT.DCode
AND TAKES.PersonID = STUDENT.PersonID
AND TAKES.SectionID = SECTION.SectionID
AND SECTION.CoCode = COURSE.CoCode
AND DEPT_MAJOR.MajorCode = 10
GROUP BY COURSE.CoName
ORDER BY COUNT(*) DESC LIMIT 1;

--Lists the courses that have highest credits and their average points:
SELECT COURSE.CoName, AVG(SecPoint)
FROM STUDENT, TAKES, SECTION, COURSE
WHERE TAKES.PersonID = STUDENT.PersonID
AND TAKES.SectionID = SECTION.SectionID
AND SECTION.CoCode = COURSE.CoCode
AND COURSE.Credits = (SELECT MAX(Credits) FROM COURSE)
GROUP BY CoName;

