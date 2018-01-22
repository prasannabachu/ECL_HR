USE [ECLHR]
GO

--drop table [Employee]
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](10) NULL,
	[FullName] [varchar](50) NULL,
	[Gender] int NULL,
	[BloodGroup] int NULL,
	[DOB] [date] NULL,
	[Designation] [varchar](50) NULL,
	[MaritalStatus] int NULL,
	[JoiningDate] [date] NULL,
	[Nationality] int NULL,
	[Status] int NULL,
	[PersonalEmail] [varchar](50) NULL,
	[OfficialEmail] [varchar](50) NULL,
	[Mobile] [varchar](10) NULL,
	[Manager] [varchar](100) NULL,
	[BusinessUnit] [varchar](50) NULL,
	[Location] int NULL
) ON [PRIMARY]


--drop table Address
CREATE TABLE [dbo].[Address](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] Varchar(5) NULL,
	[HouseNo] [varchar](50) NULL,
	[Street1] [varchar](100) NULL,
	[Street2] [varchar](100) NULL,
	[Country] int NULL,
	[State] int NULL,
	[City] [varchar](100) NULL,
	[District] [varchar](100) NULL,
	[PinCode] [varchar](10) NULL,
	[EmpId] int NOT NULL

) ON [PRIMARY]

GO

alter table Address add HomePhone Varchar(10)

GO
CREATE TABLE [dbo].[Dropdown](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Item] [varchar](50) NULL,
	[Value] [varchar](5) NULL,
	[DisplayText] [varchar](250) NULL
) ON [PRIMARY]

--Drop table EmpLanguage

Create Table EmpLanguage(
Id int identity(1,1) NOT NULL,
EmpId int,
LanguageId int,
IsRead bit,
IsWrite bit,
IsSpeak bit,
PrimaryLanguage bit
)