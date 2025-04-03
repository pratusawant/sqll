create database assignment;

use assignment;
create table EmployeeDetail(
	EmployeeID int,
	FirstName varchar(25),
    LastName varchar(20),
    Salary int(10),
    JoiningDate datetime,
    Department varchar(20),
    Gender text);
select * from EmployeeDetail;
desc EmployeeDetail;
INSERT INTO EmployeeDetail(EmployeeID, FirstName, LastName, Salary, JoiningDate, Department, Gender)
values (1, 'Vikas', 'Ahlawat', 600000.00, '2013-02-15 11:16:28.290', 'IT', 'Male');

INSERT INTO EmployeeDetail(EmployeeID, FirstName, LastName, Salary, JoiningDate, Department, Gender)
values (2, 'Nikita', 'Jain', 530000.00, '2014-01-09 17:31:07.793', 'HR', 'Female'),
	   (3, 'Ashish', 'Kumar', 1000000.00, '2014-01-09 10:05:07.793', 'IT', 'Male'),
       (4, 'Nikhil', 'Sharma', 480000.00, '2014-01-09 09:00:07.793', 'HR', 'Male'),
       (5, 'anish', 'kadian', 500000.00, '2014-01-09 09:31:07.793', 'Payroll', 'Male');
       
#Write a query to get all employee detail from "EmployeeDetail" table 
select * from EmployeeDetail;

# 2. Write a query to get only "FirstName" column from "EmployeeDetail" table 
select FirstName from EmployeeDetail;

# 3. Write a query to get FirstName in upper case as "FirstName"
select upper( FirstName ) from EmployeeDetail;

# 4. Write a query to get FirstName in lower case as "FirstName"
select lower( FirstName ) from EmployeeDetail;

# 5. Write a query for combine FirstName and LastName and display it as "Name" (also include white space between first name and last Name).
select concat('FirstName' and 'LastName') as name from EmployeeDetail;

# 6. Select employee detail whose name is "Vikas".
select FirstName from EmployeeDetail
where  FirstName = "vikas";

#7. Get all employee detail from EmployeeDetail table whose "FirstName" start with latter 'a'.
select * from EmployeeDetail
where FirstName like "a%";

# 8. Get all employee details from EmployeeDetail table whose "FirstName" contains 'k'
select * from EmployeeDetail
where FirstName like "k%";

# 9. Get all employee details from EmployeeDetail table whose "FirstName" end with 'h'. 
select * from EmployeeDetail
where FirstName like "%h";

# 10. Get all employee detail from EmployeeDetail table whose "FirstName" start with any single character between 'a-p'. 
select * from EmployeeDetail
where FirstName  like "(a-h)%";

# 11. Get all employee detail from EmployeeDetail table whose "FirstName" not start with any single character between 'a-p'. 
select * from EmployeeDetail
where FirstName like '[^a-p]%';

# 12. Get all employee detail from EmployeeDetail table whose "Gender" end with 'le' and contain 4 letters. The Underscore(_) Wildcard Character represents any single character. 
select * from EmployeeDetail
where gender like "____le%";

# 13. Get all employee detail from EmployeeDetail table whose "Firstname" start with 'A' and contain 5 letters. 
select * from EmployeeDetail
where gender like "A_____";

# 14. Get all employee detail from EmployeeDetail table whose "FirstName" containing '%'. ex:- "Vik%as". 
select * from EmployeeDetail where FirstName like '%[%]%'


# 15. Get all unique "Department from EmployeeDetail table. 
select distinct(Department)from EmployeeDetail;

# 16. Get the highest "Salary" from EmployeeDetail table. 

# 17. Get the lowest "Salary" from EmployeeDetail table. 
select min(Salary) from EmployeeDetail;

# 18. Show "JoiningDate" in "dd mmm yyyy" format, ex:- "15 Feb 2013". 
SELECT DATE_FORMAT(JoiningDate, '%d %b %Y') AS FormattedJoiningDate
FROM EmployeeDetail;

# 19. Show 'JoiningDate' in "yyyy/mm/dd" format. ex:- "2023/02/15
select date_format(JoiningDate,'%y %m %d') as FormattedJoiningDate
FROM EmployeeDetail;

#20. Show only time part of the "JoiningDate". 
select time(JoiningDate)  AS TimePartOfJoiningDate
FROM EmployeeDetail;

# 21. Get only Year part of "JoiningDate". 
select Year(JoiningDate)  from EmployeeDetail;

# 22. Get only Month part of "JoiningDate".
select date_format(JoiningDate, '%m') as MonthJoiningDate from EmployeeDetail;

# 25 Get the first name, current date, joindate and diff between current date and joining date in months. 
SELECT 
    FirstName,
    CURDATE() AS CurrentDate,
    JoiningDate,
    TIMESTAMPDIFF(MONTH, JoiningDate, CURDATE()) AS MonthsSinceJoining
FROM EmployeeDetail;

# 26 Get the first name, current date, joiningdate and diff between current date and joining date in days. 
select FirstName, CURDATE() AS CurrentDate, JoiningDate, 
DATEDIFF(JoiningDate, CURDATE()) AS DatesSinceJoining
from EmployeeDetail; 

# 27 Get all employee details from EmployeeDetail table whose joining year is 2013. 
select * from EmployeeDetail WHERE YEAR(JoiningDate) = '2013';

# 28 Get all employee details from EmployeeDetail table whose joining month is jan(1).
 select * from EmployeeDetail WHERE MONTH(JoiningDate) = '1';

# 29 Get all employee details from EmployeeDetail table whose joining date between "2013-01-01" and "2013-12-01". 
select * from EmployeeDetail where JoiningDate BETWEEN "2013-01-01" AND "2013-12-01";

# 30 Get how many employee exist in " EmployeeDetail" table. 
select COUNT(*) from EmployeeDetail;










 
