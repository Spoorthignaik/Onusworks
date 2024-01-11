use [sample1]
Go

CREATE TABLE Employees
(
ID int NOT NULL primary key,
Gender nvarchar(50) NOT NUll,
EmployeeName nvarchar(50) NOT NULL,
DepartmentID int NOT NULL
)


SELECT * FROM Employees

CREATE PROCEDURE spGetEmployees
AS
BEGIN
   SELECT EmployeeName,Gender FROM Employees
END


EXE spGetEmployees


CREATE PROCEDURE spGetEmployeeGenderAndDepartment
@Gender nvarchar(50),
@DepartmentID int
as
BEGIN
      SELECT EmployeeName ,Gender,DepartmentID FROM Employees WHERE Gender=@Gender
	  and DepartmentID=@DepartmentID
END

EXEC spGetEmployeeGenderAndDepartment 'Female',3


sp_helptext spGetEmployeeGenderAndDepartment

ALTER PROCEDURE spGetEmployees
AS
BEGIN
   SELECT EmployeeName,Gender FROM Employees order by EmployeeName
END

CREATE PROCEDURE spEmployeeCountAndGender
@Gender nvarchar(50),
@EmployeeCount int output
AS
BEGIN
      select @EmployeeCount=count(ID) from Employees WHERE Gender=@Gender
END

DECLARE @Totalcount int
EXECUTE spEmployeeCountAndGender 'Female' , @Totalcount out
print @Totalcount


Employees


CREATE PROC spNameGetById3
@Id int,
@EmployeeName varchar(50) output
AS
BEGIN
    SELECT @EmployeeName=EmployeeName From Employees Where Id=@Id
END


DECLARE @EmployeeName nvarchar(50)
EXECUTE spNameGetById3 1,@EmployeeName out
PRINT 'Name='+@EmployeeName



CREATE PROC spGetNameById3
@Id int
@EmployeeName nvarchar(50) output
AS
BEGIN
    SELECT @EmployeeName=EmployeeName from EMPLOYEES WHERE Id=@Id
END