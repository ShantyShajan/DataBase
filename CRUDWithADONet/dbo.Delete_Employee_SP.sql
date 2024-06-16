--Delete from dbo.Employee
CREATE PROC [dbo].[Delete_Employee]
(
	@Id			INT
)
AS
BEGIN
DECLARE @RowCount INT = 0
	BEGIN TRY
	SET @RowCount = (SELECT COUNT(1) FROM dbo.Employee WITH (NOLOCK) WHERE Id = @Id)

	IF(@RowCount > 0)
		BEGIN
			BEGIN TRAN
				DELETE FROM dbo.Employee
					WHERE Id = @Id
			COMMIT TRAN
		END
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN
	END CATCH
END