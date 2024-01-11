

use [sample1]
Go






CREATE PROC spNameGetById2
@Id int,
@EmployeeName varchar(50) output
AS
BEGIN
    SELECT @EmployeeName=EmployeeName From Employees Where Id=@Id
END


DECLARE @EmployeeName nvarchar(50)
EXECUTE spNameGetById2 1,@EmployeeName out
PRINT 'Name='+@EmployeeName