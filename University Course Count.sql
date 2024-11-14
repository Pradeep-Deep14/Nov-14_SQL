CREATE TABLE universities (
         university_id INT PRIMARY KEY, 
         university_name VARCHAR(100), 
         course_count INT, 
         location VARCHAR(100)
     );
     INSERT INTO universities VALUES 
         (1, 'IIT Bombay', 10, 'India'), 
         (2, 'IIT Delhi', 6, 'India'), 
         (3, 'MIT', 4, 'USA');


SELECT * FROM UNIVERSITIES

/*
Find all universities in India that offer more than 5 courses in Engineering.
*/

SELECT UNIVERSITY_NAME,
       LOCATION,
       COURSE_COUNT
FROM UNIVERSITIES
WHERE LOCATION = 'India'
AND COURSE_COUNT > 5