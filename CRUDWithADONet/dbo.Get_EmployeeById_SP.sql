--GetById
CREATE PROC [dbo].[Get_EmployeeById]
(
	@Id INT
)
AS
BEGIN 
	SELECT Id,FirstName,LastName,DateOfBirth,Email,Salary FROM dbo.Employee WITH (NOLOCK)
	WHERE Id = @Id;
END