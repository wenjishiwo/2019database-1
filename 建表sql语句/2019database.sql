USE [master]
GO
/****** Object:  Database [2019database]    Script Date: 2019/11/13 11:13:15 ******/
CREATE DATABASE [2019database]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'2019database', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\2019database.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'2019database_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\2019database_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 1024KB )
GO
ALTER DATABASE [2019database] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [2019database].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [2019database] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [2019database] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [2019database] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [2019database] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [2019database] SET ARITHABORT OFF 
GO
ALTER DATABASE [2019database] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [2019database] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [2019database] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [2019database] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [2019database] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [2019database] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [2019database] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [2019database] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [2019database] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [2019database] SET  DISABLE_BROKER 
GO
ALTER DATABASE [2019database] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [2019database] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [2019database] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [2019database] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [2019database] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [2019database] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [2019database] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [2019database] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [2019database] SET  MULTI_USER 
GO
ALTER DATABASE [2019database] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [2019database] SET DB_CHAINING OFF 
GO
ALTER DATABASE [2019database] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [2019database] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [2019database] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [2019database] SET QUERY_STORE = OFF
GO
USE [2019database]
GO
/****** Object:  Table [dbo].[Admission]    Script Date: 2019/11/13 11:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admission](
	[u_id] [int] IDENTITY(1,1) NOT NULL,
	[u_type] [char](10) NULL,
	[u_mailbox] [char](20) NULL,
	[adm] [char](10) NULL,
	[pawd] [char](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[u_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChatRecord]    Script Date: 2019/11/13 11:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChatRecord](
	[mes_id] [int] NOT NULL,
	[u_id_send] [int] NOT NULL,
	[u_id_receive] [int] NOT NULL,
	[time] [datetime] NOT NULL,
	[content] [text] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[mes_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Log_in]    Script Date: 2019/11/13 11:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log_in](
	[log_id] [int] NOT NULL,
	[u_id] [int] NULL,
	[in_time] [datetime] NULL,
	[out_time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[log_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Major]    Script Date: 2019/11/13 11:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Major](
	[mjr_id] [int] IDENTITY(1,1) NOT NULL,
	[mjr_name] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[mjr_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Material]    Script Date: 2019/11/13 11:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material](
	[m_id] [int] IDENTITY(1,1) NOT NULL,
	[stu_id] [int] NULL,
	[m_text] [text] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[m_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Perm]    Script Date: 2019/11/13 11:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Perm](
	[pmt_id] [int] NOT NULL,
	[per_context] [char](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[pmt_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Problem]    Script Date: 2019/11/13 11:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Problem](
	[pl_id] [int] IDENTITY(1,1) NOT NULL,
	[tch_id] [int] NOT NULL,
	[plt_id] [int] NOT NULL,
	[pl_name] [nvarchar](20) NOT NULL,
	[pl_degree] [nvarchar](10) NOT NULL,
	[pl_need] [text] NOT NULL,
	[pl_eva_mode] [text] NOT NULL,
	[max_person] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[pl_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProblemProfession]    Script Date: 2019/11/13 11:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProblemProfession](
	[pl_id] [int] NOT NULL,
	[mjr_id] [int] NOT NULL,
 CONSTRAINT [PK_ProblemProfession] PRIMARY KEY CLUSTERED 
(
	[pl_id] ASC,
	[mjr_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProblemType]    Script Date: 2019/11/13 11:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProblemType](
	[plt_id] [int] IDENTITY(1,1) NOT NULL,
	[pl_type] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[plt_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Report]    Script Date: 2019/11/13 11:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Report](
	[rep_id] [int] IDENTITY(1,1) NOT NULL,
	[stu_id] [int] NOT NULL,
	[pl_id] [int] NOT NULL,
	[rept_id] [int] NOT NULL,
	[time] [datetime] NOT NULL,
	[content_report] [text] NOT NULL,
 CONSTRAINT [PK_Report_table] PRIMARY KEY CLUSTERED 
(
	[rep_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReportType]    Script Date: 2019/11/13 11:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportType](
	[rept_id] [int] IDENTITY(1,1) NOT NULL,
	[report_type] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Report_type_table] PRIMARY KEY CLUSTERED 
(
	[rept_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Score]    Script Date: 2019/11/13 11:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Score](
	[rep_id] [int] NOT NULL,
	[tch_id] [int] NOT NULL,
	[comments] [text] NOT NULL,
	[score] [int] NOT NULL,
 CONSTRAINT [PK_Score_table] PRIMARY KEY CLUSTERED 
(
	[rep_id] ASC,
	[tch_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Selectedtopic]    Script Date: 2019/11/13 11:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Selectedtopic](
	[stu_id] [int] NOT NULL,
	[pl_id] [int] NOT NULL,
 CONSTRAINT [ST_key] PRIMARY KEY CLUSTERED 
(
	[stu_id] ASC,
	[pl_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Selection]    Script Date: 2019/11/13 11:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Selection](
	[sec_id] [int] IDENTITY(1,1) NOT NULL,
	[stu_id] [int] NULL,
	[priority] [int] NOT NULL,
	[pl_id] [int] NULL,
	[m_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[sec_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 2019/11/13 11:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[stu_id] [int] IDENTITY(1,1) NOT NULL,
	[u_id] [int] NULL,
	[SN] [nvarchar](10) NOT NULL,
	[mjr_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[stu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 2019/11/13 11:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[tch_id] [int] IDENTITY(1,1) NOT NULL,
	[u_id] [int] NOT NULL,
	[tch_name] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tch_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Perm]    Script Date: 2019/11/13 11:13:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Perm](
	[u_id] [int] NOT NULL,
	[pmt_id] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChatRecord]  WITH CHECK ADD FOREIGN KEY([u_id_send])
REFERENCES [dbo].[Admission] ([u_id])
GO
ALTER TABLE [dbo].[ChatRecord]  WITH CHECK ADD FOREIGN KEY([u_id_receive])
REFERENCES [dbo].[Admission] ([u_id])
GO
ALTER TABLE [dbo].[Log_in]  WITH CHECK ADD  CONSTRAINT [u_id] FOREIGN KEY([u_id])
REFERENCES [dbo].[Admission] ([u_id])
GO
ALTER TABLE [dbo].[Log_in] CHECK CONSTRAINT [u_id]
GO
ALTER TABLE [dbo].[Material]  WITH CHECK ADD FOREIGN KEY([stu_id])
REFERENCES [dbo].[Student] ([stu_id])
GO
ALTER TABLE [dbo].[Problem]  WITH CHECK ADD FOREIGN KEY([plt_id])
REFERENCES [dbo].[ProblemType] ([plt_id])
GO
ALTER TABLE [dbo].[Problem]  WITH CHECK ADD FOREIGN KEY([tch_id])
REFERENCES [dbo].[Teacher] ([tch_id])
GO
ALTER TABLE [dbo].[ProblemProfession]  WITH CHECK ADD FOREIGN KEY([mjr_id])
REFERENCES [dbo].[Major] ([mjr_id])
GO
ALTER TABLE [dbo].[ProblemProfession]  WITH CHECK ADD FOREIGN KEY([pl_id])
REFERENCES [dbo].[Problem] ([pl_id])
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD FOREIGN KEY([pl_id])
REFERENCES [dbo].[Problem] ([pl_id])
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD FOREIGN KEY([rept_id])
REFERENCES [dbo].[ReportType] ([rept_id])
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD FOREIGN KEY([stu_id])
REFERENCES [dbo].[Student] ([stu_id])
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD  CONSTRAINT [FK_Report_table_Report_type_table] FOREIGN KEY([rept_id])
REFERENCES [dbo].[ReportType] ([rept_id])
GO
ALTER TABLE [dbo].[Report] CHECK CONSTRAINT [FK_Report_table_Report_type_table]
GO
ALTER TABLE [dbo].[Selectedtopic]  WITH CHECK ADD FOREIGN KEY([pl_id])
REFERENCES [dbo].[Problem] ([pl_id])
GO
ALTER TABLE [dbo].[Selectedtopic]  WITH CHECK ADD FOREIGN KEY([stu_id])
REFERENCES [dbo].[Student] ([stu_id])
GO
ALTER TABLE [dbo].[Selection]  WITH CHECK ADD FOREIGN KEY([m_id])
REFERENCES [dbo].[Material] ([m_id])
GO
ALTER TABLE [dbo].[Selection]  WITH CHECK ADD FOREIGN KEY([pl_id])
REFERENCES [dbo].[Problem] ([pl_id])
GO
ALTER TABLE [dbo].[Selection]  WITH CHECK ADD FOREIGN KEY([stu_id])
REFERENCES [dbo].[Student] ([stu_id])
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD FOREIGN KEY([mjr_id])
REFERENCES [dbo].[Major] ([mjr_id])
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD FOREIGN KEY([u_id])
REFERENCES [dbo].[Admission] ([u_id])
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD FOREIGN KEY([u_id])
REFERENCES [dbo].[Admission] ([u_id])
GO
ALTER TABLE [dbo].[User_Perm]  WITH CHECK ADD FOREIGN KEY([pmt_id])
REFERENCES [dbo].[Perm] ([pmt_id])
GO
ALTER TABLE [dbo].[User_Perm]  WITH CHECK ADD FOREIGN KEY([u_id])
REFERENCES [dbo].[Admission] ([u_id])
GO
USE [master]
GO
ALTER DATABASE [2019database] SET  READ_WRITE 
GO
