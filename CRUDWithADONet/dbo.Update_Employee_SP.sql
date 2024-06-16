--Update dbo.Emmployee
CREATE PROC [dbo].[Update_Employee]
(
	@Id			INT,
	@FirstName	VARCHAR(50),
	@LastName	VARCHAR(50),
	@DateOfBirth	DATE,
	@Email		VARCHAR(50),
	@Salary		VARCHAR(50)
)
AS
BEGIN
DECLARE @RowCount INT = 0
	BEGIN TRY
	SET @RowCount = (SELECT COUNT(1) FROM dbo.Employee WITH (NOLOCK) WHERE Id = @Id)

	IF(@RowCount > 0)
		BEGIN
			BEGIN TRAN
				UPDATE dbo.Employee
					SET
						FirstName = @FirstName,
						LastName = @LastName,
						DateOfBirth =@DateOfBirth,
						Email = @Email,
						Salary = @Salary
					WHERE Id = @Id
			COMMIT TRAN
		END
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN
	END CATCH
END