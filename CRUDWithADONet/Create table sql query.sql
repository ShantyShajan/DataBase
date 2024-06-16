--Create table dbo.Employee
CREATE TABLE dbo.Employee(
[Id] [int] identity(1,1) NOT NULL,
[FirstName] [varchar](50) NOT NULL,
[LastName] [varchar](50) NOT NULL,
[DateOfBirth] [date] NOT NULL,
[Email] [nvarchar](50) NOT NULL,
[Salary] [float] NOT NULL,
CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED
(
	[Id] ASC
)
)ON [PRIMARY]
GO



