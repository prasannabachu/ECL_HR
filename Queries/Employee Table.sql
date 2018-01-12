USE [ECLHR]
GO

/****** Object:  Table [dbo].[Employee]    Script Date: 1/11/2018 3:41:16 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO
--DROP TABLE [dbo].[Employee]
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](10) NULL,
	[Full Name] [varchar](50) NULL,
	[Gender] [int] NULL,
	[BloodGroup] [int] NULL,
	[DOB] [date] NULL,
	[Designation] [varchar](50) NULL,
	[MaritalStatus] [int] NULL,
	[JoiningDate] [date] NULL,
	[CitizenShip] [int] NULL,
	[Status] [int] NULL,
	[PersonalEmail] [varchar](50) NULL,
	[OfficialEmail] [varchar](50) NULL,
	[Mobile] [varchar](10) NULL,
	[Address] [int] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


