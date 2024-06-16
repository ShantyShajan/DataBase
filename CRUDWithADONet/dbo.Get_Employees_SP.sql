--Read All Employees
CREATE PROC [dbo].[Get_Employees]
AS
BEGIN
	SELECT Id,FirstName,LastName,DateOfBirth,Email,Salary FROM dbo.Employee WITH (NOLOCK);
END
