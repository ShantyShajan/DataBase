--Insert into dbo.Employee
CREATE PROC [dbo].[Insert_Employee]
(
	@FirstName	VARCHAR(50),
	@LastName	VARCHAR(50),
	@DateOfBirth	DATE,
	@Email		VARCHAR(50),
	@Salary		VARCHAR(50)
)
AS
BEGIN
BEGIN TRY
	BEGIN TRAN
		INSERT INTO dbo.Employee(FirstName,LastName,DateOfBirth,Email,Salary)
			VALUES
				(
					@FirstName,
					@LastName,
					@DateOfBirth,
					@Email,
					@Salary	
				)
	COMMIT TRAN
END TRY
BEGIN CATCH
	ROLLBACK TRAN
END CATCH
END