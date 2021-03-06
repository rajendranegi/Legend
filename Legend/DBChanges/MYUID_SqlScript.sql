USE [MYUID]
GO
/****** Object:  Schema [Master]    Script Date: 03/12/2016 16:17:46 ******/
CREATE SCHEMA [Master] AUTHORIZATION [dbo]
GO
/****** Object:  Schema [Profile]    Script Date: 03/12/2016 16:17:46 ******/
CREATE SCHEMA [Profile] AUTHORIZATION [dbo]
GO
/****** Object:  Table [Master].[Country]    Script Date: 03/12/2016 16:17:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Master].[Country](
	[CountryID] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [varchar](50) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [Master].[Country] ON
INSERT [Master].[Country] ([CountryID], [CountryName], [IsActive]) VALUES (1, N'India', 1)
INSERT [Master].[Country] ([CountryID], [CountryName], [IsActive]) VALUES (2, N'Nepal', 1)
INSERT [Master].[Country] ([CountryID], [CountryName], [IsActive]) VALUES (3, N'Bhutan', 1)
SET IDENTITY_INSERT [Master].[Country] OFF
/****** Object:  Table [Profile].[Contact]    Script Date: 03/12/2016 16:17:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Profile].[Contact](
	[RefProfileID] [bigint] NULL,
	[MobileNo1] [varchar](20) NULL,
	[MobileNo2] [varchar](20) NULL,
	[LandLineNo1] [varchar](20) NULL,
	[LandLineNo2] [varchar](20) NULL,
	[InsertedOn] [smalldatetime] NULL,
	[InsertedBy] [bigint] NULL,
	[ModifiedOn] [smalldatetime] NULL,
	[ModifiedBy] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [Profile].[Contact] ([RefProfileID], [MobileNo1], [MobileNo2], [LandLineNo1], [LandLineNo2], [InsertedOn], [InsertedBy], [ModifiedOn], [ModifiedBy]) VALUES (2, N'1234567890', N'0987654321', N'01123456789', N'01198765432', CAST(0xA59E0550 AS SmallDateTime), 2, CAST(0xA59E0550 AS SmallDateTime), 2)
/****** Object:  Table [Master].[AccessLevel]    Script Date: 03/12/2016 16:17:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Master].[AccessLevel](
	[AccessID] [int] NOT NULL,
	[AccessLevel] [varchar](20) NULL,
 CONSTRAINT [PK_AccessLevel] PRIMARY KEY CLUSTERED 
(
	[AccessID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [Master].[AccessLevel] ([AccessID], [AccessLevel]) VALUES (-1, N'AnonymousUser')
INSERT [Master].[AccessLevel] ([AccessID], [AccessLevel]) VALUES (10, N'SuperAdmin')
INSERT [Master].[AccessLevel] ([AccessID], [AccessLevel]) VALUES (20, N'Admin')
INSERT [Master].[AccessLevel] ([AccessID], [AccessLevel]) VALUES (30, N'Manager')
INSERT [Master].[AccessLevel] ([AccessID], [AccessLevel]) VALUES (40, N'Instructor')
INSERT [Master].[AccessLevel] ([AccessID], [AccessLevel]) VALUES (50, N'User')
/****** Object:  Table [Profile].[Education]    Script Date: 03/12/2016 16:17:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Profile].[Education](
	[EduID] [bigint] IDENTITY(1,1) NOT NULL,
	[RefProfileID] [bigint] NULL,
	[Subject] [varchar](1000) NULL,
	[Course] [varchar](100) NULL,
	[CoursePassDate] [smalldatetime] NULL,
	[CourseStartDate] [smalldatetime] NULL,
	[College] [varchar](100) NULL,
	[University] [varchar](100) NULL,
	[InsertedOn] [smalldatetime] NULL,
	[InsertedBy] [bigint] NULL,
	[ModifiedOn] [smalldatetime] NULL,
	[ModifiedBy] [bigint] NULL,
 CONSTRAINT [PK_Education] PRIMARY KEY CLUSTERED 
(
	[EduID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [Profile].[Education] ON
INSERT [Profile].[Education] ([EduID], [RefProfileID], [Subject], [Course], [CoursePassDate], [CourseStartDate], [College], [University], [InsertedOn], [InsertedBy], [ModifiedOn], [ModifiedBy]) VALUES (1, 2, N'CA', N'MCA', NULL, NULL, N'dsa', N'asd', CAST(0xA5A403F4 AS SmallDateTime), 2, CAST(0xA5A50005 AS SmallDateTime), 2)
INSERT [Profile].[Education] ([EduID], [RefProfileID], [Subject], [Course], [CoursePassDate], [CourseStartDate], [College], [University], [InsertedOn], [InsertedBy], [ModifiedOn], [ModifiedBy]) VALUES (2, 2, N'CA', N'BTech', NULL, NULL, N'qaz', N'zaq', CAST(0xA5A403F5 AS SmallDateTime), 2, CAST(0xA5A50554 AS SmallDateTime), 2)
SET IDENTITY_INSERT [Profile].[Education] OFF
/****** Object:  Table [Master].[Designation]    Script Date: 03/12/2016 16:17:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Master].[Designation](
	[DesignationID] [int] IDENTITY(1,1) NOT NULL,
	[Designation] [varchar](100) NULL,
	[IsActive] [bit] NULL,
	[InsertedOn] [smalldatetime] NULL,
	[InsertedBy] [int] NULL,
	[ModifiedOn] [smalldatetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_Designation] PRIMARY KEY CLUSTERED 
(
	[DesignationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [Master].[Designation] ON
INSERT [Master].[Designation] ([DesignationID], [Designation], [IsActive], [InsertedOn], [InsertedBy], [ModifiedOn], [ModifiedBy]) VALUES (1, N'Manager(Mgr)', 1, CAST(0xA58C0542 AS SmallDateTime), NULL, NULL, NULL)
INSERT [Master].[Designation] ([DesignationID], [Designation], [IsActive], [InsertedOn], [InsertedBy], [ModifiedOn], [ModifiedBy]) VALUES (2, N'Team Lead(TL)', 1, CAST(0xA58C0542 AS SmallDateTime), NULL, NULL, NULL)
SET IDENTITY_INSERT [Master].[Designation] OFF
/****** Object:  Table [Master].[Department]    Script Date: 03/12/2016 16:17:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Master].[Department](
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[Department] [varchar](100) NULL,
	[IsActive] [bit] NULL,
	[InsertedOn] [smalldatetime] NULL,
	[InsertedBy] [int] NULL,
	[ModifiedOn] [smalldatetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [Master].[Department] ON
INSERT [Master].[Department] ([DepartmentID], [Department], [IsActive], [InsertedOn], [InsertedBy], [ModifiedOn], [ModifiedBy]) VALUES (1, N'Human Resource(HR)', 1, CAST(0xA58C0567 AS SmallDateTime), NULL, NULL, NULL)
INSERT [Master].[Department] ([DepartmentID], [Department], [IsActive], [InsertedOn], [InsertedBy], [ModifiedOn], [ModifiedBy]) VALUES (2, N'IT(Software)', 1, CAST(0xA58C0567 AS SmallDateTime), NULL, NULL, NULL)
INSERT [Master].[Department] ([DepartmentID], [Department], [IsActive], [InsertedOn], [InsertedBy], [ModifiedOn], [ModifiedBy]) VALUES (3, N'IT(Network & Hardware)', 1, CAST(0xA5C30552 AS SmallDateTime), NULL, NULL, NULL)
INSERT [Master].[Department] ([DepartmentID], [Department], [IsActive], [InsertedOn], [InsertedBy], [ModifiedOn], [ModifiedBy]) VALUES (4, N'Account', 1, CAST(0xA5C404FD AS SmallDateTime), NULL, NULL, NULL)
SET IDENTITY_INSERT [Master].[Department] OFF
/****** Object:  Table [Master].[Salutation]    Script Date: 03/12/2016 16:17:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Master].[Salutation](
	[SalutationID] [tinyint] IDENTITY(1,1) NOT NULL,
	[Salutation] [varchar](50) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Salutation] PRIMARY KEY CLUSTERED 
(
	[SalutationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [Master].[Salutation] ON
INSERT [Master].[Salutation] ([SalutationID], [Salutation], [IsActive]) VALUES (1, N'Mr.', 1)
INSERT [Master].[Salutation] ([SalutationID], [Salutation], [IsActive]) VALUES (2, N'Mrs.', 1)
INSERT [Master].[Salutation] ([SalutationID], [Salutation], [IsActive]) VALUES (3, N'Miss', 1)
INSERT [Master].[Salutation] ([SalutationID], [Salutation], [IsActive]) VALUES (4, N'Dr.', 1)
INSERT [Master].[Salutation] ([SalutationID], [Salutation], [IsActive]) VALUES (5, N'Kmri.', 1)
INSERT [Master].[Salutation] ([SalutationID], [Salutation], [IsActive]) VALUES (6, N'Kmr.', 1)
SET IDENTITY_INSERT [Master].[Salutation] OFF
/****** Object:  Table [Master].[State]    Script Date: 03/12/2016 16:17:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Master].[State](
	[StateID] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [varchar](100) NULL,
	[RefCountryID] [int] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[StateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [Master].[State] ON
INSERT [Master].[State] ([StateID], [StateName], [RefCountryID], [IsActive]) VALUES (1, N'Andaman and Nicobar Islands', 1, 1)
INSERT [Master].[State] ([StateID], [StateName], [RefCountryID], [IsActive]) VALUES (2, N'Andhra Pradesh', 1, 1)
INSERT [Master].[State] ([StateID], [StateName], [RefCountryID], [IsActive]) VALUES (3, N'Arunachal Pradesh', 1, 1)
INSERT [Master].[State] ([StateID], [StateName], [RefCountryID], [IsActive]) VALUES (4, N'Assam', 1, 1)
INSERT [Master].[State] ([StateID], [StateName], [RefCountryID], [IsActive]) VALUES (5, N'Bihar', 1, 1)
INSERT [Master].[State] ([StateID], [StateName], [RefCountryID], [IsActive]) VALUES (6, N'Chandigarh', 1, 1)
INSERT [Master].[State] ([StateID], [StateName], [RefCountryID], [IsActive]) VALUES (7, N'Chhattisgarh', 1, 1)
INSERT [Master].[State] ([StateID], [StateName], [RefCountryID], [IsActive]) VALUES (8, N'Dadra and Nagar Haveli', 1, 1)
INSERT [Master].[State] ([StateID], [StateName], [RefCountryID], [IsActive]) VALUES (9, N'Delhi', 1, 1)
INSERT [Master].[State] ([StateID], [StateName], [RefCountryID], [IsActive]) VALUES (10, N'Goa', 1, 1)
INSERT [Master].[State] ([StateID], [StateName], [RefCountryID], [IsActive]) VALUES (11, N'Gujarat', 1, 1)
INSERT [Master].[State] ([StateID], [StateName], [RefCountryID], [IsActive]) VALUES (12, N'Haryana', 1, 1)
INSERT [Master].[State] ([StateID], [StateName], [RefCountryID], [IsActive]) VALUES (13, N'Himachal Pradesh', 1, 1)
INSERT [Master].[State] ([StateID], [StateName], [RefCountryID], [IsActive]) VALUES (14, N'Jammu and Kashmir', 1, 1)
INSERT [Master].[State] ([StateID], [StateName], [RefCountryID], [IsActive]) VALUES (15, N'Jharkhand', 1, 1)
INSERT [Master].[State] ([StateID], [StateName], [RefCountryID], [IsActive]) VALUES (16, N'Karnataka', 1, 1)
INSERT [Master].[State] ([StateID], [StateName], [RefCountryID], [IsActive]) VALUES (17, N'Kerala', 1, 1)
INSERT [Master].[State] ([StateID], [StateName], [RefCountryID], [IsActive]) VALUES (18, N'Madhya Pradesh', 1, 1)
INSERT [Master].[State] ([StateID], [StateName], [RefCountryID], [IsActive]) VALUES (19, N'Maharashtra', 1, 1)
INSERT [Master].[State] ([StateID], [StateName], [RefCountryID], [IsActive]) VALUES (20, N'Manipur', 1, 1)
INSERT [Master].[State] ([StateID], [StateName], [RefCountryID], [IsActive]) VALUES (21, N'Meghalaya', 1, 1)
INSERT [Master].[State] ([StateID], [StateName], [RefCountryID], [IsActive]) VALUES (22, N'Mizoram', 1, 1)
INSERT [Master].[State] ([StateID], [StateName], [RefCountryID], [IsActive]) VALUES (23, N'Nagaland', 1, 1)
INSERT [Master].[State] ([StateID], [StateName], [RefCountryID], [IsActive]) VALUES (24, N'Odisha', 1, 1)
INSERT [Master].[State] ([StateID], [StateName], [RefCountryID], [IsActive]) VALUES (25, N'Puducherry', 1, 1)
INSERT [Master].[State] ([StateID], [StateName], [RefCountryID], [IsActive]) VALUES (26, N'Punjab', 1, 1)
INSERT [Master].[State] ([StateID], [StateName], [RefCountryID], [IsActive]) VALUES (27, N'Rajasthan', 1, 1)
INSERT [Master].[State] ([StateID], [StateName], [RefCountryID], [IsActive]) VALUES (28, N'Tamil Nadu', 1, 1)
INSERT [Master].[State] ([StateID], [StateName], [RefCountryID], [IsActive]) VALUES (29, N'Telangana', 1, 1)
INSERT [Master].[State] ([StateID], [StateName], [RefCountryID], [IsActive]) VALUES (30, N'Tripura', 1, 1)
INSERT [Master].[State] ([StateID], [StateName], [RefCountryID], [IsActive]) VALUES (31, N'Uttar Pradesh', 1, 1)
INSERT [Master].[State] ([StateID], [StateName], [RefCountryID], [IsActive]) VALUES (32, N'Uttarakhand', 1, 1)
INSERT [Master].[State] ([StateID], [StateName], [RefCountryID], [IsActive]) VALUES (33, N'West Bengal', 1, 1)
INSERT [Master].[State] ([StateID], [StateName], [RefCountryID], [IsActive]) VALUES (34, N'Daman and Diu', 1, 1)
INSERT [Master].[State] ([StateID], [StateName], [RefCountryID], [IsActive]) VALUES (35, N'Sikkim', 1, 1)
INSERT [Master].[State] ([StateID], [StateName], [RefCountryID], [IsActive]) VALUES (36, N'Kathmandu', 2, 1)
SET IDENTITY_INSERT [Master].[State] OFF
/****** Object:  Table [Master].[UserProfile]    Script Date: 03/12/2016 16:17:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Master].[UserProfile](
	[ProfileID] [bigint] IDENTITY(1,1) NOT NULL,
	[ProfileGUID] [uniqueidentifier] ROWGUIDCOL  NULL,
	[FirstName] [varchar](100) NULL,
	[MiddleName] [varchar](100) NULL,
	[LastName] [varchar](100) NULL,
	[UserName] [varchar](20) NULL,
	[Password] [varchar](20) NULL,
	[RefAccessID] [int] NULL,
	[InsertedOn] [smalldatetime] NULL,
	[ModifiedOn] [smalldatetime] NULL,
	[ModifiedBy] [bigint] NULL,
 CONSTRAINT [PK_UserProfile] PRIMARY KEY CLUSTERED 
(
	[ProfileID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [Master].[UserProfile] ON
INSERT [Master].[UserProfile] ([ProfileID], [ProfileGUID], [FirstName], [MiddleName], [LastName], [UserName], [Password], [RefAccessID], [InsertedOn], [ModifiedOn], [ModifiedBy]) VALUES (1, N'c5eda76e-8925-4c9a-9e4e-1f3b54d52278', N'Admin', N'Admin', N'Admin', N'admin', N'adminadmin', 10, CAST(0xA59D04EA AS SmallDateTime), CAST(0xA59D04EA AS SmallDateTime), NULL)
INSERT [Master].[UserProfile] ([ProfileID], [ProfileGUID], [FirstName], [MiddleName], [LastName], [UserName], [Password], [RefAccessID], [InsertedOn], [ModifiedOn], [ModifiedBy]) VALUES (2, N'51a2b0ae-7ac3-40fc-bb75-c3b71bcf7b72', N'a1', N'a1', N'a1', N'a1', N'a1', 50, CAST(0xA59D0503 AS SmallDateTime), CAST(0xA59D0503 AS SmallDateTime), NULL)
INSERT [Master].[UserProfile] ([ProfileID], [ProfileGUID], [FirstName], [MiddleName], [LastName], [UserName], [Password], [RefAccessID], [InsertedOn], [ModifiedOn], [ModifiedBy]) VALUES (3, N'2d465591-4b4c-495a-a7df-00ff9c1ce2bf', N'a2', N'a2', N'a2', N'a2', N'a1', 50, CAST(0xA5C00398 AS SmallDateTime), CAST(0xA5C00398 AS SmallDateTime), NULL)
SET IDENTITY_INSERT [Master].[UserProfile] OFF
/****** Object:  StoredProcedure [Profile].[CRUD_Education]    Script Date: 03/12/2016 16:17:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Profile].[CRUD_Education]
	@ActionType VARCHAR(20),
	@RefProfileID BIGINT,
	@EduID BIGINT = NULL,
	@Subject VARCHAR(1000) = NULL,
	@Course VARCHAR(1000) = NULL,
	@CoursePassDate VARCHAR(10) = NULL,
	@CourseStartDate VARCHAR(10) = NULL,
	@College VARCHAR(100) = NULL,
	@University VARCHAR(100) = NULL,
	@SearchItem varchar(100) = NULL,
	@ReturnValue VARCHAR(100) OUTPUT
AS
BEGIN
	
	IF @ActionType = 'SELECT' 
	BEGIN
		SELECT 
		[EduID],[RefProfileID],[Subject],[Course],[CoursePassDate],[CourseStartDate],[College],[University]
		FROM [Profile].[Education] AS PE
		WHERE PE.RefProfileID = @RefProfileID
		ORDER BY [CoursePassDate] DESC
	END
	ELSE IF @ActionType = 'SELECTLIMIT' 
	BEGIN
		SELECT 
		[EduID],[RefProfileID],[Subject],[Course],[CoursePassDate],[CourseStartDate],[College],[University]
		FROM [Profile].[Education] AS PE
		WHERE [EduID] = @EduID AND PE.RefProfileID = @RefProfileID
		ORDER BY [CoursePassDate] DESC
	END
	ELSE IF @ActionType = 'UPDATE'
	BEGIN
	DECLARE @CurrentDateTime as DATETIME
	SET @CurrentDateTime = DATEADD(mi,330,GETUTCDATE())
	IF @EduID <> ''
	BEGIN
		UPDATE [Profile].[Education] SET
		 [Subject] = @Subject
		,[Course] = @Course
		,[CoursePassDate] = @CoursePassDate 
		,[CourseStartDate] = @CourseStartDate 
		,[College] = @College 
		,[University] = @University
		,[ModifiedOn] = @CurrentDateTime
		,[ModifiedBy] = @RefProfileID
		WHERE [EduID] = @EduID
	END
	ELSE 
	BEGIN
		INSERT INTO [Profile].[Education]
		([RefProfileID],[Subject],[Course],[CoursePassDate],[CourseStartDate],[College],[University]
		,[InsertedOn],[Insertedby],[ModifiedOn],[ModifiedBy])
		VALUES
		(@RefProfileID,ISNULL(@Subject,NULL),ISNULL(@Course,NULL)
		,ISNULL(@CoursePassDate,NULL),ISNULL(@CourseStartDate,NULL)
		,ISNULL(@College,NULL),ISNULL(@University,NULL)
		,@CurrentDateTime,@RefProfileID,@CurrentDateTime,@RefProfileID)
	END
	END
END
GO
/****** Object:  StoredProcedure [Master].[CRUD_Designation]    Script Date: 03/12/2016 16:17:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Master].[CRUD_Designation]
	@ActionType VARCHAR(15),
	@Designation VARCHAR(100) = NULL,
	@DesignationID INT = NULL,
	@SearchText varchar(100) = NULL,
	@ReturnValue VARCHAR OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    IF @ActionType = 'SELECT'
    BEGIN
		SELECT DesignationID, Designation FROM [Master].[Designation] WHERE IsActive = 1 ORDER BY Designation
	END
	ELSE IF @ActionType = 'SELECTLIMIT'
	BEGIN	
		IF @SearchText <> ''		
		BEGIN
			SET @SearchText = '%' + @SearchText + '%'
			SELECT DesignationID, Designation FROM [Master].[Designation] 
			WHERE IsActive = 1 AND Designation LIKE @SearchText
			ORDER BY Designation
		END	
	END
	ELSE IF @ActionType = 'INSERT'
	BEGIN
		INSERT INTO [Master].[Designation] (Designation) VALUES(@Designation)
	END
	ELSE IF @ActionType = 'UPDATE'
	BEGIN
		UPDATE [Master].[Designation] SET Designation = @Designation
		WHERE DesignationID = @DesignationID
	END
	ELSE IF @ActionType = 'DELETE'
	BEGIN
		--DELETE FROM [Master].[Designation] WHERE DesignationID = @DesignationID
		UPDATE [Master].[Designation] SET IsActive = 0
		WHERE DesignationID = @DesignationID
	END
    
    
END
GO
/****** Object:  StoredProcedure [Master].[CRUD_Department]    Script Date: 03/12/2016 16:17:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Master].[CRUD_Department]
	@ActionType VARCHAR(15),
	@Department VARCHAR(100) = NULL,
	@DepartmentID INT = NULL,
	@SearchText varchar(100) = NULL,
	@ReturnValue VARCHAR OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    IF @ActionType = 'SELECT'
    BEGIN
		SELECT DepartmentID, Department FROM [Master].[Department] WHERE IsActive = 1 ORDER BY Department
	END
	ELSE IF @ActionType = 'SELECTLIMIT'
	BEGIN	
		IF @SearchText <> ''		
		BEGIN
			SET @SearchText = '%' + @SearchText + '%'
			SELECT DepartmentID, Department FROM [Master].[Department] 
			WHERE IsActive = 1 AND Department LIKE @SearchText
			ORDER BY Department
		END	
		PRINT (@SearchText)	
	END
	ELSE IF @ActionType = 'INSERT'
	BEGIN
		INSERT INTO [Master].[Department] (Department) VALUES(@Department)
	END
	ELSE IF @ActionType = 'UPDATE'
	BEGIN
		UPDATE [Master].[Department] SET Department = @Department
		WHERE DepartmentID = @DepartmentID
	END
	ELSE IF @ActionType = 'DELETE'
	BEGIN
		--DELETE FROM [Master].[Department] WHERE DepartmentID = @DepartmentID
		UPDATE [Master].[Department] SET IsActive = 0
		WHERE DepartmentID = @DepartmentID
	END
    
    
END
GO
/****** Object:  StoredProcedure [Master].[CRUD_Country]    Script Date: 03/12/2016 16:17:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Master].[CRUD_Country]
	@ActionType VARCHAR(15),
	@CountryName VARCHAR(100) = NULL,
	@CountryID INT = NULL,
	@SearchText varchar(100) = NULL,
	@ReturnValue VARCHAR OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    IF @ActionType = 'SELECT'
    BEGIN
		SELECT CountryID, CountryName FROM [Master].Country WHERE IsActive = 1 ORDER BY CountryName
	END
	ELSE IF @ActionType = 'SELECTLIMIT'
	BEGIN	
		IF @SearchText <> ''		
		BEGIN
			SET @SearchText = '%' + @SearchText + '%'
			SELECT CountryID, CountryName FROM [Master].Country 
			WHERE IsActive = 1 AND CountryName LIKE @SearchText
			ORDER BY CountryName
		END	
		PRINT (@SearchText)	
	END
	ELSE IF @ActionType = 'INSERT'
	BEGIN
		INSERT INTO [Master].Country(CountryName) VALUES(@CountryName)
	END
	ELSE IF @ActionType = 'UPDATE'
	BEGIN
		UPDATE [Master].Country SET CountryName = @CountryName
		WHERE CountryID = @CountryID
	END
	ELSE IF @ActionType = 'DELETE'
	BEGIN
		--DELETE FROM [Master].Country WHERE CountryID = @CountryID
		UPDATE [Master].Country SET IsActive = 0
		WHERE CountryID = @CountryID
	END
    
    
END
GO
/****** Object:  StoredProcedure [Profile].[CRUD_Contact]    Script Date: 03/12/2016 16:17:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Profile].[CRUD_Contact]
	@ActionType VARCHAR(20),
	@MobileNo1 varchar(100) = NULL,	
	@MobileNo2 varchar(100) = NULL,	
	@LandLineNo1 varchar(100) = NULL,	
	@LandLineNo2 varchar(100) = NULL,
	@RefProfileID INT,
	@SearchItem varchar(100) = NULL,
	@ReturnValue VARCHAR(100) OUTPUT
AS
BEGIN
SET NOCOUNT ON;
	
	
	IF @ActionType = 'SELECTLIMIT' 
	BEGIN
		SELECT 
			RefProfileID,MobileNo1,MobileNo2,LandLineNo1,LandLineNo2		
		FROM [Profile].[Contact]
		WHERE RefProfileID = @RefProfileID
	END
	ELSE IF @ActionType = 'UPDATE'
	BEGIN	
		DECLARE @CurrentDateTime as DATETIME
		SET @CurrentDateTime = DATEADD(mi,330,GETUTCDATE())
	    IF EXISTS (SELECT RefProfileID FROM [Profile].[Contact] WHERE RefProfileID = @RefProfileID)
	    BEGIN
			UPDATE [Profile].[Contact] SET
			MobileNo1 = @MobileNo1,
			MobileNo2 = @MobileNo2,
			LandLineNo1 = @LandLineNo1,
			LandLineNo2 = @LandLineNo2
			,ModifiedOn = @CurrentDateTime,
			ModifiedBy = @RefProfileID
			WHERE RefProfileID = @RefProfileID
		END
		ELSE
		BEGIN
			
			INSERT INTO [Profile].[Contact]
			(RefProfileID,MobileNo1,MobileNo2,LandLineNo1,LandLineNo2
			,InsertedOn,InsertedBy,ModifiedOn,ModifiedBy)
			VALUES
			(@RefProfileID,@MobileNo1,@MobileNo2,@LandLineNo1,@LandLineNo2
			,Convert(DATETIME,@CurrentDateTime,101),@RefProfileID
			,Convert(DATETIME,@CurrentDateTime,101),@RefProfileID)
			
		END
	END
END
GO
/****** Object:  StoredProcedure [Master].[CRUD_Salutation]    Script Date: 03/12/2016 16:17:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Master].[CRUD_Salutation]
	@ActionType VARCHAR(15),
	@Salutation VARCHAR(100) = NULL,
	@SalutationID INT = NULL,
	@SearchText varchar(100) = NULL,
	@ReturnValue VARCHAR OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    IF @ActionType = 'SELECT'
    BEGIN
		SELECT SalutationID, Salutation FROM [Master].Salutation WHERE IsActive = 1 ORDER BY Salutation
	END
	ELSE IF @ActionType = 'SELECTLIMIT'
	BEGIN	
		IF @SearchText <> ''		
		BEGIN
			SET @SearchText = '%' + @SearchText + '%'
			SELECT SalutationID, Salutation FROM [Master].Salutation 
			WHERE IsActive = 1 AND Salutation LIKE @SearchText
			ORDER BY Salutation
		END	
		PRINT (@SearchText)	
	END
	ELSE IF @ActionType = 'INSERT'
	BEGIN
		INSERT INTO [Master].Salutation(Salutation) VALUES(@Salutation)
	END
	ELSE IF @ActionType = 'UPDATE'
	BEGIN
		UPDATE [Master].Salutation SET Salutation = @Salutation
		WHERE SalutationID = @SalutationID
	END
	ELSE IF @ActionType = 'DELETE'
	BEGIN
		--DELETE FROM [Master].Salutation WHERE SalutationID = @SalutationID
		UPDATE [Master].Salutation SET IsActive = 0
		WHERE SalutationID = @SalutationID
	END
    
    
END
GO
/****** Object:  Table [Master].[City]    Script Date: 03/12/2016 16:17:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Master].[City](
	[CityID] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [varchar](100) NULL,
	[RefStateID] [int] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [Master].[City] ON
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1, N'Port Blair', 1, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (2, N'Ponnur', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (3, N'Proddatur', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (4, N'Pithapuram', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (5, N'Punganur', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (6, N'Puttur', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (7, N'Parvathipuram', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (8, N'Pedana', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (9, N'Peddapuram', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (10, N'Rajahmundry', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (11, N'Rajam', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (12, N'Rajampet', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (13, N'Ramachandrapuram', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (14, N'Rayachoti', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (15, N'Rayadurg', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (16, N'Renigunta', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (17, N'Repalle', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (18, N'Salur', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (19, N'Samalkot', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (20, N'Sattenapalle', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (21, N'Srikakulam', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (22, N'Srikalahasti', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (23, N'Sullurpeta', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (24, N'Tadepalligudem', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (25, N'Tadpatri', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (26, N'Tanuku', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (27, N'Tenali', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (28, N'Tirupati', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (29, N'Tiruvuru', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (30, N'Tuni', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (31, N'Uravakonda', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (32, N'Venkatagiri', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (33, N'Vijayawada', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (34, N'Vinukonda', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (35, N'Visakhapatnam', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (36, N'Vizianagaram', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (37, N'Adoni', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (38, N'Amalapuram', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (39, N'Anakapalle', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (40, N'Anantapur', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (41, N'Bapatla', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (42, N'Bheemunipatnam', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (43, N'Bhimavaram', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (44, N'Bobbili', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (45, N'Chilakaluripet', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (46, N'Chirala', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (47, N'Chittoor', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (48, N'Dharmavaram', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (49, N'Eluru', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (50, N'Gooty', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (51, N'Gudivada', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (52, N'Gudur', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (53, N'Guntakal', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (54, N'Guntur', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (55, N'Hindupur', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (56, N'Jaggaiahpet', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (57, N'Jammalamadugu', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (58, N'Kadapa', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (59, N'Kadiri', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (60, N'Kakinada', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (61, N'Kandukur', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (62, N'Kavali', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (63, N'Kovvur', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (64, N'Kurnool', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (65, N'Macherla', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (66, N'Machilipatnam', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (67, N'Madanapalle', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (68, N'Mandapeta', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (69, N'Markapur', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (70, N'Nagari', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (71, N'Nandyal', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (72, N'Narasapuram', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (73, N'Narasaraopet', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (74, N'Narsipatnam', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (75, N'Nellore', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (76, N'Nidadavole', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (77, N'Nuzvid', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (78, N'Ongole', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (79, N'Palacole', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (80, N'Palasa Kasibugga', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (81, N'Yemmiganur', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (82, N'Yerraguntla', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (83, N'Naharlagun', 3, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (84, N'Pasighat', 3, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (85, N'Rangia', 4, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (86, N'Tinsukia', 4, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (87, N'Tezpur', 4, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (88, N'Sibsagar', 4, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (89, N'Silapathar', 4, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (90, N'Silchar', 4, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (91, N'Nalbari', 4, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (92, N'Nagaon', 4, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (93, N'North Lakhimpur', 4, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (94, N'Mariani', 4, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (95, N'Marigaon', 4, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (96, N'Margherita', 4, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (97, N'Mangaldoi', 4, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (98, N'Mankachar', 4, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (99, N'Lumding', 4, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (100, N'Lanka', 4, 1)
GO
print 'Processed 100 total records'
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (101, N'Karimganj', 4, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (102, N'Jorhat', 4, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (103, N'Guwahati', 4, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (104, N'Goalpara', 4, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (105, N'Dhubri', 4, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (106, N'Dibrugarh', 4, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (107, N'Diphu', 4, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (108, N'Bongaigaon City', 4, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (109, N'Barpeta', 4, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (110, N'Barh', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (111, N'Araria', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (112, N'Arrah', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (113, N'Arwal', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (114, N'Asarganj', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (115, N'Aurangabad', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (116, N'Bagaha', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (117, N'Buxar', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (118, N'Begusarai', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (119, N'Bettiah', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (120, N'Bhabua', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (121, N'Bhagalpur', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (122, N'Dumraon', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (123, N'Dehri-on-Sone', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (124, N'Darbhanga', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (125, N'Gaya', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (126, N'Gopalganj', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (127, N'Forbesganj', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (128, N'Hajipur', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (129, N'Jamui', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (130, N'Jamalpur', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (131, N'Jehanabad', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (132, N'Lakhisarai', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (133, N'Lalganj', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (134, N'Katihar', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (135, N'Khagaria', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (136, N'Kishanganj', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (137, N'Madhepura', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (138, N'Madhubani', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (139, N'Maharajganj', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (140, N'Mahnar Bazar', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (141, N'Makhdumpur', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (142, N'Manihari', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (143, N'Maner', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (144, N'Marhaura', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (145, N'Masaurhi', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (146, N'Mirganj', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (147, N'Mokameh', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (148, N'Motihari', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (149, N'Motipur', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (150, N'Nokha', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (151, N'Naugachhia', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (152, N'Nawada', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (153, N'Muzaffarpur', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (154, N'Munger', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (155, N'Murliganj', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (156, N'Narkatiaganj', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (157, N'Sherghati', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (158, N'Sheikhpura', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (159, N'Sheohar', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (160, N'Sultanganj', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (161, N'Sugauli', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (162, N'Supaul', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (163, N'Siwan', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (164, N'Sonepur', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (165, N'Silao', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (166, N'Sitamarhi', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (167, N'Revelganj', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (168, N'Raxaul Bazar', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (169, N'Ramnagar', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (170, N'Rajgir', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (171, N'Sasaram', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (172, N'Samastipur', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (173, N'Saharsa', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (174, N'Rosera', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (175, N'Patna', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (176, N'Purnia', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (177, N'Rafiganj', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (178, N'Piro', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (179, N'Warisaliganj', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (180, N'Chandigarh', 6, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (181, N'Bilaspur', 7, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (182, N'Bhilai Nagar', 7, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (183, N'Bhatapara', 7, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (184, N'Dalli-Rajhara', 7, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (185, N'Chirmiri', 7, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (186, N'Dhamtari', 7, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (187, N'Durg', 7, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (188, N'Ambikapur', 7, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (189, N'Korba', 7, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (190, N'Jagdalpur', 7, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (191, N'Naila Janjgir', 7, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (192, N'Mungeli', 7, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (193, N'Manendragarh', 7, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (194, N'Mahasamund', 7, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (195, N'Raigarh', 7, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (196, N'Raipur', 7, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (197, N'Sakti', 7, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (198, N'Rajnandgaon', 7, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (199, N'Tilda Newra', 7, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (200, N'Silvassa', 8, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (201, N'New Delhi', 9, 1)
GO
print 'Processed 200 total records'
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (202, N'Marmagao', 10, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (203, N'Mapusa', 10, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (204, N'Margao', 10, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (205, N'Panaji', 10, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (206, N'Pardi', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (207, N'Palanpur', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (208, N'Patan', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (209, N'Petlad', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (210, N'Radhanpur', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (211, N'Porbandar', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (212, N'Rajpipla', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (213, N'Rajkot', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (214, N'Rajula', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (215, N'Ranavav', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (216, N'Rapar', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (217, N'Salaya', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (218, N'Sanand', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (219, N'Sidhpur', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (220, N'Sihor', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (221, N'Savarkundla', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (222, N'Songadh', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (223, N'Talaja', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (224, N'Surat', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (225, N'Tharad', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (226, N'Thangadh', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (227, N'Visnagar', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (228, N'Viramgam', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (229, N'Vijapur', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (230, N'Veraval', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (231, N'Vadnagar', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (232, N'Vadodara', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (233, N'Valsad', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (234, N'Vapi', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (235, N'Umreth', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (236, N'Una', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (237, N'Unjha', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (238, N'Umbergaon', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (239, N'Upleta', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (240, N'Mansa', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (241, N'Mangrol', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (242, N'Mandvi', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (243, N'Morvi', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (244, N'Modasa', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (245, N'Mehmedabad', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (246, N'Mahuva', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (247, N'Mahesana', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (248, N'Manavadar', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (249, N'Lunawada', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (250, N'Lathi', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (251, N'Limbdi', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (252, N'Navsari', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (253, N'Palitana', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (254, N'Padra', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (255, N'Nadiad', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (256, N'Jamnagar', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (257, N'Dhoraji', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (258, N'Godhra', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (259, N'Khambhat', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (260, N'Keshod', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (261, N'Kadi', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (262, N'Kapadvanj', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (263, N'Anand', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (264, N'Amreli', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (265, N'Anjar', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (266, N'Ankleshwar', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (267, N'Ahmedabad', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (268, N'Adalaj', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (269, N'Deesa', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (270, N'Chhapra', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (271, N'Bhavnagar', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (272, N'Bharuch', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (273, N'Bhuj', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (274, N'Wadhwan', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (275, N'Vyara', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (276, N'Wankaner', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (277, N'Yamunanagar', 12, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (278, N'Bhiwani', 12, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (279, N'Charkhi Dadri', 12, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (280, N'Bahadurgarh', 12, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (281, N'Kaithal', 12, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (282, N'Karnal', 12, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (283, N'Jind', 12, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (284, N'Ladwa', 12, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (285, N'Gohana', 12, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (286, N'Gurgaon', 12, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (287, N'Faridabad', 12, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (288, N'Fatehabad', 12, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (289, N'Hisar', 12, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (290, N'Hansi', 12, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (291, N'Narwana', 12, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (292, N'Narnaul', 12, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (293, N'Mandi Dabwali', 12, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (294, N'Mahendragarh', 12, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (295, N'Taraori', 12, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (296, N'Thanesar', 12, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (297, N'Tohana', 12, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (298, N'Sonipat', 12, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (299, N'Sohna', 12, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (300, N'Sirsa', 12, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (301, N'Shahbad', 12, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (302, N'Sarsod', 12, 1)
GO
print 'Processed 300 total records'
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (303, N'Samalkha', 12, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (304, N'Rohtak', 12, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (305, N'Safidon', 12, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (306, N'Ratia', 12, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (307, N'Rania', 12, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (308, N'Rewari', 12, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (309, N'Pinjore', 12, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (310, N'Pehowa', 12, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (311, N'Palwal', 12, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (312, N'Panchkula', 12, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (313, N'Panipat', 12, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (314, N'Shimla', 13, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (315, N'Solan', 13, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (316, N'Sundarnagar', 13, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (317, N'Mandi', 13, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (318, N'Nahan', 13, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (319, N'Jammu', 14, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (320, N'Kathua', 14, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (321, N'Baramula', 14, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (322, N'Anantnag', 14, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (323, N'Srinagar', 14, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (324, N'Sopore', 14, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (325, N'Udhampur', 14, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (326, N'Punch', 14, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (327, N'Rajauri', 14, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (328, N'Ramgarh', 15, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (329, N'Ranchi', 15, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (330, N'Sahibganj', 15, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (331, N'Saunda', 15, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (332, N'Patratu', 15, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (333, N'Phusro', 15, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (334, N'Tenu dam-cum-Kathhara', 15, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (335, N'Simdega', 15, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (336, N'Adityapur', 15, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (337, N'Chatra', 15, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (338, N'Bokaro Steel City', 15, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (339, N'Chirkunda', 15, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (340, N'Deoghar', 15, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (341, N'Dhanbad', 15, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (342, N'Dumka', 15, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (343, N'Chaibasa', 15, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (344, N'Jhumri Tilaiya', 15, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (345, N'Jamshedpur', 15, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (346, N'Hazaribag', 15, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (347, N'Gumia', 15, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (348, N'Giridih', 15, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (349, N'Musabani', 15, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (350, N'Pakaur', 15, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (351, N'Mihijam', 15, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (352, N'Medininagar (Daltonganj)', 15, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (353, N'Lohardaga', 15, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (354, N'Madhupur', 15, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (355, N'Madikeri', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (356, N'Magadi', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (357, N'Mahalingapura', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (358, N'Madhugiri', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (359, N'Maddur', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (360, N'Lingsugur', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (361, N'Malavalli', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (362, N'Malur', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (363, N'Mandya', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (364, N'Mangalore', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (365, N'Manvi', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (366, N'Mundargi', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (367, N'Mudabidri', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (368, N'Mudalagi', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (369, N'Muddebihal', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (370, N'Mudhol', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (371, N'Mulbagal', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (372, N'Nanjangud', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (373, N'Gokak', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (374, N'Gulbarga', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (375, N'Hubli-Dharwad', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (376, N'Karwar', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (377, N'Kolar', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (378, N'Lakshmeshwar', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (379, N'Bellary', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (380, N'Belgaum', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (381, N'Chikmagalur', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (382, N'Davanagere', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (383, N'Adyar', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (384, N'Afzalpur', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (385, N'Arsikere', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (386, N'Athni', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (387, N'Bangalore', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (388, N'Sindagi', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (389, N'Sindhagi', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (390, N'Sindhnur', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (391, N'Sidlaghatta', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (392, N'Shivamogga', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (393, N'Shrirangapattana', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (394, N'Shahabad', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (395, N'Savanur', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (396, N'Sedam', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (397, N'Shiggaon', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (398, N'Shikaripur', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (399, N'Shahpur', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (400, N'Srinivaspur', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (401, N'Sirsi', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (402, N'Sira', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (403, N'Siruguppa', 16, 1)
GO
print 'Processed 400 total records'
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (404, N'Talikota', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (405, N'Talikota', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (406, N'Surapura', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (407, N'Terdal', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (408, N'Tarikere', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (409, N'Tekkalakote', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (410, N'Tiptur', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (411, N'Udupi', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (412, N'Tumkur', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (413, N'Vijayapura', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (414, N'Pavagada', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (415, N'Raayachuru', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (416, N'Rabkavi Banhatti', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (417, N'Puttur', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (418, N'Piriyapatna', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (419, N'Saundatti-Yellamma', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (420, N'Sankeshwara', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (421, N'Sandur', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (422, N'Sagara', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (423, N'Sakaleshapura', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (424, N'Sadalagi', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (425, N'Ron', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (426, N'Robertson Pet', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (427, N'Ranebennuru', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (428, N'Ranibennur', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (429, N'Ramdurg', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (430, N'Ramanagaram', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (431, N'Wadi', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (432, N'Yadgir', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (433, N'Ponnani', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (434, N'Punalur', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (435, N'Puthuppally', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (436, N'Quilandy', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (437, N'Perumbavoor', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (438, N'Peringathur', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (439, N'Perinthalmanna', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (440, N'Pathanamthitta', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (441, N'Panamattom', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (442, N'Panniyannur', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (443, N'Pappinisseri', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (444, N'Paravoor', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (445, N'Vaikom', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (446, N'Varkala', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (447, N'Vadakara', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (448, N'Thrissur', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (449, N'Tirur', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (450, N'Thiruvalla', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (451, N'Thiruvananthapuram', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (452, N'Thodupuzha', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (453, N'Taliparamba', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (454, N'Shoranur', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (455, N'Adoor', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (456, N'Alappuzha', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (457, N'Chittur-Thathamangalam', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (458, N'Cherthala', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (459, N'Chalakudy', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (460, N'Changanassery', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (461, N'Kozhikode', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (462, N'Kunnamkulam', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (463, N'Kollam', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (464, N'Kochi', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (465, N'Kodungallur', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (466, N'Kasaragod', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (467, N'Kayamkulam', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (468, N'Kanhangad', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (469, N'Kannur', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (470, N'Guruvayoor', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (471, N'Muvattupuzha', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (472, N'Palai', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (473, N'Palakkad', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (474, N'Neyyattinkara', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (475, N'Ottappalam', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (476, N'Nedumangad', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (477, N'Nilambur', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (478, N'Mattannur', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (479, N'Mavelikkara', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (480, N'Mavoor', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (481, N'Malappuram', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (482, N'Kottayam', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (483, N'Maharajpur', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (484, N'Malaj Khand', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (485, N'Mahidpur', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (486, N'Maihar', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (487, N'Manasa', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (488, N'Manawar', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (489, N'Mandideep', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (490, N'Mandla', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (491, N'Mandsaur', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (492, N'Mhow Cantonment', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (493, N'Mhowgaon', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (494, N'Morena', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (495, N'Mauganj', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (496, N'Nepanagar', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (497, N'Niwari', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (498, N'Neemuch', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (499, N'Narsinghgarh', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (500, N'Narsinghgarh', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (501, N'Nowgong', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (502, N'Nowrozabad (Khodargama)', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (503, N'Pachore', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (504, N'Nagda', 18, 1)
GO
print 'Processed 500 total records'
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (505, N'Multai', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (506, N'Mundi', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (507, N'Murwara (Katni)', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (508, N'Nainpur', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (509, N'Ganjbasoda', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (510, N'Indore', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (511, N'Itarsi', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (512, N'Jabalpur', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (513, N'Gwalior', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (514, N'Lahar', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (515, N'Bhopal', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (516, N'Balaghat', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (517, N'Ashok Nagar', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (518, N'Shujalpur', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (519, N'Shivpuri', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (520, N'Sihora', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (521, N'Singrauli', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (522, N'Sidhi', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (523, N'Shajapur', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (524, N'Shamgarh', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (525, N'Sheopur', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (526, N'Sehore', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (527, N'Sendhwa', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (528, N'Seoni', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (529, N'Seoni-Malwa', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (530, N'Shahdol', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (531, N'Sironj', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (532, N'Sohagpur', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (533, N'Tarana', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (534, N'Tikamgarh', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (535, N'Ujjain', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (536, N'Umaria', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (537, N'Vidisha', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (538, N'Vijaypur', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (539, N'Pasan', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (540, N'Panagar', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (541, N'Pali', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (542, N'Panna', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (543, N'Pandhurna', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (544, N'Raisen', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (545, N'Rahatgarh', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (546, N'Raghogarh-Vijaypur', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (547, N'Prithvipur', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (548, N'Porsa', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (549, N'Pithampur', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (550, N'Pipariya', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (551, N'Rajgarh', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (552, N'Ratlam', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (553, N'Rau', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (554, N'Rewa', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (555, N'Rehli', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (556, N'Sabalgarh', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (557, N'Sagar', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (558, N'Sanawad', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (559, N'Sarangpur', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (560, N'Sausar', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (561, N'Satna', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (562, N'Sarni', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (563, N'Wara Seoni', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (564, N'Wadgaon Road', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (565, N'Wai', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (566, N'Wani', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (567, N'Wardha', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (568, N'Warora', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (569, N'Warud', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (570, N'Washim', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (571, N'Yavatmal', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (572, N'Yawal', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (573, N'Yevla', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (574, N'Sasvad', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (575, N'Satana', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (576, N'Satara', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (577, N'Sangamner', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (578, N'Sangli', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (579, N'Sangole', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (580, N'Sailu', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (581, N'Raver', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (582, N'Risod', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (583, N'Ratnagiri', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (584, N'Ramtek', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (585, N'Rajura', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (586, N'Pulgaon', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (587, N'Rahuri', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (588, N'Pusad', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (589, N'Pune', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (590, N'Purna', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (591, N'Pandharkaoda', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (592, N'Pandharpur', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (593, N'Parli', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (594, N'Parola', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (595, N'Partur', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (596, N'Parbhani', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (597, N'Panvel', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (598, N'Pathardi', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (599, N'Pathri', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (600, N'Pen', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (601, N'Patur', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (602, N'Pauni', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (603, N'Phaltan', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (604, N'Vita', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (605, N'Vasai-Virar', 19, 1)
GO
print 'Processed 600 total records'
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (606, N'Vaijapur', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (607, N'Umarkhed', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (608, N'Umarga', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (609, N'Tumsar', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (610, N'Uchgaon', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (611, N'Udgir', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (612, N'Vadgaon Kasba', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (613, N'Uran', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (614, N'Uran Islampur', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (615, N'Umred', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (616, N'Tirora', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (617, N'Tuljapur', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (618, N'Tasgaon', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (619, N'Thane', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (620, N'Solapur', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (621, N'Soyagaon', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (622, N'Sillod', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (623, N'Talode', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (624, N'Talegaon Dabhade', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (625, N'Sawantwadi', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (626, N'Savner', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (627, N'Shendurjana', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (628, N'Shahade', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (629, N'Shegaon', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (630, N'Sinnar', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (631, N'Shrigonda', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (632, N'Shrirampur', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (633, N'Shirdi', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (634, N'Shirpur-Warwade', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (635, N'Shirur', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (636, N'Anjangaon', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (637, N'Arvi', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (638, N'Amravati', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (639, N'Amalner', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (640, N'Ambejogai', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (641, N'Akola', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (642, N'Akot', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (643, N'Ahmednagar', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (644, N'Achalpur', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (645, N'Bhiwandi', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (646, N'Dhule', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (647, N'Kalyan-Dombivali', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (648, N'Karjat', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (649, N'Ichalkaranji', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (650, N'Greater Mumbai', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (651, N'Nanded-Waghala', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (652, N'Nandgaon', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (653, N'Nagpur', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (654, N'Nandura', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (655, N'Nandurbar', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (656, N'Nashik', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (657, N'Narkhed', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (658, N'Murtijapur', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (659, N'Mul', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (660, N'Mukhed', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (661, N'Paithan', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (662, N'Palghar', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (663, N'Ozar', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (664, N'Osmanabad', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (665, N'Pachora', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (666, N'Navi Mumbai', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (667, N'Nawapur', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (668, N'Nilanga', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (669, N'Manwath', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (670, N'Mangalvedhe', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (671, N'Manjlegaon', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (672, N'Manmad', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (673, N'Mhaswad', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (674, N'Morshi', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (675, N'Mira-Bhayandar', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (676, N'Mehkar', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (677, N'Mangrulpir', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (678, N'Malegaon', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (679, N'Malkapur', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (680, N'Mahad', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (681, N'Latur', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (682, N'Loha', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (683, N'Lonar', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (684, N'Lonavla', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (685, N'Lilong', 20, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (686, N'Mayang Imphal', 20, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (687, N'Imphal', 20, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (688, N'Thoubal', 20, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (689, N'Tura', 21, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (690, N'Shillong', 21, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (691, N'Nongstoin', 21, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (692, N'Lunglei', 22, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (693, N'Aizawl', 22, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (694, N'Saiha', 22, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (695, N'Tuensang', 23, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (696, N'Dimapur', 23, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (697, N'Kohima', 23, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (698, N'Mokokchung', 23, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (699, N'Zunheboto', 23, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (700, N'Wokha', 23, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (701, N'Malkangiri', 24, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (702, N'Nabarangapur', 24, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (703, N'Kendrapara', 24, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (704, N'Kendujhar', 24, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (705, N'Jharsuguda', 24, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (706, N'Jatani', 24, 1)
GO
print 'Processed 700 total records'
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (707, N'Dhenkanal', 24, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (708, N'Cuttack', 24, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (709, N'Bhawanipatna', 24, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (710, N'Bhadrak', 24, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (711, N'Bhubaneswar', 24, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (712, N'Byasanagar', 24, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (713, N'Brahmapur', 24, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (714, N'Balangir', 24, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (715, N'Baleshwar Town', 24, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (716, N'Barbil', 24, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (717, N'Bargarh', 24, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (718, N'Baripada Town', 24, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (719, N'Titlagarh', 24, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (720, N'Tarbha', 24, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (721, N'Talcher', 24, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (722, N'Sundargarh', 24, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (723, N'Sunabeda', 24, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (724, N'Soro', 24, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (725, N'Sambalpur Town', 24, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (726, N'Raurkela', 24, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (727, N'Rayagada', 24, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (728, N'Phulabani', 24, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (729, N'Pattamundai', 24, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (730, N'Paradip', 24, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (731, N'Parlakhemundi', 24, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (732, N'Puri', 24, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (733, N'Rajagangapur', 24, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (734, N'Rairangpur', 24, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (735, N'Pondicherry', 25, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (736, N'Karaikal', 25, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (737, N'Mahe', 25, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (738, N'Yanam', 25, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (739, N'Zira', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (740, N'Zirakpur', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (741, N'Malout', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (742, N'Malerkotla', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (743, N'Ludhiana', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (744, N'Longowal', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (745, N'Mansa', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (746, N'Moga', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (747, N'Mohali', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (748, N'Morinda', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (749, N'Nabha', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (750, N'Muktsar', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (751, N'Mukerian', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (752, N'Nangal', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (753, N'Nakodar', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (754, N'Nawanshahr', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (755, N'Kapurthala', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (756, N'Kharar', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (757, N'Khanna', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (758, N'Kot Kapura', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (759, N'Jalandhar', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (760, N'Jalandhar Cantt.', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (761, N'Jagraon', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (762, N'Hoshiarpur', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (763, N'Gurdaspur', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (764, N'Gobindgarh', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (765, N'Fazilka', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (766, N'Firozpur', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (767, N'Firozpur Cantt.', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (768, N'Faridkot', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (769, N'Barnala', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (770, N'Batala', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (771, N'Bathinda', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (772, N'Amritsar', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (773, N'Dhuri', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (774, N'Raikot', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (775, N'Qadian', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (776, N'Patti', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (777, N'Patiala', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (778, N'Patran', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (779, N'Pathankot', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (780, N'Phillaur', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (781, N'Phagwara', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (782, N'Rajpura', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (783, N'Rampura Phul', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (784, N'Samana', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (785, N'Sangrur', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (786, N'Rupnagar', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (787, N'Sirhind Fatehgarh Sahib', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (788, N'Sunam', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (789, N'Sujanpur', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (790, N'Talwara', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (791, N'Tarn Taran', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (792, N'Urmar Tanda', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (793, N'Udaipur', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (794, N'Vijainagar, Ajmer', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (795, N'Udaipurwati', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (796, N'Taranagar', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (797, N'Tonk', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (798, N'Todabhim', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (799, N'Todaraisingh', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (800, N'Suratgarh', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (801, N'Sujangarh', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (802, N'Sumerpur', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (803, N'Sirohi', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (804, N'Sojat', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (805, N'Sri Madhopur', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (806, N'Sheoganj', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (807, N'Sikar', 27, 1)
GO
print 'Processed 800 total records'
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (808, N'Shahpura', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (809, N'Sawai Madhopur', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (810, N'Sadri', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (811, N'Sadulpur', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (812, N'Sadulshahar', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (813, N'Sagwara', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (814, N'Sambhar', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (815, N'Sanchore', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (816, N'Sardarshahar', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (817, N'Sangaria', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (818, N'Ramngarh', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (819, N'Ramganj Mandi', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (820, N'Rajsamand', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (821, N'Rajgarh (Alwar)', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (822, N'Rajgarh (Churu)', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (823, N'Rajakhera', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (824, N'Rajaldesar', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (825, N'Reengus', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (826, N'Rawatbhata', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (827, N'Rawatsar', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (828, N'Ratangarh', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (829, N'Phalodi', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (830, N'Phulera', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (831, N'Raisinghnagar', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (832, N'Pindwara', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (833, N'Pipar City', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (834, N'Pilani', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (835, N'Pilibanga', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (836, N'Prantij', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (837, N'Pratapgarh', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (838, N'Bikaner', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (839, N'Ajmer', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (840, N'Alwar', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (841, N'Jaipur', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (842, N'Lachhmangarh', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (843, N'Ladnu', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (844, N'Lakheri', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (845, N'Neem-Ka-Thana', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (846, N'Nathdwara', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (847, N'Navalgund', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (848, N'Nimbahera', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (849, N'Nelamangala', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (850, N'Nokha', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (851, N'Nohar', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (852, N'Pali', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (853, N'Nagar', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (854, N'Nagaur', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (855, N'Nargund', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (856, N'Nasirabad', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (857, N'Nadbai', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (858, N'Mount Abu', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (859, N'Merta City', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (860, N'Mangrol', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (861, N'Losal', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (862, N'Lalsot', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (863, N'Malpura', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (864, N'Mandawa', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (865, N'Mandalgarh', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (866, N'Makrana', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (867, N'Lalgudi', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (868, N'Madurai', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (869, N'Nagercoil', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (870, N'Nagapattinam', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (871, N'Natham', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (872, N'Nanjikottai', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (873, N'Nandivaram-Guduvancheri', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (874, N'Namagiripettai', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (875, N'Namakkal', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (876, N'Palladam', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (877, N'Pallapatti', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (878, N'Pallikonda', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (879, N'Pacode', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (880, N'Padmanabhapuram', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (881, N'Palani', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (882, N'Oddanchatram', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (883, N'P.N.Patti', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (884, N'OValley', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (885, N'Neyveli (TS)', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (886, N'Nellikuppam', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (887, N'Kancheepuram', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (888, N'Karur', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (889, N'Erode', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (890, N'Gobichettipalayam', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (891, N'Aruppukkottai', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (892, N'Arakkonam', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (893, N'Coimbatore', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (894, N'Chennai', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (895, N'Ponneri', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (896, N'Puliyankudi', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (897, N'Pudukkottai', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (898, N'Pudupattinam', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (899, N'Pollachi', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (900, N'Polur', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (901, N'Punjaipugalur', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (902, N'Periyakulam', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (903, N'Periyasemur', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (904, N'Pernampattu', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (905, N'Pattukkottai', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (906, N'Perambalur', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (907, N'Peravurani', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (908, N'Paramakudi', 28, 1)
GO
print 'Processed 900 total records'
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (909, N'Parangipettai', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (910, N'Panruti', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (911, N'Panagudi', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (912, N'Rasipuram', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (913, N'Ranipet', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (914, N'Rajapalayam', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (915, N'Rameshwaram', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (916, N'Ramanathapuram', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (917, N'Sattur', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (918, N'Sathyamangalam', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (919, N'Sankarankoil', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (920, N'Sankari', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (921, N'Salem', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (922, N'Shenkottai', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (923, N'Sholavandan', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (924, N'Sholingur', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (925, N'Sirkali', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (926, N'Sivaganga', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (927, N'Sivagiri', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (928, N'Sivakasi', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (929, N'Surandai', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (930, N'Srivilliputhur', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (931, N'Suriyampalayam', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (932, N'Tindivanam', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (933, N'Tittakudi', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (934, N'Tiruttani', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (935, N'Tiruvannamalai', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (936, N'Tiruvethipuram', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (937, N'Tiruchendur', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (938, N'Tiruchengode', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (939, N'Tiruchirappalli', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (940, N'Tirukalukundram', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (941, N'Tirukkoyilur', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (942, N'Tirunelveli', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (943, N'Tirupathur', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (944, N'Thuraiyur', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (945, N'Tiruppur', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (946, N'Tenkasi', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (947, N'Thiruvarur', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (948, N'Thiruvallur', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (949, N'Thanjavur', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (950, N'Thammampatti', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (951, N'Tharamangalam', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (952, N'Tharangambadi', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (953, N'Theni Allinagaram', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (954, N'Thirumangalam', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (955, N'Thirupuvanam', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (956, N'Thiruthuraipoondi', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (957, N'Viswanatham', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (958, N'Vikramasingapuram', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (959, N'Viluppuram', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (960, N'Virudhachalam', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (961, N'Virudhunagar', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (962, N'Vedaranyam', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (963, N'Vellakoil', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (964, N'Vellore', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (965, N'Valparai', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (966, N'Vandavasi', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (967, N'Vaniyambadi', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (968, N'Udhagamandalam', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (969, N'Udumalaipettai', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (970, N'Usilampatti', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (971, N'Uthamapalayam', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (972, N'Uthiramerur', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (973, N'Vadipatti', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (974, N'Vadakkuvalliyur', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (975, N'Vadalur', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (976, N'Unnamalaikadai', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (977, N'Vikarabad', 29, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (978, N'Suryapet', 29, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (979, N'Tandur', 29, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (980, N'Sircilla', 29, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (981, N'Siddipet', 29, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (982, N'Sadasivpet', 29, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (983, N'Sangareddy', 29, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (984, N'Ramagundam', 29, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (985, N'Palwancha', 29, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (986, N'Bodhan', 29, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (987, N'Bhainsa', 29, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (988, N'Bellampalle', 29, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (989, N'Bhadrachalam', 29, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (990, N'Bhongir', 29, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (991, N'Adilabad', 29, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (992, N'Farooqnagar', 29, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (993, N'Gadwal', 29, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (994, N'Jagtial', 29, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (995, N'Jangaon', 29, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (996, N'Hyderabad', 29, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (997, N'Karimnagar', 29, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (998, N'Kagaznagar', 29, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (999, N'Kamareddy', 29, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1000, N'Kyathampalle', 29, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1001, N'Kothagudem', 29, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1002, N'Khammam', 29, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1003, N'Koratla', 29, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1004, N'Nirmal', 29, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1005, N'Nizamabad', 29, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1006, N'Narayanpet', 29, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1007, N'Nagarkurnool', 29, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1008, N'Mahbubnagar', 29, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1009, N'Mandamarri', 29, 1)
GO
print 'Processed 1000 total records'
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1010, N'Mancherial', 29, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1011, N'Manuguru', 29, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1012, N'Medak', 29, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1013, N'Miryalaguda', 29, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1014, N'Yellandu', 29, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1015, N'Wanaparthy', 29, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1016, N'Warangal', 29, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1017, N'Agartala', 30, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1018, N'Pratapgarh', 30, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1019, N'Udaipur', 30, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1020, N'Tundla', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1021, N'Ujhani', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1022, N'Unnao', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1023, N'Utraula', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1024, N'Vrindavan', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1025, N'Varanasi', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1026, N'Thana Bhawan', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1027, N'Thakurdwara', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1028, N'Tilhar', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1029, N'Tirwaganj', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1030, N'Tulsipur', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1031, N'Sikanderpur', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1032, N'Sikandra Rao', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1033, N'Sikandrabad', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1034, N'Siana', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1035, N'Sherkot', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1036, N'Shishgarh', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1037, N'Shikarpur, Bulandshahr', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1038, N'Shikohabad', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1039, N'Shamli', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1040, N'Shamsabad, Agra', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1041, N'Shamsabad, Farrukhabad', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1042, N'Seohara', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1043, N'Shahganj', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1044, N'Shahjahanpur', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1045, N'Shahabad, Hardoi', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1046, N'Shahabad, Rampur', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1047, N'Sitapur', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1048, N'Sirsi', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1049, N'Sirsaganj', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1050, N'Soron', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1051, N'Tanda', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1052, N'Suar', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1053, N'Sultanpur', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1054, N'Sumerpur', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1055, N'Powayan', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1056, N'Pukhrayan', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1057, N'Pilibhit', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1058, N'Pilkhuwa', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1059, N'Puranpur', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1060, N'Purquazi', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1061, N'Purwa', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1062, N'Rae Bareli', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1063, N'Palia Kalan', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1064, N'Parasi', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1065, N'Phulpur', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1066, N'Pihani', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1067, N'Rampur', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1068, N'Rampur Maniharan', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1069, N'Rampur Maniharan', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1070, N'Rasra', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1071, N'Rath', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1072, N'Robertsganj', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1073, N'Renukoot', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1074, N'Reoti', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1075, N'Samdhan', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1076, N'Samthar', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1077, N'Sandi', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1078, N'Sandila', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1079, N'Sambhal', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1080, N'Sardhana', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1081, N'Safipur', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1082, N'Sadabad', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1083, N'Rudrapur', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1084, N'Rudauli', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1085, N'Saharanpur', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1086, N'Sahjanwa', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1087, N'Saidpur', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1088, N'Sahaspur', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1089, N'Sahaswan', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1090, N'Sahawar', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1091, N'Agra', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1092, N'Achhnera', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1093, N'Amroha', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1094, N'Aligarh', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1095, N'Allahabad', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1096, N'Azamgarh', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1097, N'Bahraich', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1098, N'Chandausi', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1099, N'Lakhimpur', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1100, N'Laharpur', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1101, N'Lal Gopalganj Nindaura', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1102, N'Lalganj', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1103, N'Kalpi', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1104, N'Kanpur', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1105, N'Hapur', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1106, N'Jhansi', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1107, N'Firozabad', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1108, N'Fatehpur Sikri', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1109, N'Etawah', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1110, N'Modinagar', 31, 1)
GO
print 'Processed 1100 total records'
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1111, N'Moradabad', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1112, N'Meerut', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1113, N'Lalitpur', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1114, N'Lar', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1115, N'Lucknow', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1116, N'Loni', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1117, N'Nagina', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1118, N'Nanpara', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1119, N'Naraura', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1120, N'Nakur', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1121, N'Najibabad', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1122, N'Noida', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1123, N'Niwai', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1124, N'Nawabganj', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1125, N'Naugawan Sadat', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1126, N'Nautanwa', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1127, N'Nehtaur', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1128, N'Orai', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1129, N'Obra', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1130, N'Noorpur', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1131, N'Padrauna', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1132, N'Warhapur', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1133, N'Zaidpur', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1134, N'Zamania', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1135, N'Nainital', 32, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1136, N'Nagla', 32, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1137, N'Mussoorie', 32, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1138, N'Manglaur', 32, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1139, N'Haridwar', 32, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1140, N'Rudrapur', 32, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1141, N'Kashipur', 32, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1142, N'Dehradun', 32, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1143, N'Bageshwar', 32, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1144, N'Haldwani', 32, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1145, N'Roorkee', 32, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1146, N'Rishikesh', 32, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1147, N'Ramnagar', 32, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1148, N'Pauri', 32, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1149, N'Pithoragarh', 32, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1150, N'Sitarganj', 32, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1151, N'Tehri', 32, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1152, N'Tarakeswar', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1153, N'Sonamukhi', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1154, N'Srirampore', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1155, N'Tamluk', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1156, N'Suri', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1157, N'Taki', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1158, N'Siliguri', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1159, N'Raiganj', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1160, N'Raghunathganj', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1161, N'Raghunathpur', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1162, N'Purulia', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1163, N'Paschim Punropara', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1164, N'Panchla', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1165, N'Pandua', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1166, N'Rampurhat', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1167, N'Ranaghat', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1168, N'Sainthia', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1169, N'Santipur', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1170, N'Asansol', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1171, N'Baharampur', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1172, N'Bankura', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1173, N'Alipurduar', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1174, N'Arambagh', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1175, N'Adra', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1176, N'Darjiling', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1177, N'Kolkata', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1178, N'Kharagpur', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1179, N'Hugli-Chinsurah', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1180, N'Jhargram', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1181, N'Jalpaiguri', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1182, N'English Bazar', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1183, N'Mathabhanga', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1184, N'Medinipur', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1185, N'Memari', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1186, N'Monoharpur', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1187, N'Mainaguri', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1188, N'Malda', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1189, N'Nabadwip', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1190, N'Murshidabad', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1191, N'Naihati', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1192, N'Other', 1, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1193, N'Other', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1194, N'Other', 3, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1195, N'Other', 4, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1196, N'Other', 5, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1197, N'Other', 6, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1198, N'Other', 7, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1199, N'Other', 8, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1200, N'Other', 9, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1201, N'Other', 10, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1202, N'Other', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1203, N'Other', 12, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1204, N'Other', 13, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1205, N'Other', 14, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1206, N'Other', 15, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1207, N'Other', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1208, N'Other', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1209, N'Other', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1210, N'Other', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1211, N'Other', 20, 1)
GO
print 'Processed 1200 total records'
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1212, N'Other', 21, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1213, N'Other', 22, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1214, N'Other', 23, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1215, N'Other', 24, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1216, N'Other', 25, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1217, N'Other', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1218, N'Other', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1219, N'Other', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1220, N'Other', 29, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1221, N'Other', 30, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1222, N'Other', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1223, N'Other', 32, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1224, N'Other', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1225, N'Gandhinagar', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1226, N'Gandhidham', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1227, N'Ernakulam', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1228, N'Secundrabad', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1229, N'R R DISTRICT', 2, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1230, N'PAPUMPARE', 3, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1231, N'Gangtok', 4, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1232, N'Dispur', 4, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1233, N'Sonitpur', 4, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1234, N'Kamrup', 4, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1235, N'Bhilai', 6, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1236, N'Bhilai', 7, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1237, N'Daman', 8, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1238, N'BARDEZ', 10, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1239, N'Goa Velha', 10, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1240, N'Madgaon', 10, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1241, N'Ponda', 10, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1242, N'SOUTH GOA', 10, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1243, N'Vasco', 10, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1244, N'Abohar', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1245, N'Adipur', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1246, N'Anklesvar', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1247, N'Daman', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1248, N'Junagadh', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1249, N'KHEDA (MAHEMDAVAD)', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1250, N'Mehsana', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1251, N'Surendranagar', 11, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1252, N'Ambala', 12, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1253, N'Jhajjar', 12, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1254, N'KURUKSHETRA', 12, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1255, N'Hamirpur', 13, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1256, N'KANGRA', 13, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1257, N'KULLU', 13, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1258, N'MANALI', 13, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1259, N'Deogarh', 15, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1260, N'SINGHBHUM', 15, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1261, N'Abohar', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1262, N'BAGALKOT', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1263, N'Banswara', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1264, N'Bengaluru', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1265, N'BHATKAL, UTTARA KANNADA', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1266, N'Bidar', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1267, N'BIJAPUR', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1268, N'Bijnaur', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1269, N'Bodh Gaya', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1270, N'Chamrajnagar', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1271, N'Chitradurga', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1272, N'DAKSHINA KANNADA', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1273, N'Dharwad', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1274, N'Gadag', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1275, N'HOSEPET', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1276, N'Hubli', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1277, N'KODAGU', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1278, N'KOPPAL', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1279, N'KUMTA, UTTARA KANNADA', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1280, N'Mysore', 16, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1281, N'ALAPUZHA', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1282, N'CALICUT', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1283, N'Cochin', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1284, N'Karad', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1285, N'KASARGOD', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1286, N'Puducherry', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1287, N'Thalassery', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1288, N'Tiruvalla', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1289, N'TRICHUR', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1290, N'VALANCHERY', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1291, N'WAYANAD', 17, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1292, N'Betul', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1293, N'BURHANPUR', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1294, N'Chhatarpur', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1295, N'Dewas', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1296, N'Dhar', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1297, N'Guna', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1298, N'Katni', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1299, N'KHANDWA', 18, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1300, N'Baramati', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1301, N'Chandrapur', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1302, N'Daman', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1303, N'Datia', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1304, N'Dombivli', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1305, N'Jalgaon', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1306, N'JALNA', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1307, N'Kalyan', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1308, N'Karad', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1309, N'KHANDALA', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1310, N'Kolhapur', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1311, N'Miraj', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1312, N'Mumbai', 19, 1)
GO
print 'Processed 1300 total records'
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1313, N'Nanded', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1314, N'PCMC ( OUTSIDE LBT )', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1315, N'PIMPRI CHINCHWAD', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1316, N'PUNE ( OUTSIDE LBT )', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1317, N'RAIGAD', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1318, N'Sholapur', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1319, N'SINDHUDURG', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1320, N'Ulhasnagar', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1321, N'Vasai', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1322, N'Virar', 19, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1323, N'Angul', 24, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1324, N'Balasore', 24, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1325, N'Baripada', 24, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1326, N'Berhampur', 24, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1327, N'Ganjam', 24, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1328, N'JAJPUR', 24, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1329, N'KEONJHAR', 24, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1330, N'KHURDA', 24, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1331, N'NAYAGARH', 24, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1332, N'Rourkela', 24, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1333, N'Sambalpur', 24, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1334, N'Puducherry', 25, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1335, N'Fatehgarh', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1336, N'FATEHGARH SAHIB', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1337, N'MANDI GOBINDGARH', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1338, N'Mukatsar', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1339, N'ROPAR', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1340, N'S.A.S. NAGAR', 26, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1341, N'Barmer', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1342, N'Beawar', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1343, N'Bharatpur', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1344, N'Bhilwara', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1345, N'BUNDI', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1346, N'CHITTORGARH', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1347, N'Hanumangarh', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1348, N'Jalore', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1349, N'Jhalawar', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1350, N'Jodhpur', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1351, N'Kota', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1352, N'Mathura', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1353, N'SHRI GANGA NAGAR', 27, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1354, N'Coonoor', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1355, N'Dharampur', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1356, N'Dindigul', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1357, N'Kanchipuram', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1358, N'KANYAKUMARI', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1359, N'KRISHNAGIRI', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1360, N'Krishnanagar', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1361, N'Ootacamund', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1362, N'Puducherry', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1363, N'Thoothukudi', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1364, N'Tirupattur', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1365, N'Tirupur', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1366, N'TK KRISHNAGIRI DIST', 28, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1367, N'Mahabubnagar', 29, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1368, N'Nalgonda', 29, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1369, N'Secundrabad', 29, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1370, N'Amethi', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1371, N'Bareilly', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1372, N'Bulandshahr', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1373, N'Faizabad', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1374, N'GAUTAMABUDDHA NAGAR', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1375, N'Ghaziabad', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1376, N'Ghazipur', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1377, N'Gorakhpur', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1378, N'Greater Noida', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1379, N'Jaunpur', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1380, N'Mathura', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1381, N'MAU', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1382, N'Muzaffarnagar', 31, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1383, N'Kotdwara', 32, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1384, N'UDAMSINGH NAGAR', 32, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1385, N'UDHAM SINGH NAGAR', 32, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1386, N'Uttarpara', 32, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1387, N'Bardhaman', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1388, N'Berhampur', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1389, N'BURDWAN', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1390, N'Chandannagar', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1391, N'Darjeeling', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1392, N'Durgapur', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1393, N'Haldia', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1394, N'HOOGLY', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1395, N'Howrah', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1396, N'NORTH 24 PARGANAS', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1397, N'WEST BANGALORE', 33, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1398, N'Daman', 34, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1399, N'Diu', 34, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1400, N'Gangtok', 35, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1401, N'RANGPO', 35, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1402, N'Kitcha', 32, 1)
INSERT [Master].[City] ([CityID], [CityName], [RefStateID], [IsActive]) VALUES (1403, N'Kathmandu', 36, 1)
SET IDENTITY_INSERT [Master].[City] OFF
/****** Object:  Table [Profile].[Address]    Script Date: 03/12/2016 16:17:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Profile].[Address](
	[RefProfileID] [bigint] NULL,
	[PresentAddressLine1] [varchar](500) NULL,
	[PresentAddressLine2] [varchar](500) NULL,
	[PresentRefCityID] [int] NULL,
	[PresentPinCode] [varchar](10) NULL,
	[PermanentAddressLine1] [varchar](500) NULL,
	[PermanentAddressLine2] [varchar](500) NULL,
	[PermanentRefCityID] [int] NULL,
	[PermanentPinCode] [varchar](10) NULL,
	[InsertedOn] [smalldatetime] NULL,
	[Insertedby] [bigint] NULL,
	[ModifiedOn] [smalldatetime] NULL,
	[ModifiedBy] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [Profile].[Address] ([RefProfileID], [PresentAddressLine1], [PresentAddressLine2], [PresentRefCityID], [PresentPinCode], [PermanentAddressLine1], [PermanentAddressLine2], [PermanentRefCityID], [PermanentPinCode], [InsertedOn], [Insertedby], [ModifiedOn], [ModifiedBy]) VALUES (1, NULL, NULL, 1144, N'263139', NULL, NULL, NULL, NULL, CAST(0xA59D04EA AS SmallDateTime), NULL, NULL, NULL)
INSERT [Profile].[Address] ([RefProfileID], [PresentAddressLine1], [PresentAddressLine2], [PresentRefCityID], [PresentPinCode], [PermanentAddressLine1], [PermanentAddressLine2], [PermanentRefCityID], [PermanentPinCode], [InsertedOn], [Insertedby], [ModifiedOn], [ModifiedBy]) VALUES (2, N'Pre add 1', N'Pre add 2', 201, N'110092', N'Per 1', N'Per 2', 1144, N'112233', CAST(0xA59D0503 AS SmallDateTime), NULL, CAST(0xA5C40502 AS SmallDateTime), 2)
INSERT [Profile].[Address] ([RefProfileID], [PresentAddressLine1], [PresentAddressLine2], [PresentRefCityID], [PresentPinCode], [PermanentAddressLine1], [PermanentAddressLine2], [PermanentRefCityID], [PermanentPinCode], [InsertedOn], [Insertedby], [ModifiedOn], [ModifiedBy]) VALUES (3, NULL, NULL, 1122, N'110021', NULL, NULL, NULL, NULL, CAST(0xA5C00398 AS SmallDateTime), NULL, NULL, NULL)
/****** Object:  Table [Profile].[Personal]    Script Date: 03/12/2016 16:17:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Profile].[Personal](
	[RefProfileID] [bigint] NULL,
	[RefSalutationID] [tinyint] NULL,
	[FirstName] [varchar](100) NULL,
	[MiddleName] [varchar](100) NULL,
	[LastName] [varchar](100) NULL,
	[DOBActual] [smalldatetime] NULL,
	[DOBOfficial] [smalldatetime] NULL,
	[InsertedOn] [smalldatetime] NULL,
	[InsertedBy] [bigint] NULL,
	[ModifiedOn] [smalldatetime] NULL,
	[ModifiedBy] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [Profile].[Personal] ([RefProfileID], [RefSalutationID], [FirstName], [MiddleName], [LastName], [DOBActual], [DOBOfficial], [InsertedOn], [InsertedBy], [ModifiedOn], [ModifiedBy]) VALUES (1, 1, N'Admin', N'Admin', N'Admin', NULL, NULL, CAST(0xA59D04EA AS SmallDateTime), 1, CAST(0xA59D04EA AS SmallDateTime), 1)
INSERT [Profile].[Personal] ([RefProfileID], [RefSalutationID], [FirstName], [MiddleName], [LastName], [DOBActual], [DOBOfficial], [InsertedOn], [InsertedBy], [ModifiedOn], [ModifiedBy]) VALUES (2, 1, N'a1a2', N'a1a2', N'a1a2', CAST(0xA5B90000 AS SmallDateTime), CAST(0xA5B90000 AS SmallDateTime), CAST(0xA59D0503 AS SmallDateTime), 2, CAST(0xA59D0503 AS SmallDateTime), 2)
INSERT [Profile].[Personal] ([RefProfileID], [RefSalutationID], [FirstName], [MiddleName], [LastName], [DOBActual], [DOBOfficial], [InsertedOn], [InsertedBy], [ModifiedOn], [ModifiedBy]) VALUES (3, 4, N'a2', N'a2', N'a2', NULL, NULL, CAST(0xA5C00398 AS SmallDateTime), 3, CAST(0xA5C00398 AS SmallDateTime), 3)
/****** Object:  StoredProcedure [Master].[CRUD_State]    Script Date: 03/12/2016 16:17:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Master].[CRUD_State]
	@ActionType VARCHAR(15),
	@StateID INT = NULL,
	@StateName VARCHAR(100) = NULL,
	@RefCountryID INT = NULL,
	@SearchText VARCHAR(50) = NULL,
	@ReturnValue VARCHAR(20) OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @sqlString Varchar(MAX) 
	IF @ActionType = 'SELECT'
	BEGIN
		SELECT MS.StateID,MS.StateName, MC.CountryID,MC.CountryName 
		FROM [Master].[State] AS MS INNER JOIN [Master].[Country] AS MC	
		ON MS.RefCountryID = MC.CountryID 
		WHERE MS.IsActive = 1
	END
	ELSE IF @ActionType = 'SELECTLIMIT'
	BEGIN
		
		SET @sqlString = 'SELECT MS.StateID,MS.StateName, MC.CountryID,MC.CountryName 
		FROM [Master].[State] AS MS INNER JOIN [Master].[Country] AS MC	
		ON MS.RefCountryID = MC.CountryID 
		WHERE MS.IsActive = 1 '
		IF @SearchText <> ''
		BEGIN
			SET @sqlString = @sqlString + ' AND ( MS.StateName LIKE ''%' + @SearchText + '%''
			 OR MC.CountryName LIKE ''%' + @SearchText + '%'')' 
		END
		print @sqlString
		EXEC(@sqlString)
	END
	ELSE IF @ActionType = 'INSERT'
	BEGIN
		INSERT INTO [Master].[State](StateName,RefCountryID) VALUES(@StateName,@RefCountryID)
	END
	ELSE IF @ActionType = 'UPDATE'
	BEGIN
		UPDATE [Master].[State] SET StateName = @StateName,RefCountryID = @RefCountryID
		WHERE StateID = @StateID
	END
	ELSE IF @ActionType = 'DELETE'
	BEGIN
		UPDATE [Master].[State] SET IsActive = 0 WHERE StateID = @StateID
	END
	
	

END
GO
/****** Object:  View [Master].[VW_CountryStateCity]    Script Date: 03/12/2016 16:17:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [Master].[VW_CountryStateCity]
AS
SELECT     Master.City.CityID, Master.City.CityName, Master.State.StateID, Master.State.StateName, Master.Country.CountryID, Master.Country.CountryName
FROM         Master.City INNER JOIN
                      Master.State ON Master.City.RefStateID = Master.State.StateID INNER JOIN
                      Master.Country ON Master.State.RefCountryID = Master.Country.CountryID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "City (Master)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "State (Master)"
            Begin Extent = 
               Top = 10
               Left = 302
               Bottom = 129
               Right = 462
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Country (Master)"
            Begin Extent = 
               Top = 2
               Left = 533
               Bottom = 106
               Right = 693
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 12
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'Master', @level1type=N'VIEW',@level1name=N'VW_CountryStateCity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'Master', @level1type=N'VIEW',@level1name=N'VW_CountryStateCity'
GO
/****** Object:  StoredProcedure [Master].[UserLogged]    Script Date: 03/12/2016 16:17:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Master].[UserLogged]
@UserName VARCHAR(50),
@Password VARCHAR(50),
@ActionType VARCHAR(50),
@ProfileID BIGINT = NULL,
@ReturnValue VARCHAR(50) OUTPUT
AS
BEGIN
IF @ActionType ='SELECT'
BEGIN
	SELECT UP.ProfileID,UP.ProfileGUID ,PP.FirstName,PP.MiddleName,PP.LastName
		  ,AL.AccessLevel,AL.AccessID
	FROM [Master].[UserProfile] UP 
	INNER JOIN [Master].AccessLevel AL ON UP.RefAccessID = AL.AccessID
	INNER JOIN [Profile].[Personal] PP ON UP.ProfileID = PP.RefProfileID 
	WHERE 
	UP.UserName = @UserName COLLATE SQL_Latin1_General_CP1_CS_AS AND 
	UP.[Password] = @Password COLLATE SQL_Latin1_General_CP1_CS_AS
END
ELSE IF @ActionType ='SELECTLIMIT'
BEGIN
	SELECT COUNT(UP.ProfileID) AS CheckAvailability
	FROM [Master].[UserProfile] UP 
	WHERE UP.UserName = @UserName COLLATE SQL_Latin1_General_CP1_CS_AS
END
END
GO
/****** Object:  StoredProcedure [Master].[CRUD_Registration]    Script Date: 03/12/2016 16:17:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Master].[CRUD_Registration]
	@ActionType VARCHAR(20),
	@RefSalutationId tinyInt = NULL,
	@FirstName VARCHAR(100) = NULL,
	@MiddleName VARCHAR(100) = NULL,
	@LastName VARCHAR(100) = NULL,
	@UserName VARCHAR(20) = NULL,
	@Password VARCHAR(20) = NULL,
	@PresentRefCityID INT = NULL,
	@PresentPinCode VARCHAR(10) = NULL,
	@RefAccessID INT = NULL,
	@ReturnValue VARCHAR(10) OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @CurrentDateTime as DATETIME, @ProfileID as BIGINT
	SET @CurrentDateTime = DATEADD(mi,330,GETUTCDATE())
	
	IF @ActionType= 'INSERT'
	BEGIN
	INSERT INTO [Master].[UserProfile](FirstName,MiddleName,LastName,UserName,[Password],RefAccessID,InsertedOn,ModifiedOn)
	VALUES(@FirstName,@MiddleName,@LastName,@UserName,@Password,@RefAccessID,@CurrentDateTime,@CurrentDateTime)
	
	SELECT @ProfileID = SCOPE_IDENTITY()
	
	INSERT INTO [Profile].[Personal]
	(RefProfileID,RefSalutationID,FirstName,MiddleName,LastName,InsertedOn,InsertedBy,ModifiedOn,ModifiedBy)
	VALUES
	(@ProfileID,@RefSalutationId,@FirstName,@MiddleName,@LastName,@CurrentDateTime,@ProfileID,@CurrentDateTime,@ProfileID)
	
	INSERT INTO [Profile].[Address]
	(RefProfileID,PresentRefCityID,PresentPinCode)
	VALUES
	(@ProfileID,@PresentRefCityID,@PresentPinCode)
	
	SET @ReturnValue = 'Success'
	END
	ELSE IF @ActionType= 'Update'
	BEGIN
	PRINT('hI')--''
	END
	ELSE IF @ActionType= 'Update'
	BEGIN
	PRINT('hI')--''
	END 
 


END
GO
/****** Object:  StoredProcedure [Profile].[CRUD_Personal]    Script Date: 03/12/2016 16:17:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery10.sql|7|0|C:\Users\gobol\AppData\Local\Temp\~vs60BB.sql
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Profile].[CRUD_Personal]
	@ActionType VARCHAR(20),
	@RefSalutationID TINYINT = NULL,
	@FirstName varchar(100) = NULL,	
	@MiddleName varchar(100) = NULL,	
	@LastName varchar(100) = NULL,	
	@DOBActual VARCHAR(10) = NULL,
	@DOBOfficial VARCHAR(10) = NULL,
	@ProfileID INT,
	@SearchItem varchar(100) = NULL,
	@ReturnValue VARCHAR(100) OUTPUT
AS
BEGIN
	DECLARE @CurrentDateTime as DATETIME
	SET @CurrentDateTime = DATEADD(mi,330,GETUTCDATE())
	
	
	IF @ActionType = 'INSERT' 
	BEGIN
			PRINT 'Profile'	
	END
	ELSE IF @ActionType = 'UPDATE'
	BEGIN
	  IF EXISTS (SELECT RefProfileID FROM [Profile].[Personal] WHERE RefProfileID = @ProfileID)
	  BEGIN
		UPDATE [Profile].[Personal] SET
		RefSalutationID = @RefSalutationID,
		FirstName = @FirstName,
		MiddleName = @MiddleName,
		LastName = @LastName,
		DOBActual = IsNULL(Convert(DATETIME,@DOBActual,105),null),
		DOBOfficial = IsNULL(Convert(DATETIME,@DOBOfficial,105),null)
		WHERE RefProfileID = @ProfileID	
	  END
	  ELSE
	  BEGIN
	    INSERT INTO [Profile].[Personal]
	    (RefProfileID,RefSalutationID,FirstName,MiddleName,LastName,DOBActual,DOBOfficial,InsertedOn,InsertedBy,ModifiedOn,ModifiedBy)
	    VALUES
	    (@ProfileID,@RefSalutationID,@FirstName,@MiddleName,@LastName,@DOBActual,@DOBOfficial,@CurrentDateTime,@ProfileID,@CurrentDateTime,@ProfileID)
	  END
	END
	IF @ActionType = 'SELECTLIMIT' 
	BEGIN
		SELECT PP.RefProfileID as ProfileID ,PP.RefSalutationID ,PP.FirstName,PP.MiddleName,PP.LastName, 
		IsNULL(Convert(VARCHAR(10),PP.DOBActual,103),'') AS [DOBActual],
		IsNULL(Convert(VARCHAR(10),PP.DOBOfficial,103),'') AS [DOBOfficial]
	
		FROM [Profile].[Personal] PP
		WHERE PP.RefProfileID = @ProfileID
	END
	
	
END
GO
/****** Object:  StoredProcedure [Master].[CRUD_City]    Script Date: 03/12/2016 16:17:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Master].[CRUD_City]
	@ActionType VARCHAR(20),
	@CityName varchar(100) = NULL,	
	@CityID int = NULL,
	@StateName VARCHAR(100) = NULL,
	@RefStateID int = NULL,
	@CountryName VARCHAR(100) = NULL,
	@RefCountryID int = NULL,
	@SearchItem varchar(100) = NULL,
	@ReturnValue VARCHAR(100) OUTPUT
AS
BEGIN
	IF @ActionType ='SELECT'
	BEGIN
		DECLARE @SqlStr varchar(max)
		SET @SqlStr='SELECT MC.CityName, MC.CityID, MS.StateID, MS.StateName, MCT.CountryName, MCT.CountryID
		FROM [MASTER].[CITY] AS MC INNER JOIN [MASTER].[STATE] AS MS 
		ON MC.RefStateID = MS.StateID INNER JOIN [MASTER].[COUNTRY]  MCT
		ON MS.RefCountryID = MCT.CountryID
		WHERE MC.ISACTIVE = 1  '
		IF @SearchItem <> ''
		BEGIN
			SET @SqlStr = @SqlStr + ' AND MC.CityName LIKE ''%' + @SearchItem + '%'''
		END
		IF @SearchItem <> ''
		BEGIN
			SET @SqlStr = @SqlStr + ' OR MS.StateName LIKE ''%' + @SearchItem + '%'''
		END
		IF @SearchItem <> ''
		BEGIN
			SET @SqlStr = @SqlStr + ' OR MCT.CountryName LIKE ''%' + @SearchItem + '%'''
		END
		
		SET @SqlStr = @SqlStr + ' ORDER BY [CityName] ASC'
		PRINT @SqlStr
		Exec (@sqlStr)
	END
	ELSE IF @ActionType = 'INSERT'
	BEGIN
		IF NOT EXISTS(SELECT C.CityName FROM [Master].City C INNER JOIN [Master].[State] S ON C.RefStateID = S.StateID
		INNER JOIN [Master].Country CC ON S.RefCountryID = CC.CountryID
		WHERE C.CityName = @CityName AND C.RefStateID = @RefStateID AND CC.CountryID = @RefCountryID
 		)
 		BEGIN
		INSERT INTO [Master].City([CityName],[RefStateID])
		VALUES(@CityName, @RefStateID)
		END
	END
	ELSE IF @ActionType = 'UPDATE'
	BEGIN
		IF NOT EXISTS(SELECT S.StateID FROM [Master].[State] S INNER JOIN [Master].Country CC 
		ON S.RefCountryID = CC.CountryID
		WHERE S.StateID = @RefStateID AND CC.CountryID = @RefCountryID 		
		)
		BEGIN
			UPDATE [Master].[State] SET RefCountryID = @RefCountryID WHERE StateID = @RefStateID
		END
		IF NOT EXISTS(
		SELECT C.CityName FROM [Master].City C INNER JOIN [Master].[State] S ON C.RefStateID = S.StateID
		INNER JOIN [Master].Country CC ON S.RefCountryID = CC.CountryID
		WHERE C.CityName = @CityName AND C.RefStateID = @RefStateID AND CC.CountryID = @RefCountryID
 		)
 		BEGIN
			UPDATE [Master].City SET CityName = @CityName, RefStateID = @RefStateID
			WHERE CityID = @CityID
		END		
	END
	ELSE IF @ActionType = 'DELETE'
	BEGIN
		--DELETE FROM [Master].City WHERE CityID = @CityID
		UPDATE [Master].City SET IsActive = 0 WHERE CityID = @CityID
	END
END

--Select * from [Master].City where IsActive = 0
GO
/****** Object:  StoredProcedure [Profile].[CRUD_Address]    Script Date: 03/12/2016 16:17:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Profile].[CRUD_Address]
	@ActionType VARCHAR(20),
	@PresentAddressLine1 varchar(500) = NULL,	
	@PresentAddressLine2 varchar(500) = NULL,	
	@PresentRefCityID INT = NULL,	
	@PresentPinCode VARCHAR(10) = NULL,
	@PermanentAddressLine1 varchar(500) = NULL,	
	@PermanentAddressLine2 varchar(500) = NULL,	
	@PermanentRefCityID INT = NULL,	
	@PermanentPinCode VARCHAR(10) = NULL,
	@RefProfileID BIGINT,
	@SearchItem varchar(100) = NULL,
	@ReturnValue VARCHAR(100) OUTPUT
AS
BEGIN
	
	IF @ActionType = 'SELECTLIMIT' 
	BEGIN
		Select PA.RefProfileID,
		PA.PresentAddressLine1,PA.PresentAddressLine2,
		ISNULL(PA.PresentRefCityID,0) AS [PresentRefCityID],
		ISNULL(VW_Pst.StateID,0) AS [PresentRefStateID],
		ISNULL(VW_Pst.CountryID,0) AS [PresentRefCountryID],		
		PA.PresentPinCode,
		
		PA.PermanentAddressLine1,PA.PermanentAddressLine2,
		ISNULL(PA.PermanentRefCityID,0) AS [PermanentRefCityID],
		ISNULL(VW_Pmt.StateID,0) AS [PermanentRefStateID],
		ISNULL(VW_Pmt.CountryID,0) AS [PermanentRefCountryID],
		PA.PermanentPinCode
		
		FROM [Profile].[Address] AS PA
		LEFT JOIN  [Master].VW_CountryStateCity AS VW_Pst ON PA.PresentRefCityID = VW_Pst.CityID
		LEFT JOIN  [Master].VW_CountryStateCity AS VW_Pmt ON PA.[PermanentRefCityID] = VW_Pmt.CityID
		WHERE PA.RefProfileID = @RefProfileID
	END
	ELSE IF @ActionType = 'UPDATE'
	BEGIN
	DECLARE @CurrentDateTime as DATETIME
	SET @CurrentDateTime = DATEADD(mi,330,GETUTCDATE())
	IF EXISTS (SELECT RefProfileID FROM [Profile].[Address] WHERE RefProfileID = @RefProfileID)
	BEGIN
		UPDATE [Profile].[Address] SET
		PresentAddressLine1 = @PresentAddressLine1,
		PresentAddressLine2 = @PresentAddressLine2,
		PresentRefCityID = @PresentRefCityID,
		PresentPinCode = @PresentPinCode,		
		PermanentAddressLine1 = @PermanentAddressLine1,
		PermanentAddressLine2 = @PermanentAddressLine2,
		PermanentRefCityID = @PermanentRefCityID,
		PermanentPinCode = @PermanentPinCode,
		ModifiedOn = @CurrentDateTime,
		ModifiedBy = @RefProfileID
		WHERE RefProfileID = @RefProfileID
	END
	ELSE 
	BEGIN
		INSERT INTO [Profile].[Address]
		(RefProfileID,PresentAddressLine1,PresentAddressLine2,PresentRefCityID,PresentPinCode
		,PermanentAddressLine1,PermanentAddressLine2,PermanentRefCityID,PermanentPinCode
		,InsertedOn,Insertedby,ModifiedOn,ModifiedBy)
		VALUES
		(@RefProfileID,ISNULL(@PresentAddressLine1,NULL),ISNULL(@PresentAddressLine2,NULL)
		,ISNULL(@PresentRefCityID,NULL),ISNULL(@PresentPinCode,NULL)
		,ISNULL(@PermanentAddressLine1,NULL),ISNULL(@PermanentAddressLine2,NULL)
		,ISNULL(@PermanentRefCityID,NULL),ISNULL(@PermanentPinCode,NULL)
		,@CurrentDateTime,@RefProfileID,@CurrentDateTime,@RefProfileID)
	END
	END
END
GO
/****** Object:  Default [DF_City_IsActive]    Script Date: 03/12/2016 16:17:48 ******/
ALTER TABLE [Master].[City] ADD  CONSTRAINT [DF_City_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF_Country_IsActive]    Script Date: 03/12/2016 16:17:48 ******/
ALTER TABLE [Master].[Country] ADD  CONSTRAINT [DF_Country_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF_Department_IsActive]    Script Date: 03/12/2016 16:17:48 ******/
ALTER TABLE [Master].[Department] ADD  CONSTRAINT [DF_Department_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF_Department_InsertedOn]    Script Date: 03/12/2016 16:17:48 ******/
ALTER TABLE [Master].[Department] ADD  CONSTRAINT [DF_Department_InsertedOn]  DEFAULT (dateadd(minute,(330),getutcdate())) FOR [InsertedOn]
GO
/****** Object:  Default [DF_Designation_IsActive]    Script Date: 03/12/2016 16:17:48 ******/
ALTER TABLE [Master].[Designation] ADD  CONSTRAINT [DF_Designation_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF_Designation_InsertedOn]    Script Date: 03/12/2016 16:17:48 ******/
ALTER TABLE [Master].[Designation] ADD  CONSTRAINT [DF_Designation_InsertedOn]  DEFAULT (dateadd(minute,(330),getutcdate())) FOR [InsertedOn]
GO
/****** Object:  Default [DF_Salutation_IsActive]    Script Date: 03/12/2016 16:17:48 ******/
ALTER TABLE [Master].[Salutation] ADD  CONSTRAINT [DF_Salutation_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF_State_IsActive]    Script Date: 03/12/2016 16:17:48 ******/
ALTER TABLE [Master].[State] ADD  CONSTRAINT [DF_State_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF_UserProfile_UserGUID]    Script Date: 03/12/2016 16:17:48 ******/
ALTER TABLE [Master].[UserProfile] ADD  CONSTRAINT [DF_UserProfile_UserGUID]  DEFAULT (newid()) FOR [ProfileGUID]
GO
/****** Object:  Default [DF_UserProfile_InsertedOn]    Script Date: 03/12/2016 16:17:48 ******/
ALTER TABLE [Master].[UserProfile] ADD  CONSTRAINT [DF_UserProfile_InsertedOn]  DEFAULT (dateadd(minute,(330),getutcdate())) FOR [InsertedOn]
GO
/****** Object:  Default [DF_Address_InsertedOn]    Script Date: 03/12/2016 16:17:48 ******/
ALTER TABLE [Profile].[Address] ADD  CONSTRAINT [DF_Address_InsertedOn]  DEFAULT (dateadd(minute,(330),getutcdate())) FOR [InsertedOn]
GO
/****** Object:  Default [DF_Contact_InsertedOn]    Script Date: 03/12/2016 16:17:48 ******/
ALTER TABLE [Profile].[Contact] ADD  CONSTRAINT [DF_Contact_InsertedOn]  DEFAULT (dateadd(minute,(330),getutcdate())) FOR [InsertedOn]
GO
/****** Object:  Default [DF_Personal_RefSalutationId]    Script Date: 03/12/2016 16:17:48 ******/
ALTER TABLE [Profile].[Personal] ADD  CONSTRAINT [DF_Personal_RefSalutationId]  DEFAULT ((0)) FOR [RefSalutationID]
GO
/****** Object:  Default [DF_Personal_InsertedOn]    Script Date: 03/12/2016 16:17:48 ******/
ALTER TABLE [Profile].[Personal] ADD  CONSTRAINT [DF_Personal_InsertedOn]  DEFAULT (dateadd(minute,(330),getutcdate())) FOR [InsertedOn]
GO
/****** Object:  ForeignKey [FK_City_State]    Script Date: 03/12/2016 16:17:48 ******/
ALTER TABLE [Master].[City]  WITH CHECK ADD  CONSTRAINT [FK_City_State] FOREIGN KEY([RefStateID])
REFERENCES [Master].[State] ([StateID])
GO
ALTER TABLE [Master].[City] CHECK CONSTRAINT [FK_City_State]
GO
/****** Object:  ForeignKey [FK_State_Country]    Script Date: 03/12/2016 16:17:48 ******/
ALTER TABLE [Master].[State]  WITH CHECK ADD  CONSTRAINT [FK_State_Country] FOREIGN KEY([RefCountryID])
REFERENCES [Master].[Country] ([CountryID])
GO
ALTER TABLE [Master].[State] CHECK CONSTRAINT [FK_State_Country]
GO
/****** Object:  ForeignKey [FK_UserProfile_AccessLevel]    Script Date: 03/12/2016 16:17:48 ******/
ALTER TABLE [Master].[UserProfile]  WITH CHECK ADD  CONSTRAINT [FK_UserProfile_AccessLevel] FOREIGN KEY([RefAccessID])
REFERENCES [Master].[AccessLevel] ([AccessID])
GO
ALTER TABLE [Master].[UserProfile] CHECK CONSTRAINT [FK_UserProfile_AccessLevel]
GO
/****** Object:  ForeignKey [FK_Address_UserProfile]    Script Date: 03/12/2016 16:17:48 ******/
ALTER TABLE [Profile].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_UserProfile] FOREIGN KEY([RefProfileID])
REFERENCES [Master].[UserProfile] ([ProfileID])
GO
ALTER TABLE [Profile].[Address] CHECK CONSTRAINT [FK_Address_UserProfile]
GO
/****** Object:  ForeignKey [FK_Personal_Salutation]    Script Date: 03/12/2016 16:17:48 ******/
ALTER TABLE [Profile].[Personal]  WITH CHECK ADD  CONSTRAINT [FK_Personal_Salutation] FOREIGN KEY([RefSalutationID])
REFERENCES [Master].[Salutation] ([SalutationID])
ON UPDATE SET DEFAULT
ON DELETE SET DEFAULT
GO
ALTER TABLE [Profile].[Personal] CHECK CONSTRAINT [FK_Personal_Salutation]
GO
/****** Object:  ForeignKey [FK_Personal_UserProfile]    Script Date: 03/12/2016 16:17:48 ******/
ALTER TABLE [Profile].[Personal]  WITH CHECK ADD  CONSTRAINT [FK_Personal_UserProfile] FOREIGN KEY([RefProfileID])
REFERENCES [Master].[UserProfile] ([ProfileID])
GO
ALTER TABLE [Profile].[Personal] CHECK CONSTRAINT [FK_Personal_UserProfile]
GO
