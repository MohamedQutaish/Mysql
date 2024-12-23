USE [master]
GO
/****** Object:  Table [dbo].[StudentInfo]    Script Date: 12/21/2024 11:32:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentInfo](
	[StudentName] [varchar](100) NULL,
	[StudentID] [int] NOT NULL,
	[StudentDOB] [date] NULL,
	[StudentGender] [varchar](10) NULL,
	[StudentGrade] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[StudentInfo] ([StudentName], [StudentID], [StudentDOB], [StudentGender], [StudentGrade]) VALUES (N'Mohamed', 877122, CAST(N'2001-04-22' AS Date), N'Male', N'C')
INSERT [dbo].[StudentInfo] ([StudentName], [StudentID], [StudentDOB], [StudentGender], [StudentGrade]) VALUES (N'Hamzah', 877133, CAST(N'2001-05-16' AS Date), N'Male', N'A')
INSERT [dbo].[StudentInfo] ([StudentName], [StudentID], [StudentDOB], [StudentGender], [StudentGrade]) VALUES (N'Lisa', 877888, CAST(N'2000-06-23' AS Date), N'Female', N'A')
INSERT [dbo].[StudentInfo] ([StudentName], [StudentID], [StudentDOB], [StudentGender], [StudentGrade]) VALUES (N'Abdo', 878777, CAST(N'1999-07-25' AS Date), N'Male', N'B')
GO
ALTER TABLE [dbo].[StudentInfo]  WITH CHECK ADD CHECK  (([StudentGender]='Male' OR [StudentGender]='Female'))
GO
