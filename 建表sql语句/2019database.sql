USE [2019database]
GO
/****** Object:  Table [dbo].[Administrator]    Script Date: 2019/11/13 19:27:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administrator](
	[u_id] [int] NOT NULL,
	[ad_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Administrator] PRIMARY KEY CLUSTERED 
(
	[u_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admission]    Script Date: 2019/11/13 19:27:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admission](
	[u_id] [int] IDENTITY(1,1) NOT NULL,
	[u_type] [int] NULL,
	[u_mailbox] [varchar](50) NULL,
	[adm] [varchar](50) NULL,
	[pawd] [varchar](50) NULL,
 CONSTRAINT [PK__Admissio__B51D3DEAED724317] PRIMARY KEY CLUSTERED 
(
	[u_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChatRecord]    Script Date: 2019/11/13 19:27:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChatRecord](
	[mes_id] [int] IDENTITY(1,1) NOT NULL,
	[u_id_send] [int] NULL,
	[u_id_receive] [int] NULL,
	[time] [datetime] NULL,
	[content] [text] NULL,
 CONSTRAINT [PK__ChatReco__86A20DC3349BDA83] PRIMARY KEY CLUSTERED 
(
	[mes_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Log_in]    Script Date: 2019/11/13 19:27:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log_in](
	[log_id] [int] IDENTITY(1,1) NOT NULL,
	[u_id] [int] NULL,
	[in_time] [datetime] NULL,
 CONSTRAINT [PK__Log_in__9E2397E0425CDAB4] PRIMARY KEY CLUSTERED 
(
	[log_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Major]    Script Date: 2019/11/13 19:27:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Major](
	[mjr_id] [int] NOT NULL,
	[mjr_name] [nvarchar](20) NULL,
 CONSTRAINT [PK__Major__43D01D8EF056EF04] PRIMARY KEY CLUSTERED 
(
	[mjr_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Material]    Script Date: 2019/11/13 19:27:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material](
	[m_id] [int] IDENTITY(1,1) NOT NULL,
	[stu_id] [int] NULL,
	[m_text] [text] NULL,
 CONSTRAINT [PK__Material__7C8D7D29EF2717DA] PRIMARY KEY CLUSTERED 
(
	[m_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Perm]    Script Date: 2019/11/13 19:27:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Perm](
	[pmt_id] [int] NOT NULL,
	[per_context] [nvarchar](50) NULL,
 CONSTRAINT [PK__Perm__FE129F7E10261AD2] PRIMARY KEY CLUSTERED 
(
	[pmt_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Problem]    Script Date: 2019/11/13 19:27:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Problem](
	[pl_id] [int] IDENTITY(1,1) NOT NULL,
	[tch_id] [int] NULL,
	[plt_id] [int] NULL,
	[pl_name] [nvarchar](20) NULL,
	[pl_degree] [int] NULL,
	[pl_need] [text] NULL,
	[pl_eva_mode] [text] NULL,
	[max_person] [int] NULL,
 CONSTRAINT [PK__Problem__0CBEC8858C943978] PRIMARY KEY CLUSTERED 
(
	[pl_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProblemProfession]    Script Date: 2019/11/13 19:27:24 ******/
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
/****** Object:  Table [dbo].[ProblemType]    Script Date: 2019/11/13 19:27:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProblemType](
	[plt_id] [int] NOT NULL,
	[pl_type] [nvarchar](10) NULL,
 CONSTRAINT [PK__ProblemT__560407D782D4D297] PRIMARY KEY CLUSTERED 
(
	[plt_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Report]    Script Date: 2019/11/13 19:27:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Report](
	[rep_id] [int] IDENTITY(1,1) NOT NULL,
	[stu_id] [int] NULL,
	[pl_id] [int] NULL,
	[rept_id] [int] NULL,
	[time] [datetime] NULL,
	[content_report] [text] NULL,
 CONSTRAINT [PK_Report_table] PRIMARY KEY CLUSTERED 
(
	[rep_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReportType]    Script Date: 2019/11/13 19:27:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportType](
	[rept_id] [int] NOT NULL,
	[report_type] [varchar](30) NULL,
 CONSTRAINT [PK_Report_type_table] PRIMARY KEY CLUSTERED 
(
	[rept_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Score]    Script Date: 2019/11/13 19:27:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Score](
	[rep_id] [int] NOT NULL,
	[tch_id] [int] NOT NULL,
	[comments] [text] NULL,
	[score] [int] NULL,
 CONSTRAINT [PK_Score] PRIMARY KEY CLUSTERED 
(
	[rep_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Selectedtopic]    Script Date: 2019/11/13 19:27:24 ******/
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
/****** Object:  Table [dbo].[Selection]    Script Date: 2019/11/13 19:27:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Selection](
	[sec_id] [int] IDENTITY(1,1) NOT NULL,
	[stu_id] [int] NULL,
	[priority] [int] NULL,
	[pl_id] [int] NULL,
	[m_id] [int] NULL,
 CONSTRAINT [PK__Selectio__E9DE06E71AC4A9A0] PRIMARY KEY CLUSTERED 
(
	[sec_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 2019/11/13 19:27:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[stu_id] [int] NOT NULL,
	[u_id] [int] NULL,
	[SN] [nvarchar](10) NULL,
	[mjr_id] [int] NULL,
 CONSTRAINT [PK__Student__E53CAB211B62CB77] PRIMARY KEY CLUSTERED 
(
	[stu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 2019/11/13 19:27:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[tch_id] [int] NOT NULL,
	[u_id] [int] NULL,
	[tch_name] [nvarchar](10) NULL,
 CONSTRAINT [PK__Teacher__2D93EFBFCF78380D] PRIMARY KEY CLUSTERED 
(
	[tch_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Perm]    Script Date: 2019/11/13 19:27:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Perm](
	[u_id] [int] NOT NULL,
	[pmt_id] [int] NOT NULL,
 CONSTRAINT [PK_User_Perm] PRIMARY KEY CLUSTERED 
(
	[u_id] ASC,
	[pmt_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserType]    Script Date: 2019/11/13 19:27:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserType](
	[ut_id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserType] PRIMARY KEY CLUSTERED 
(
	[ut_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Administrator] ([u_id], [ad_name]) VALUES (1, N'学者')
SET IDENTITY_INSERT [dbo].[Admission] ON 

INSERT [dbo].[Admission] ([u_id], [u_type], [u_mailbox], [adm], [pawd]) VALUES (1, 1, N'cloudea@163.com', N'123', N'456')
SET IDENTITY_INSERT [dbo].[Admission] OFF
INSERT [dbo].[Major] ([mjr_id], [mjr_name]) VALUES (1, N'计算机科学与技术')
INSERT [dbo].[Major] ([mjr_id], [mjr_name]) VALUES (2, N'网络工程')
INSERT [dbo].[Major] ([mjr_id], [mjr_name]) VALUES (3, N'数字媒体与技术')
INSERT [dbo].[Major] ([mjr_id], [mjr_name]) VALUES (4, N'物联网')
INSERT [dbo].[Major] ([mjr_id], [mjr_name]) VALUES (5, N'土木工程')
INSERT [dbo].[Major] ([mjr_id], [mjr_name]) VALUES (6, N'旅游管理')
INSERT [dbo].[Major] ([mjr_id], [mjr_name]) VALUES (7, N'园林')
INSERT [dbo].[Major] ([mjr_id], [mjr_name]) VALUES (8, N'园艺')
INSERT [dbo].[Major] ([mjr_id], [mjr_name]) VALUES (9, N'地市规划')
INSERT [dbo].[Major] ([mjr_id], [mjr_name]) VALUES (10, N'商务英语')
INSERT [dbo].[Perm] ([pmt_id], [per_context]) VALUES (1, N'超级管理员权限')
INSERT [dbo].[Perm] ([pmt_id], [per_context]) VALUES (2, N'普通管理员权限')
INSERT [dbo].[Perm] ([pmt_id], [per_context]) VALUES (3, N'教师相关权限')
INSERT [dbo].[Perm] ([pmt_id], [per_context]) VALUES (4, N'学生相关权限')
INSERT [dbo].[ProblemType] ([plt_id], [pl_type]) VALUES (1, N'算法设计')
INSERT [dbo].[ProblemType] ([plt_id], [pl_type]) VALUES (2, N'应用系统')
INSERT [dbo].[ReportType] ([rept_id], [report_type]) VALUES (1, N'月报')
INSERT [dbo].[ReportType] ([rept_id], [report_type]) VALUES (2, N'中期检察报告')
INSERT [dbo].[ReportType] ([rept_id], [report_type]) VALUES (3, N'结题报告')
INSERT [dbo].[User_Perm] ([u_id], [pmt_id]) VALUES (1, 1)
INSERT [dbo].[User_Perm] ([u_id], [pmt_id]) VALUES (1, 2)
INSERT [dbo].[UserType] ([ut_id], [name]) VALUES (1, N'管理员')
INSERT [dbo].[UserType] ([ut_id], [name]) VALUES (2, N'教师')
INSERT [dbo].[UserType] ([ut_id], [name]) VALUES (3, N'学生')
ALTER TABLE [dbo].[Administrator]  WITH CHECK ADD  CONSTRAINT [FK_Administrator_Admission] FOREIGN KEY([u_id])
REFERENCES [dbo].[Admission] ([u_id])
GO
ALTER TABLE [dbo].[Administrator] CHECK CONSTRAINT [FK_Administrator_Admission]
GO
ALTER TABLE [dbo].[Admission]  WITH CHECK ADD  CONSTRAINT [FK_Admission_UserType] FOREIGN KEY([u_type])
REFERENCES [dbo].[UserType] ([ut_id])
GO
ALTER TABLE [dbo].[Admission] CHECK CONSTRAINT [FK_Admission_UserType]
GO
ALTER TABLE [dbo].[ChatRecord]  WITH CHECK ADD  CONSTRAINT [FK__ChatRecor__u_id___5535A963] FOREIGN KEY([u_id_send])
REFERENCES [dbo].[Admission] ([u_id])
GO
ALTER TABLE [dbo].[ChatRecord] CHECK CONSTRAINT [FK__ChatRecor__u_id___5535A963]
GO
ALTER TABLE [dbo].[ChatRecord]  WITH CHECK ADD  CONSTRAINT [FK__ChatRecor__u_id___5629CD9C] FOREIGN KEY([u_id_receive])
REFERENCES [dbo].[Admission] ([u_id])
GO
ALTER TABLE [dbo].[ChatRecord] CHECK CONSTRAINT [FK__ChatRecor__u_id___5629CD9C]
GO
ALTER TABLE [dbo].[Log_in]  WITH CHECK ADD  CONSTRAINT [u_id] FOREIGN KEY([u_id])
REFERENCES [dbo].[Admission] ([u_id])
GO
ALTER TABLE [dbo].[Log_in] CHECK CONSTRAINT [u_id]
GO
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK__Material__stu_id__5812160E] FOREIGN KEY([stu_id])
REFERENCES [dbo].[Student] ([stu_id])
GO
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK__Material__stu_id__5812160E]
GO
ALTER TABLE [dbo].[Problem]  WITH CHECK ADD  CONSTRAINT [FK__Problem__tch_id__59FA5E80] FOREIGN KEY([tch_id])
REFERENCES [dbo].[Teacher] ([tch_id])
GO
ALTER TABLE [dbo].[Problem] CHECK CONSTRAINT [FK__Problem__tch_id__59FA5E80]
GO
ALTER TABLE [dbo].[Problem]  WITH CHECK ADD  CONSTRAINT [FK_Problem_ProblemType] FOREIGN KEY([plt_id])
REFERENCES [dbo].[ProblemType] ([plt_id])
GO
ALTER TABLE [dbo].[Problem] CHECK CONSTRAINT [FK_Problem_ProblemType]
GO
ALTER TABLE [dbo].[ProblemProfession]  WITH CHECK ADD  CONSTRAINT [FK_ProblemProfession_Major] FOREIGN KEY([mjr_id])
REFERENCES [dbo].[Major] ([mjr_id])
GO
ALTER TABLE [dbo].[ProblemProfession] CHECK CONSTRAINT [FK_ProblemProfession_Major]
GO
ALTER TABLE [dbo].[ProblemProfession]  WITH CHECK ADD  CONSTRAINT [FK_ProblemProfession_Problem] FOREIGN KEY([pl_id])
REFERENCES [dbo].[Problem] ([pl_id])
GO
ALTER TABLE [dbo].[ProblemProfession] CHECK CONSTRAINT [FK_ProblemProfession_Problem]
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD  CONSTRAINT [FK__Report__rept_id__5DCAEF64] FOREIGN KEY([rept_id])
REFERENCES [dbo].[ReportType] ([rept_id])
GO
ALTER TABLE [dbo].[Report] CHECK CONSTRAINT [FK__Report__rept_id__5DCAEF64]
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD  CONSTRAINT [FK__Report__stu_id__5EBF139D] FOREIGN KEY([stu_id])
REFERENCES [dbo].[Student] ([stu_id])
GO
ALTER TABLE [dbo].[Report] CHECK CONSTRAINT [FK__Report__stu_id__5EBF139D]
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD  CONSTRAINT [FK_Report_Problem] FOREIGN KEY([pl_id])
REFERENCES [dbo].[Problem] ([pl_id])
GO
ALTER TABLE [dbo].[Report] CHECK CONSTRAINT [FK_Report_Problem]
GO
ALTER TABLE [dbo].[Score]  WITH CHECK ADD  CONSTRAINT [FK_Score_Report] FOREIGN KEY([rep_id])
REFERENCES [dbo].[Report] ([rep_id])
GO
ALTER TABLE [dbo].[Score] CHECK CONSTRAINT [FK_Score_Report]
GO
ALTER TABLE [dbo].[Score]  WITH CHECK ADD  CONSTRAINT [FK_Score_Teacher] FOREIGN KEY([tch_id])
REFERENCES [dbo].[Teacher] ([tch_id])
GO
ALTER TABLE [dbo].[Score] CHECK CONSTRAINT [FK_Score_Teacher]
GO
ALTER TABLE [dbo].[Selectedtopic]  WITH CHECK ADD  CONSTRAINT [FK__Selectedt__stu_i__619B8048] FOREIGN KEY([stu_id])
REFERENCES [dbo].[Student] ([stu_id])
GO
ALTER TABLE [dbo].[Selectedtopic] CHECK CONSTRAINT [FK__Selectedt__stu_i__619B8048]
GO
ALTER TABLE [dbo].[Selectedtopic]  WITH CHECK ADD  CONSTRAINT [FK_Selectedtopic_Problem] FOREIGN KEY([pl_id])
REFERENCES [dbo].[Problem] ([pl_id])
GO
ALTER TABLE [dbo].[Selectedtopic] CHECK CONSTRAINT [FK_Selectedtopic_Problem]
GO
ALTER TABLE [dbo].[Selection]  WITH CHECK ADD  CONSTRAINT [FK__Selection__m_id__628FA481] FOREIGN KEY([m_id])
REFERENCES [dbo].[Material] ([m_id])
GO
ALTER TABLE [dbo].[Selection] CHECK CONSTRAINT [FK__Selection__m_id__628FA481]
GO
ALTER TABLE [dbo].[Selection]  WITH CHECK ADD  CONSTRAINT [FK__Selection__stu_i__6477ECF3] FOREIGN KEY([stu_id])
REFERENCES [dbo].[Student] ([stu_id])
GO
ALTER TABLE [dbo].[Selection] CHECK CONSTRAINT [FK__Selection__stu_i__6477ECF3]
GO
ALTER TABLE [dbo].[Selection]  WITH CHECK ADD  CONSTRAINT [FK_Selection_Problem] FOREIGN KEY([pl_id])
REFERENCES [dbo].[Problem] ([pl_id])
GO
ALTER TABLE [dbo].[Selection] CHECK CONSTRAINT [FK_Selection_Problem]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK__Student__u_id__66603565] FOREIGN KEY([u_id])
REFERENCES [dbo].[Admission] ([u_id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK__Student__u_id__66603565]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Major] FOREIGN KEY([mjr_id])
REFERENCES [dbo].[Major] ([mjr_id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Major]
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK__Teacher__u_id__6754599E] FOREIGN KEY([u_id])
REFERENCES [dbo].[Admission] ([u_id])
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK__Teacher__u_id__6754599E]
GO
ALTER TABLE [dbo].[User_Perm]  WITH CHECK ADD  CONSTRAINT [FK__User_Perm__pmt_i__68487DD7] FOREIGN KEY([pmt_id])
REFERENCES [dbo].[Perm] ([pmt_id])
GO
ALTER TABLE [dbo].[User_Perm] CHECK CONSTRAINT [FK__User_Perm__pmt_i__68487DD7]
GO
ALTER TABLE [dbo].[User_Perm]  WITH CHECK ADD  CONSTRAINT [FK__User_Perm__u_id__693CA210] FOREIGN KEY([u_id])
REFERENCES [dbo].[Admission] ([u_id])
GO
ALTER TABLE [dbo].[User_Perm] CHECK CONSTRAINT [FK__User_Perm__u_id__693CA210]
GO
