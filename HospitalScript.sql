USE [Hospital]
GO
/****** Object:  StoredProcedure [dbo].[getmanage]    Script Date: 08-10-2024 05:53:08 ******/
DROP PROCEDURE [dbo].[getmanage]
GO
/****** Object:  StoredProcedure [dbo].[Addprofile]    Script Date: 08-10-2024 05:53:08 ******/
DROP PROCEDURE [dbo].[Addprofile]
GO
/****** Object:  StoredProcedure [dbo].[addmanage]    Script Date: 08-10-2024 05:53:08 ******/
DROP PROCEDURE [dbo].[addmanage]
GO
ALTER TABLE [dbo].[MedicineAd] DROP CONSTRAINT [fk]
GO
/****** Object:  Table [dbo].[Ward]    Script Date: 08-10-2024 05:53:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ward]') AND type in (N'U'))
DROP TABLE [dbo].[Ward]
GO
/****** Object:  Table [dbo].[SheduleAd]    Script Date: 08-10-2024 05:53:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SheduleAd]') AND type in (N'U'))
DROP TABLE [dbo].[SheduleAd]
GO
/****** Object:  Table [dbo].[ShedleAd]    Script Date: 08-10-2024 05:53:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ShedleAd]') AND type in (N'U'))
DROP TABLE [dbo].[ShedleAd]
GO
/****** Object:  Table [dbo].[Registration]    Script Date: 08-10-2024 05:53:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Registration]') AND type in (N'U'))
DROP TABLE [dbo].[Registration]
GO
/****** Object:  Table [dbo].[profiles]    Script Date: 08-10-2024 05:53:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[profiles]') AND type in (N'U'))
DROP TABLE [dbo].[profiles]
GO
/****** Object:  Table [dbo].[Prec]    Script Date: 08-10-2024 05:53:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Prec]') AND type in (N'U'))
DROP TABLE [dbo].[Prec]
GO
/****** Object:  Table [dbo].[patients]    Script Date: 08-10-2024 05:53:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[patients]') AND type in (N'U'))
DROP TABLE [dbo].[patients]
GO
/****** Object:  Table [dbo].[PatientAd]    Script Date: 08-10-2024 05:53:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PatientAd]') AND type in (N'U'))
DROP TABLE [dbo].[PatientAd]
GO
/****** Object:  Table [dbo].[MedicineAd]    Script Date: 08-10-2024 05:53:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MedicineAd]') AND type in (N'U'))
DROP TABLE [dbo].[MedicineAd]
GO
/****** Object:  Table [dbo].[medicine]    Script Date: 08-10-2024 05:53:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[medicine]') AND type in (N'U'))
DROP TABLE [dbo].[medicine]
GO
/****** Object:  Table [dbo].[Inpatient]    Script Date: 08-10-2024 05:53:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Inpatient]') AND type in (N'U'))
DROP TABLE [dbo].[Inpatient]
GO
/****** Object:  Table [dbo].[hsptl]    Script Date: 08-10-2024 05:53:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hsptl]') AND type in (N'U'))
DROP TABLE [dbo].[hsptl]
GO
/****** Object:  Table [dbo].[driver]    Script Date: 08-10-2024 05:53:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[driver]') AND type in (N'U'))
DROP TABLE [dbo].[driver]
GO
/****** Object:  Table [dbo].[doctors]    Script Date: 08-10-2024 05:53:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[doctors]') AND type in (N'U'))
DROP TABLE [dbo].[doctors]
GO
/****** Object:  Table [dbo].[DepartmentAd]    Script Date: 08-10-2024 05:53:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DepartmentAd]') AND type in (N'U'))
DROP TABLE [dbo].[DepartmentAd]
GO
/****** Object:  Table [dbo].[department]    Script Date: 08-10-2024 05:53:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[department]') AND type in (N'U'))
DROP TABLE [dbo].[department]
GO
/****** Object:  Table [dbo].[complaints]    Script Date: 08-10-2024 05:53:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[complaints]') AND type in (N'U'))
DROP TABLE [dbo].[complaints]
GO
/****** Object:  Table [dbo].[bookapp]    Script Date: 08-10-2024 05:53:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[bookapp]') AND type in (N'U'))
DROP TABLE [dbo].[bookapp]
GO
/****** Object:  Table [dbo].[Appointments]    Script Date: 08-10-2024 05:53:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Appointments]') AND type in (N'U'))
DROP TABLE [dbo].[Appointments]
GO
/****** Object:  Table [dbo].[Appointment]    Script Date: 08-10-2024 05:53:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Appointment]') AND type in (N'U'))
DROP TABLE [dbo].[Appointment]
GO
/****** Object:  Table [dbo].[AnnouncementAd]    Script Date: 08-10-2024 05:53:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnnouncementAd]') AND type in (N'U'))
DROP TABLE [dbo].[AnnouncementAd]
GO
/****** Object:  Table [dbo].[AmbulanceAd]    Script Date: 08-10-2024 05:53:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AmbulanceAd]') AND type in (N'U'))
DROP TABLE [dbo].[AmbulanceAd]
GO
/****** Object:  Table [dbo].[Ambulance]    Script Date: 08-10-2024 05:53:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ambulance]') AND type in (N'U'))
DROP TABLE [dbo].[Ambulance]
GO
/****** Object:  Table [dbo].[Ambulance]    Script Date: 08-10-2024 05:53:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ambulance](
	[Id] [numeric](20, 0) NULL,
	[Name] [varchar](50) NULL,
	[AmbulanceId] [numeric](20, 0) NULL,
	[AmbulanceStatus] [varchar](50) NULL,
	[AmbulanceDriver] [varchar](40) NULL,
	[AmbulanceDriverId] [numeric](20, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AmbulanceAd]    Script Date: 08-10-2024 05:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AmbulanceAd](
	[Id] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[AmbulanceId] [int] NULL,
	[AmbulanceStatus] [varchar](50) NULL,
	[AmbulanceDriver] [varchar](50) NULL,
	[AmbulanceDriverId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnnouncementAd]    Script Date: 08-10-2024 05:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnnouncementAd](
	[Id] [int] NOT NULL,
	[Announcement] [varchar](50) NULL,
	[AnnouncementFor] [varchar](50) NULL,
	[EndDate] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Appointment]    Script Date: 08-10-2024 05:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointment](
	[DoctorName] [varchar](50) NULL,
	[Speciality] [varchar](50) NULL,
	[Education] [varchar](50) NULL,
	[Timings] [varchar](50) NULL,
	[Status] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Appointments]    Script Date: 08-10-2024 05:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PatientId] [int] NOT NULL,
	[DoctorId] [int] NOT NULL,
	[AppointmentDate] [date] NULL,
	[Problem] [nvarchar](500) NULL,
	[Status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bookapp]    Script Date: 08-10-2024 05:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bookapp](
	[Id] [int] NOT NULL,
	[PatientName] [varchar](50) NULL,
	[PatientType] [varchar](30) NULL,
	[Gender] [varchar](20) NULL,
	[Problem] [varchar](50) NULL,
	[PhoneNumber] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Date] [varchar](20) NULL,
	[Time] [varchar](30) NULL,
	[Description] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[complaints]    Script Date: 08-10-2024 05:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[complaints](
	[Id] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[Replay] [varchar](500) NULL,
	[Complaint] [varchar](500) NULL,
	[PhoneNumber] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[department]    Script Date: 08-10-2024 05:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[department](
	[Id] [numeric](30, 0) NULL,
	[Name] [varchar](50) NULL,
	[Description] [varchar](200) NULL,
	[Status] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DepartmentAd]    Script Date: 08-10-2024 05:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DepartmentAd](
	[Id] [int] NOT NULL,
	[DepartmentName] [varchar](50) NULL,
	[Description] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[doctors]    Script Date: 08-10-2024 05:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[doctors](
	[DoctorId] [int] NOT NULL,
	[FullName] [varchar](50) NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Education] [varchar](50) NULL,
	[Designation] [varchar](50) NULL,
	[Department] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[PhoneNo] [varchar](50) NULL,
	[ContactNo] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[DoctorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[driver]    Script Date: 08-10-2024 05:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[driver](
	[Id] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[Contact] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[CNIC] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hsptl]    Script Date: 08-10-2024 05:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hsptl](
	[Id] [numeric](30, 0) IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inpatient]    Script Date: 08-10-2024 05:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inpatient](
	[PatientId] [int] NOT NULL,
	[PatientName] [varchar](50) NULL,
	[AdmissionDate] [varchar](50) NULL,
	[Dischargedate] [varchar](50) NULL,
	[TypeName] [varchar](50) NULL,
	[TreatmentDuration] [varchar](50) NULL,
	[AppointmentDate] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[Problem] [varchar](50) NULL,
	[Description] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[PhoenNumber] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[medicine]    Script Date: 08-10-2024 05:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[medicine](
	[PatientId] [int] NOT NULL,
	[PatientName] [varchar](50) NULL,
	[DoctorName] [varchar](50) NULL,
	[Problem] [varchar](50) NULL,
	[MedicineName] [varchar](50) NULL,
	[Description] [varchar](50) NULL,
	[Morning] [varchar](50) NULL,
	[Afternoon] [varchar](50) NULL,
	[Night] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicineAd]    Script Date: 08-10-2024 05:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicineAd](
	[PatientId] [numeric](30, 0) NULL,
	[PatientName] [varchar](50) NULL,
	[DoctorName] [varchar](40) NULL,
	[Problem] [varchar](50) NULL,
	[Medicine] [varchar](50) NULL,
	[Morning] [varchar](50) NULL,
	[Afternoon] [varchar](50) NULL,
	[Evening] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PatientAd]    Script Date: 08-10-2024 05:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PatientAd](
	[Id] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[PhoneNumber] [varchar](50) NULL,
	[BloodGroup] [varchar](50) NULL,
	[Gender] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[patients]    Script Date: 08-10-2024 05:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[patients](
	[PatientId] [varchar](40) NULL,
	[FirstName] [varchar](40) NULL,
	[LastName] [varchar](40) NULL,
	[Email] [varchar](50) NULL,
	[Password] [varchar](40) NULL,
	[BloodGroup] [varchar](30) NULL,
	[Gender] [varchar](30) NULL,
	[PhoneNo] [varchar](40) NULL,
	[Address] [varchar](40) NULL,
	[EmergencyContact] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prec]    Script Date: 08-10-2024 05:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prec](
	[PatientName] [varchar](50) NULL,
	[DoctorName] [varchar](50) NULL,
	[Problem] [varchar](50) NULL,
	[Medicine] [varchar](50) NULL,
	[Morning] [varchar](50) NULL,
	[Afternoon] [varchar](50) NULL,
	[Night] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[profiles]    Script Date: 08-10-2024 05:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[profiles](
	[PatientId] [numeric](30, 0) IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[FirstName] [varchar](30) NULL,
	[LastName] [varchar](30) NULL,
	[Email] [varchar](40) NULL,
	[Password] [varchar](50) NULL,
	[BloodGroup] [varchar](40) NULL,
	[Gender] [varchar](40) NULL,
	[Age] [varchar](30) NULL,
	[PhoneNo] [varchar](40) NULL,
	[Address] [varchar](40) NULL,
	[EmergencyContact] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registration]    Script Date: 08-10-2024 05:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registration](
	[UserName] [varchar](50) NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[PhoneNumber] [varchar](50) NULL,
	[Gender] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShedleAd]    Script Date: 08-10-2024 05:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShedleAd](
	[Id] [int] NOT NULL,
	[DoctorName] [varchar](50) NULL,
	[StartTime] [varchar](20) NULL,
	[EndTime] [varchar](20) NULL,
	[status] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SheduleAd]    Script Date: 08-10-2024 05:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SheduleAd](
	[Id] [int] NOT NULL,
	[DoctorName] [varchar](50) NULL,
	[StartTime] [varchar](20) NULL,
	[EndTime] [varchar](20) NULL,
	[status] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ward]    Script Date: 08-10-2024 05:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ward](
	[Id] [int] NULL,
	[Name] [varchar](50) NULL,
	[Department] [varchar](50) NULL,
	[Designation] [varchar](50) NULL,
	[Education] [varchar](50) NULL,
	[PhoneNumber] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Status] [varchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Ambulance] ([Id], [Name], [AmbulanceId], [AmbulanceStatus], [AmbulanceDriver], [AmbulanceDriverId]) VALUES (CAST(1 AS Numeric(20, 0)), N'Ambulance A', CAST(101 AS Numeric(20, 0)), N'Available', N'John', CAST(201 AS Numeric(20, 0)))
INSERT [dbo].[Ambulance] ([Id], [Name], [AmbulanceId], [AmbulanceStatus], [AmbulanceDriver], [AmbulanceDriverId]) VALUES (CAST(2 AS Numeric(20, 0)), N'Ambulance B', CAST(102 AS Numeric(20, 0)), N'In Service', N' Smith', CAST(202 AS Numeric(20, 0)))
INSERT [dbo].[Ambulance] ([Id], [Name], [AmbulanceId], [AmbulanceStatus], [AmbulanceDriver], [AmbulanceDriverId]) VALUES (CAST(3 AS Numeric(20, 0)), N'Ambulance C', CAST(103 AS Numeric(20, 0)), N'Under Maintenance', N' Ram', CAST(203 AS Numeric(20, 0)))
INSERT [dbo].[Ambulance] ([Id], [Name], [AmbulanceId], [AmbulanceStatus], [AmbulanceDriver], [AmbulanceDriverId]) VALUES (CAST(4 AS Numeric(20, 0)), N'Ambulance D', CAST(104 AS Numeric(20, 0)), N'Available', N' Gopal', CAST(204 AS Numeric(20, 0)))
INSERT [dbo].[Ambulance] ([Id], [Name], [AmbulanceId], [AmbulanceStatus], [AmbulanceDriver], [AmbulanceDriverId]) VALUES (CAST(5 AS Numeric(20, 0)), N'mb sri', CAST(104 AS Numeric(20, 0)), N'active', N'gayle', CAST(8896 AS Numeric(20, 0)))
GO
INSERT [dbo].[AmbulanceAd] ([Id], [Name], [AmbulanceId], [AmbulanceStatus], [AmbulanceDriver], [AmbulanceDriverId]) VALUES (1, N'Yashodha Ambulance', 108, N'', N'Danush', 8978)
INSERT [dbo].[AmbulanceAd] ([Id], [Name], [AmbulanceId], [AmbulanceStatus], [AmbulanceDriver], [AmbulanceDriverId]) VALUES (2, N'Apollo', 104, N'', N'Gaguly', 9899)
INSERT [dbo].[AmbulanceAd] ([Id], [Name], [AmbulanceId], [AmbulanceStatus], [AmbulanceDriver], [AmbulanceDriverId]) VALUES (3, N'SunShine', 104, N'', N'Roma Shephard', 9798)
INSERT [dbo].[AmbulanceAd] ([Id], [Name], [AmbulanceId], [AmbulanceStatus], [AmbulanceDriver], [AmbulanceDriverId]) VALUES (4, N'Kims', 108, N'', N'HitMyre', 8879)
GO
INSERT [dbo].[AnnouncementAd] ([Id], [Announcement], [AnnouncementFor], [EndDate]) VALUES (1, N'anand', N'mamamam', N'2024-11-02T09:00')
GO
INSERT [dbo].[Appointment] ([DoctorName], [Speciality], [Education], [Timings], [Status]) VALUES (N'Anand', N'Cardio', N'MBBS', N'10Am-5Pm', N'Active')
INSERT [dbo].[Appointment] ([DoctorName], [Speciality], [Education], [Timings], [Status]) VALUES (N'Arun', N'Neuro', N'MBBS', N'10Am-5Pm', N'Active')
GO
SET IDENTITY_INSERT [dbo].[Appointments] ON 

INSERT [dbo].[Appointments] ([Id], [PatientId], [DoctorId], [AppointmentDate], [Problem], [Status]) VALUES (1, 1002, 1, CAST(N'2024-09-15' AS Date), N'Flu symptoms', 1)
INSERT [dbo].[Appointments] ([Id], [PatientId], [DoctorId], [AppointmentDate], [Problem], [Status]) VALUES (2, 1002, 2001, CAST(N'2024-09-15' AS Date), N'Flu symptoms', 1)
INSERT [dbo].[Appointments] ([Id], [PatientId], [DoctorId], [AppointmentDate], [Problem], [Status]) VALUES (3, 1004, 3001, CAST(N'2024-09-14' AS Date), N'Heart problem', 1)
SET IDENTITY_INSERT [dbo].[Appointments] OFF
GO
INSERT [dbo].[bookapp] ([Id], [PatientName], [PatientType], [Gender], [Problem], [PhoneNumber], [Address], [Date], [Time], [Description]) VALUES (1, N'k.williams', N'New', N'm', N'Fever', N'9182225321', N'Jamaica1', N'2024-10-30', N'17:06', N'eee')
INSERT [dbo].[bookapp] ([Id], [PatientName], [PatientType], [Gender], [Problem], [PhoneNumber], [Address], [Date], [Time], [Description]) VALUES (2, N'K.Roach', N'Old', N'male', N'Cold', N'918222532', N'Jamaica1', N'2024-10-09', N'19:07', N'qq')
INSERT [dbo].[bookapp] ([Id], [PatientName], [PatientType], [Gender], [Problem], [PhoneNumber], [Address], [Date], [Time], [Description]) VALUES (3, N'pollard', N'new', N'M', N'kjjshsh', N'09182225321', N'Jamaica1', N'2024-10-29', N'10.00 am', N'k')
INSERT [dbo].[bookapp] ([Id], [PatientName], [PatientType], [Gender], [Problem], [PhoneNumber], [Address], [Date], [Time], [Description]) VALUES (4, N'kkk', N'jjjah', N'male', N'caredftvja', N'77', N'karnataka', N'2024-11-05', N'10.00 am', N'ddd')
GO
INSERT [dbo].[complaints] ([Id], [Name], [Replay], [Complaint], [PhoneNumber]) VALUES (1, N'Raina', N'wait ', N'easw', N'08978568838')
INSERT [dbo].[complaints] ([Id], [Name], [Replay], [Complaint], [PhoneNumber]) VALUES (2, N'Dhoni', N'wait ', N'bad quality', N'08978568838')
INSERT [dbo].[complaints] ([Id], [Name], [Replay], [Complaint], [PhoneNumber]) VALUES (3, N'D Chahar', N'sarle ', N'Poor Service', N'08978568838')
INSERT [dbo].[complaints] ([Id], [Name], [Replay], [Complaint], [PhoneNumber]) VALUES (4, N'Jadeja', N'ok', N'bbbbb', N'08978568838')
GO
INSERT [dbo].[department] ([Id], [Name], [Description], [Status]) VALUES (CAST(1 AS Numeric(30, 0)), N'Cardiology', N'Department for heart-related issues', N'Active')
INSERT [dbo].[department] ([Id], [Name], [Description], [Status]) VALUES (CAST(2 AS Numeric(30, 0)), N'Pediatrics', N'Department for childrens health', N'Active')
INSERT [dbo].[department] ([Id], [Name], [Description], [Status]) VALUES (CAST(3 AS Numeric(30, 0)), N'Orthopedics', N'Department for bone and joint health', N'Active')
GO
INSERT [dbo].[DepartmentAd] ([Id], [DepartmentName], [Description], [Status]) VALUES (1, N'cardio', N'hhhh', N'active')
INSERT [dbo].[DepartmentAd] ([Id], [DepartmentName], [Description], [Status]) VALUES (2, N'cardio', N'ddd', N'inactive')
INSERT [dbo].[DepartmentAd] ([Id], [DepartmentName], [Description], [Status]) VALUES (3, N'vascular', N'as', N'inactive')
GO
INSERT [dbo].[doctors] ([DoctorId], [FullName], [FirstName], [LastName], [Email], [Education], [Designation], [Department], [Address], [PhoneNo], [ContactNo], [Gender], [Status]) VALUES (1, N'anan', N'anand', N'anand', N'anandasagar@iitsofttech.c', N'hhh', N'hhh', N'yy', NULL, N'23652563256', N'hhh', NULL, N'active')
INSERT [dbo].[doctors] ([DoctorId], [FullName], [FirstName], [LastName], [Email], [Education], [Designation], [Department], [Address], [PhoneNo], [ContactNo], [Gender], [Status]) VALUES (2, N'sri', N'mb', N'kohli', N'anandasagar@iitsofttech.com', N'mbbs', N'vfg', N'cardio', NULL, N'08978568838', N'hhh', NULL, N'inactive')
INSERT [dbo].[doctors] ([DoctorId], [FullName], [FirstName], [LastName], [Email], [Education], [Designation], [Department], [Address], [PhoneNo], [ContactNo], [Gender], [Status]) VALUES (3, N'sri', N'mb', N'kohli', N'anandasagar@iitsofttech.com', N'gy', N'aaa', N'w', NULL, N'08978568838', N'hhh', NULL, N'active')
INSERT [dbo].[doctors] ([DoctorId], [FullName], [FirstName], [LastName], [Email], [Education], [Designation], [Department], [Address], [PhoneNo], [ContactNo], [Gender], [Status]) VALUES (4, N'sri', N'mb', N'Anad', N'anandasagar@iitsofttech.com', N'gy', N'vfg', N'w', NULL, N'08978568838', N'hhh', NULL, N'active')
GO
INSERT [dbo].[driver] ([Id], [Name], [Contact], [Address], [CNIC]) VALUES (1, N'C Gayle', N'8978568838', N'WestIndies', N'!099')
INSERT [dbo].[driver] ([Id], [Name], [Contact], [Address], [CNIC]) VALUES (2, N'Pollad', N'9182225321', N'Westndies', N'11220')
INSERT [dbo].[driver] ([Id], [Name], [Contact], [Address], [CNIC]) VALUES (3, N'R Chase', N'1919191919', N'Jamaica', N'1899')
GO
INSERT [dbo].[Inpatient] ([PatientId], [PatientName], [AdmissionDate], [Dischargedate], [TypeName], [TreatmentDuration], [AppointmentDate], [Status], [Problem], [Description], [Gender], [Address], [PhoenNumber]) VALUES (1, N'S. khan', N'2024-10-07', N'2024-10-08', N'inPatient', N'1', N'2024-10-02', N'intreatment', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[medicine] ([PatientId], [PatientName], [DoctorName], [Problem], [MedicineName], [Description], [Morning], [Afternoon], [Night]) VALUES (1, N'S. khan', N'Anand', N'fever', N'dolo', N'hhjjhhj', N'yes', N'no', N'yes')
INSERT [dbo].[medicine] ([PatientId], [PatientName], [DoctorName], [Problem], [MedicineName], [Description], [Morning], [Afternoon], [Night]) VALUES (2, N'A.Singh', N'Anand', N'fever', N'dolo', N'hhjjhhj', N'yes', N'no', N'yes')
INSERT [dbo].[medicine] ([PatientId], [PatientName], [DoctorName], [Problem], [MedicineName], [Description], [Morning], [Afternoon], [Night]) VALUES (3, N'M Shami', N'anand', N'hair', N'dolo', N'hhjjhhj', N'Yes', N'No', N'Yes')
GO
INSERT [dbo].[MedicineAd] ([PatientId], [PatientName], [DoctorName], [Problem], [Medicine], [Morning], [Afternoon], [Evening]) VALUES (CAST(1 AS Numeric(30, 0)), N'Bhargavi', N'latha', N'Fever', N'Dollo', N'Yes', N'-', N'Yes')
INSERT [dbo].[MedicineAd] ([PatientId], [PatientName], [DoctorName], [Problem], [Medicine], [Morning], [Afternoon], [Evening]) VALUES (CAST(2 AS Numeric(30, 0)), N'mercy', N'Devi', N'Typhoid ', N'Ofloxacin', N'Yes', N'Yes', N'Yes')
GO
INSERT [dbo].[PatientAd] ([Id], [Name], [PhoneNumber], [BloodGroup], [Gender]) VALUES (1, N'anand sagar', N'8978568838', N'B+', N'Male')
GO
INSERT [dbo].[patients] ([PatientId], [FirstName], [LastName], [Email], [Password], [BloodGroup], [Gender], [PhoneNo], [Address], [EmergencyContact]) VALUES (N'1002', N'karthik', N'Kumar', N'karth12@gmail.com', N'karthi!234', N'B+', N'Male', N'987612345', N'Chennai', N'6758943210')
GO
INSERT [dbo].[Prec] ([PatientName], [DoctorName], [Problem], [Medicine], [Morning], [Afternoon], [Night]) VALUES (N'jack', N'sagar', N'fever', N'dolo', N'yes', N'yes', N'yes')
INSERT [dbo].[Prec] ([PatientName], [DoctorName], [Problem], [Medicine], [Morning], [Afternoon], [Night]) VALUES (N'jack', N'sagar', N'fever', N'dolo', N'yes', N'no', N'no')
GO
SET IDENTITY_INSERT [dbo].[profiles] ON 

INSERT [dbo].[profiles] ([PatientId], [UserName], [FirstName], [LastName], [Email], [Password], [BloodGroup], [Gender], [Age], [PhoneNo], [Address], [EmergencyContact]) VALUES (CAST(1 AS Numeric(30, 0)), N'Bhargavi', N'Bhargavi', N'S', N'bhargavi12@gmail.com', N'bhargavi123', N'AB+', N'Female', N'21', N'8967464212', N'Bangalore', N'9876364343')
INSERT [dbo].[profiles] ([PatientId], [UserName], [FirstName], [LastName], [Email], [Password], [BloodGroup], [Gender], [Age], [PhoneNo], [Address], [EmergencyContact]) VALUES (CAST(2 AS Numeric(30, 0)), N'Mercy', N'Mercy', N'Anthoni', N'mercyanthoni2@gmail.com', N'mercy1234', N'', N'', N'', N'8967464212', N'', N'')
INSERT [dbo].[profiles] ([PatientId], [UserName], [FirstName], [LastName], [Email], [Password], [BloodGroup], [Gender], [Age], [PhoneNo], [Address], [EmergencyContact]) VALUES (CAST(3 AS Numeric(30, 0)), N'virat', N'virat', N'kholi', N'kholi@gmail.com', N'virat123', N'O+', N'Male', N'45', N'2853284204', N'Kolkata', N'')
INSERT [dbo].[profiles] ([PatientId], [UserName], [FirstName], [LastName], [Email], [Password], [BloodGroup], [Gender], [Age], [PhoneNo], [Address], [EmergencyContact]) VALUES (CAST(4 AS Numeric(30, 0)), N'KingKohli', N'Virat', N'Kohli', N'virat@gmail.com', N'sagar', N'B+', N'Male', N'35', N'09182225321', N'Delhi', N'8978568838')
INSERT [dbo].[profiles] ([PatientId], [UserName], [FirstName], [LastName], [Email], [Password], [BloodGroup], [Gender], [Age], [PhoneNo], [Address], [EmergencyContact]) VALUES (CAST(5 AS Numeric(30, 0)), N'Andrew Fletcher', N'Andrew', N'Fletcher', N'Fletcher@gmail.com', N'1234', N'', N'', N'', N'9182225321', N'', N'')
SET IDENTITY_INSERT [dbo].[profiles] OFF
GO
INSERT [dbo].[Registration] ([UserName], [FirstName], [LastName], [Password], [Email], [PhoneNumber], [Gender]) VALUES (N'Anand sagar', N'anand', N'sagar', N'badboy@123', N'anandasagar@iitsofttech.com', N'08978568838', N'M')
INSERT [dbo].[Registration] ([UserName], [FirstName], [LastName], [Password], [Email], [PhoneNumber], [Gender]) VALUES (N'anand', N'mb', N'sri', N'kjh', N'anandasagar@iitsofttech.com', N'08978568838', N'male')
INSERT [dbo].[Registration] ([UserName], [FirstName], [LastName], [Password], [Email], [PhoneNumber], [Gender]) VALUES (N'Anand sagar Matta', N'anand', N' sagar', N'anand@123', N'anandasagar@iitsofttech.com', N'9182225321', N'male')
INSERT [dbo].[Registration] ([UserName], [FirstName], [LastName], [Password], [Email], [PhoneNumber], [Gender]) VALUES (N'Anand sagar Matta', N'mb', N'sri', N'33333', N'anandasagar@iitsofttech.com', N'08978568838', N'male')
INSERT [dbo].[Registration] ([UserName], [FirstName], [LastName], [Password], [Email], [PhoneNumber], [Gender]) VALUES (N'King Kohli', N'virat', N'kohli', N'1818', N'virat@gmail.com', N'08978568838', N'male')
INSERT [dbo].[Registration] ([UserName], [FirstName], [LastName], [Password], [Email], [PhoneNumber], [Gender]) VALUES (N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[Registration] ([UserName], [FirstName], [LastName], [Password], [Email], [PhoneNumber], [Gender]) VALUES (N'sdgh', N'fghjkj', N'sdfgh', N'fghj', N'asdfgh', N'dfdgh', N'female')
INSERT [dbo].[Registration] ([UserName], [FirstName], [LastName], [Password], [Email], [PhoneNumber], [Gender]) VALUES (N'Bhargavi', N'Bhargavi', N'S', N'B@rgavi123', N'bhargavi11@gmail.com', N'', N'')
INSERT [dbo].[Registration] ([UserName], [FirstName], [LastName], [Password], [Email], [PhoneNumber], [Gender]) VALUES (N'Bhargavi', N'Bhargavi', N'S', N'B@ru110299', N'bhargavi11@gmail.com', N'', N'')
GO
INSERT [dbo].[SheduleAd] ([Id], [DoctorName], [StartTime], [EndTime], [status]) VALUES (1, N'anand', N'18:41', N'19:41', N'active')
GO
INSERT [dbo].[Ward] ([Id], [Name], [Department], [Designation], [Education], [PhoneNumber], [Gender], [Status]) VALUES (1, N'sagar', N'cardio', N'doctor', N'Mbbs', N'7655342375', N'Male', N'Active')
INSERT [dbo].[Ward] ([Id], [Name], [Department], [Designation], [Education], [PhoneNumber], [Gender], [Status]) VALUES (2, N'sagar', N'cardio', N'hhh', N'bn', N'08978568838', N'm', N'uy')
INSERT [dbo].[Ward] ([Id], [Name], [Department], [Designation], [Education], [PhoneNumber], [Gender], [Status]) VALUES (3, N'sagar', N'cardio', N'hhh', N'bn', N'08978568838', N'm', N'uy')
INSERT [dbo].[Ward] ([Id], [Name], [Department], [Designation], [Education], [PhoneNumber], [Gender], [Status]) VALUES (4, N'mb sri', N'w', N'hhh', N'bn', N'08978568838', N'm', N'AAAA')
INSERT [dbo].[Ward] ([Id], [Name], [Department], [Designation], [Education], [PhoneNumber], [Gender], [Status]) VALUES (11, N'arun', N'cardio', N'hhh', N's', N'09182225321', N'male', N'opp')
GO
ALTER TABLE [dbo].[MedicineAd]  WITH CHECK ADD  CONSTRAINT [fk] FOREIGN KEY([PatientId])
REFERENCES [dbo].[profiles] ([PatientId])
GO
ALTER TABLE [dbo].[MedicineAd] CHECK CONSTRAINT [fk]
GO
/****** Object:  StoredProcedure [dbo].[addmanage]    Script Date: 08-10-2024 05:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[addmanage]
	(@UserName varchar(30),
	@Password varchar(40))
AS
BEGIN
	SET NOCOUNT ON;

    -- Return 1 if the user exists, else return 0
    IF EXISTS (
        SELECT 1
        FROM dbo.manage
        WHERE UserName = @UserName AND Password = @Password
    )
    BEGIN
        SELECT 1 AS ValidUser;
    END
    ELSE
    BEGIN
        SELECT 0 AS ValidUser;
    END

   
END
GO
/****** Object:  StoredProcedure [dbo].[Addprofile]    Script Date: 08-10-2024 05:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE[dbo].[Addprofile]
( @Firstname varchar(40),
@LastName varchar(40),
@Email varchar(30),
@Password varchar(40),
@BloodGroup varchar(30),
@Gender varchar(30),
@Age varchar(30),
@PhoneNo varchar(30),
@Address varchar(30),
@EmergencyContact varchar(30))
	
AS
BEGIN
	 IF EXISTS (
        SELECT 1
        FROM profile
        WHERE Email = @Email)
		BEGIN
		
		Update profile 
        SET Firstname = @Firstname,
            LastName = @LastName,
            Password = @Password,
            BloodGroup = @BloodGroup,
            Gender = @Gender,
            Age = @Age,
            PhoneNo = @PhoneNo,
            Address = @Address,
            EmergencyContact = @EmergencyContact
        WHERE Email = @Email;
        END
		Else
		Begin

		 INSERT INTO Profile (Firstname, LastName, Email, Password, BloodGroup, Gender, Age, PhoneNo, Address, EmergencyContact)
        VALUES (@Firstname, @LastName, @Email, @Password, @BloodGroup, @Gender, @Age, @PhoneNo, @Address, @EmergencyContact);

		End  
   
END
GO
/****** Object:  StoredProcedure [dbo].[getmanage]    Script Date: 08-10-2024 05:53:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getmanage]
(

@Username varchar(30),
@Password varchar(30))

	
AS
BEGIN

	insert into manage(UserName,Password) values(@Username,@Password)

END
GO
