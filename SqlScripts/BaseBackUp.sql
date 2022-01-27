USE [HomeworkDB]
GO
/****** Object:  Table [dbo].[Lessons]    Script Date: 26.01.2022 16:51:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lessons](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LessonsTimecodes]    Script Date: 26.01.2022 16:51:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LessonsTimecodes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LessonId] [int] NOT NULL,
	[TimecodeId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 26.01.2022 16:51:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](200) NOT NULL,
	[CreateDate] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 26.01.2022 16:51:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentsQuestions]    Script Date: 26.01.2022 16:51:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentsQuestions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VisitedLessonId] [int] NOT NULL,
	[QuestionId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Timecode]    Script Date: 26.01.2022 16:51:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Timecode](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[CreateDate] [datetime2](7) NULL,
	[TimecodeTime] [datetime2](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VisitedLessons]    Script Date: 26.01.2022 16:51:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VisitedLessons](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StudentsId] [int] NOT NULL,
	[LessonId] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Lessons] ON 
GO
INSERT [dbo].[Lessons] ([Id], [Title], [Description], [StartDate], [CreatedDate]) VALUES (1, N'Изучаем переменные в C#', N'Всем привет, на этом занятии мы начнем рассматривать переменные в C#', CAST(N'2021-05-28T11:00:00.0000000' AS DateTime2), CAST(N'2022-01-23T17:27:05.3700000' AS DateTime2))
GO
INSERT [dbo].[Lessons] ([Id], [Title], [Description], [StartDate], [CreatedDate]) VALUES (2, N'Изучаем массивы в C#', N'Всем привет, на этом занятии мы начнем рассматривать массивы в C#', CAST(N'2021-06-02T11:00:00.0000000' AS DateTime2), CAST(N'2022-01-23T17:27:05.3700000' AS DateTime2))
GO
INSERT [dbo].[Lessons] ([Id], [Title], [Description], [StartDate], [CreatedDate]) VALUES (3, N'Изучаем функции в C#', N'Всем привет, на этом занятии мы начнем рассматривать функции в C#', CAST(N'2021-06-09T11:00:00.0000000' AS DateTime2), CAST(N'2022-01-23T17:27:05.3700000' AS DateTime2))
GO
INSERT [dbo].[Lessons] ([Id], [Title], [Description], [StartDate], [CreatedDate]) VALUES (4, N'Изучаем классы в C#', N'Всем привет, на этом занятии мы начнем рассматривать классы в C#', CAST(N'2021-06-15T11:00:00.0000000' AS DateTime2), CAST(N'2022-01-23T17:27:05.3700000' AS DateTime2))
GO
INSERT [dbo].[Lessons] ([Id], [Title], [Description], [StartDate], [CreatedDate]) VALUES (5, N'Изучаем интерфейсы в C#', N'Всем привет, на этом занятии мы начнем рассматривать интерфейсы в C#', CAST(N'2021-06-23T11:00:00.0000000' AS DateTime2), CAST(N'2022-01-23T17:27:05.3700000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[Lessons] OFF
GO
SET IDENTITY_INSERT [dbo].[LessonsTimecodes] ON 
GO
INSERT [dbo].[LessonsTimecodes] ([Id], [LessonId], [TimecodeId]) VALUES (1, 1, 1)
GO
INSERT [dbo].[LessonsTimecodes] ([Id], [LessonId], [TimecodeId]) VALUES (2, 1, 2)
GO
INSERT [dbo].[LessonsTimecodes] ([Id], [LessonId], [TimecodeId]) VALUES (3, 1, 3)
GO
INSERT [dbo].[LessonsTimecodes] ([Id], [LessonId], [TimecodeId]) VALUES (4, 2, 4)
GO
INSERT [dbo].[LessonsTimecodes] ([Id], [LessonId], [TimecodeId]) VALUES (5, 2, 5)
GO
INSERT [dbo].[LessonsTimecodes] ([Id], [LessonId], [TimecodeId]) VALUES (6, 2, 6)
GO
INSERT [dbo].[LessonsTimecodes] ([Id], [LessonId], [TimecodeId]) VALUES (8, 3, 7)
GO
INSERT [dbo].[LessonsTimecodes] ([Id], [LessonId], [TimecodeId]) VALUES (9, 3, 8)
GO
INSERT [dbo].[LessonsTimecodes] ([Id], [LessonId], [TimecodeId]) VALUES (10, 3, 9)
GO
INSERT [dbo].[LessonsTimecodes] ([Id], [LessonId], [TimecodeId]) VALUES (11, 4, 10)
GO
INSERT [dbo].[LessonsTimecodes] ([Id], [LessonId], [TimecodeId]) VALUES (12, 4, 11)
GO
INSERT [dbo].[LessonsTimecodes] ([Id], [LessonId], [TimecodeId]) VALUES (13, 4, 12)
GO
INSERT [dbo].[LessonsTimecodes] ([Id], [LessonId], [TimecodeId]) VALUES (14, 5, 13)
GO
INSERT [dbo].[LessonsTimecodes] ([Id], [LessonId], [TimecodeId]) VALUES (15, 5, 14)
GO
INSERT [dbo].[LessonsTimecodes] ([Id], [LessonId], [TimecodeId]) VALUES (16, 5, 15)
GO
SET IDENTITY_INSERT [dbo].[LessonsTimecodes] OFF
GO
SET IDENTITY_INSERT [dbo].[Question] ON 
GO
INSERT [dbo].[Question] ([Id], [Description], [CreateDate]) VALUES (1, N'Что такое переменная?', CAST(N'2022-01-23T17:39:47.6900000' AS DateTime2))
GO
INSERT [dbo].[Question] ([Id], [Description], [CreateDate]) VALUES (2, N'Как инициализировать переменную?', CAST(N'2022-01-23T17:39:47.6900000' AS DateTime2))
GO
INSERT [dbo].[Question] ([Id], [Description], [CreateDate]) VALUES (3, N'Что такое массивы?', CAST(N'2022-01-23T17:39:47.6900000' AS DateTime2))
GO
INSERT [dbo].[Question] ([Id], [Description], [CreateDate]) VALUES (4, N'Способы инициализации массивов?', CAST(N'2022-01-23T17:39:47.6900000' AS DateTime2))
GO
INSERT [dbo].[Question] ([Id], [Description], [CreateDate]) VALUES (5, N'Что такое индекс массива?', CAST(N'2022-01-23T17:39:47.6900000' AS DateTime2))
GO
INSERT [dbo].[Question] ([Id], [Description], [CreateDate]) VALUES (6, N'Что такое фанкция?', CAST(N'2022-01-23T17:39:47.6900000' AS DateTime2))
GO
INSERT [dbo].[Question] ([Id], [Description], [CreateDate]) VALUES (7, N'Какие бывают фукции?', CAST(N'2022-01-23T17:39:47.6900000' AS DateTime2))
GO
INSERT [dbo].[Question] ([Id], [Description], [CreateDate]) VALUES (8, N'Что такое аргумент функции?', CAST(N'2022-01-23T17:39:47.6900000' AS DateTime2))
GO
INSERT [dbo].[Question] ([Id], [Description], [CreateDate]) VALUES (9, N'Что такое класс?', CAST(N'2022-01-23T17:39:47.6900000' AS DateTime2))
GO
INSERT [dbo].[Question] ([Id], [Description], [CreateDate]) VALUES (10, N'Что такое конструктор?', CAST(N'2022-01-23T17:39:47.6900000' AS DateTime2))
GO
INSERT [dbo].[Question] ([Id], [Description], [CreateDate]) VALUES (11, N'Что такое наследование?', CAST(N'2022-01-23T17:39:47.6900000' AS DateTime2))
GO
INSERT [dbo].[Question] ([Id], [Description], [CreateDate]) VALUES (12, N'Что такое интерфейс?', CAST(N'2022-01-23T17:39:47.6900000' AS DateTime2))
GO
INSERT [dbo].[Question] ([Id], [Description], [CreateDate]) VALUES (13, N'Почему интерфесы реализуют, а не наследуют?', CAST(N'2022-01-23T17:39:47.6900000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[Question] OFF
GO
SET IDENTITY_INSERT [dbo].[Students] ON 
GO
INSERT [dbo].[Students] ([Id], [Name], [CreatedDate]) VALUES (1, N'Bob', CAST(N'2022-01-23T17:25:11.8566667' AS DateTime2))
GO
INSERT [dbo].[Students] ([Id], [Name], [CreatedDate]) VALUES (2, N'Nick', CAST(N'2022-01-23T17:25:11.8566667' AS DateTime2))
GO
INSERT [dbo].[Students] ([Id], [Name], [CreatedDate]) VALUES (3, N'Igor', CAST(N'2022-01-23T17:25:11.8566667' AS DateTime2))
GO
INSERT [dbo].[Students] ([Id], [Name], [CreatedDate]) VALUES (4, N'Elena', CAST(N'2022-01-23T17:25:11.8566667' AS DateTime2))
GO
INSERT [dbo].[Students] ([Id], [Name], [CreatedDate]) VALUES (5, N'Brad', CAST(N'2022-01-23T17:25:11.8566667' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[Students] OFF
GO
SET IDENTITY_INSERT [dbo].[StudentsQuestions] ON 
GO
INSERT [dbo].[StudentsQuestions] ([Id], [VisitedLessonId], [QuestionId]) VALUES (1, 1, 1)
GO
INSERT [dbo].[StudentsQuestions] ([Id], [VisitedLessonId], [QuestionId]) VALUES (2, 1, 2)
GO
INSERT [dbo].[StudentsQuestions] ([Id], [VisitedLessonId], [QuestionId]) VALUES (3, 2, 3)
GO
INSERT [dbo].[StudentsQuestions] ([Id], [VisitedLessonId], [QuestionId]) VALUES (4, 2, 4)
GO
INSERT [dbo].[StudentsQuestions] ([Id], [VisitedLessonId], [QuestionId]) VALUES (5, 2, 5)
GO
INSERT [dbo].[StudentsQuestions] ([Id], [VisitedLessonId], [QuestionId]) VALUES (6, 3, 6)
GO
INSERT [dbo].[StudentsQuestions] ([Id], [VisitedLessonId], [QuestionId]) VALUES (7, 3, 7)
GO
INSERT [dbo].[StudentsQuestions] ([Id], [VisitedLessonId], [QuestionId]) VALUES (8, 3, 8)
GO
INSERT [dbo].[StudentsQuestions] ([Id], [VisitedLessonId], [QuestionId]) VALUES (9, 4, 9)
GO
INSERT [dbo].[StudentsQuestions] ([Id], [VisitedLessonId], [QuestionId]) VALUES (10, 4, 10)
GO
INSERT [dbo].[StudentsQuestions] ([Id], [VisitedLessonId], [QuestionId]) VALUES (11, 4, 11)
GO
INSERT [dbo].[StudentsQuestions] ([Id], [VisitedLessonId], [QuestionId]) VALUES (12, 5, 12)
GO
INSERT [dbo].[StudentsQuestions] ([Id], [VisitedLessonId], [QuestionId]) VALUES (13, 5, 13)
GO
INSERT [dbo].[StudentsQuestions] ([Id], [VisitedLessonId], [QuestionId]) VALUES (14, 6, 1)
GO
INSERT [dbo].[StudentsQuestions] ([Id], [VisitedLessonId], [QuestionId]) VALUES (15, 7, 6)
GO
INSERT [dbo].[StudentsQuestions] ([Id], [VisitedLessonId], [QuestionId]) VALUES (16, 7, 7)
GO
INSERT [dbo].[StudentsQuestions] ([Id], [VisitedLessonId], [QuestionId]) VALUES (17, 7, 8)
GO
INSERT [dbo].[StudentsQuestions] ([Id], [VisitedLessonId], [QuestionId]) VALUES (18, 8, 9)
GO
INSERT [dbo].[StudentsQuestions] ([Id], [VisitedLessonId], [QuestionId]) VALUES (19, 9, 9)
GO
INSERT [dbo].[StudentsQuestions] ([Id], [VisitedLessonId], [QuestionId]) VALUES (20, 9, 10)
GO
INSERT [dbo].[StudentsQuestions] ([Id], [VisitedLessonId], [QuestionId]) VALUES (21, 9, 11)
GO
SET IDENTITY_INSERT [dbo].[StudentsQuestions] OFF
GO
SET IDENTITY_INSERT [dbo].[Timecode] ON 
GO
INSERT [dbo].[Timecode] ([Id], [Title], [CreateDate], [TimecodeTime]) VALUES (1, N'О чем будет урок Изучаем переменные в C#', CAST(N'2022-01-24T00:41:52.8600000' AS DateTime2), CAST(N'2021-05-28T11:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Timecode] ([Id], [Title], [CreateDate], [TimecodeTime]) VALUES (2, N'Начало урока', CAST(N'2022-01-24T00:41:52.8600000' AS DateTime2), CAST(N'2021-05-28T11:10:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Timecode] ([Id], [Title], [CreateDate], [TimecodeTime]) VALUES (3, N'Домашнее задание', CAST(N'2022-01-24T00:41:52.8600000' AS DateTime2), CAST(N'2021-05-28T13:10:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Timecode] ([Id], [Title], [CreateDate], [TimecodeTime]) VALUES (4, N'О чем будет урок Изучаем массивы в C#', CAST(N'2022-01-24T00:41:52.8600000' AS DateTime2), CAST(N'2021-06-02T11:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Timecode] ([Id], [Title], [CreateDate], [TimecodeTime]) VALUES (5, N'Начало урока', CAST(N'2022-01-24T00:41:52.8600000' AS DateTime2), CAST(N'2021-06-02T11:10:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Timecode] ([Id], [Title], [CreateDate], [TimecodeTime]) VALUES (6, N'Домашнее задание', CAST(N'2022-01-24T00:41:52.8600000' AS DateTime2), CAST(N'2021-06-02T13:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Timecode] ([Id], [Title], [CreateDate], [TimecodeTime]) VALUES (7, N'О чем будет урок Изучаем функции в C#', CAST(N'2022-01-24T00:41:52.8600000' AS DateTime2), CAST(N'2021-06-09T11:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Timecode] ([Id], [Title], [CreateDate], [TimecodeTime]) VALUES (8, N'Начало урока', CAST(N'2022-01-24T00:41:52.8600000' AS DateTime2), CAST(N'2021-06-09T11:10:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Timecode] ([Id], [Title], [CreateDate], [TimecodeTime]) VALUES (9, N'Домашнее задание', CAST(N'2022-01-24T00:41:52.8600000' AS DateTime2), CAST(N'2021-06-09T13:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Timecode] ([Id], [Title], [CreateDate], [TimecodeTime]) VALUES (10, N'О чем будет урок Изучаем классы в C#', CAST(N'2022-01-24T00:41:52.8600000' AS DateTime2), CAST(N'2021-06-15T11:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Timecode] ([Id], [Title], [CreateDate], [TimecodeTime]) VALUES (11, N'Начало урока', CAST(N'2022-01-24T00:41:52.8600000' AS DateTime2), CAST(N'2021-06-15T11:10:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Timecode] ([Id], [Title], [CreateDate], [TimecodeTime]) VALUES (12, N'Домашнее задание', CAST(N'2022-01-24T00:41:52.8600000' AS DateTime2), CAST(N'2021-06-15T13:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Timecode] ([Id], [Title], [CreateDate], [TimecodeTime]) VALUES (13, N'О чем будет урок Изучаем интерфейсы в C#', CAST(N'2022-01-24T00:41:52.8600000' AS DateTime2), CAST(N'2021-06-23T11:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Timecode] ([Id], [Title], [CreateDate], [TimecodeTime]) VALUES (14, N'Начало урока', CAST(N'2022-01-24T00:41:52.8600000' AS DateTime2), CAST(N'2021-06-23T11:10:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Timecode] ([Id], [Title], [CreateDate], [TimecodeTime]) VALUES (15, N'Домашнее задание', CAST(N'2022-01-24T00:41:52.8600000' AS DateTime2), CAST(N'2021-06-23T13:00:00.0000000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[Timecode] OFF
GO
SET IDENTITY_INSERT [dbo].[VisitedLessons] ON 
GO
INSERT [dbo].[VisitedLessons] ([Id], [StudentsId], [LessonId], [CreatedDate]) VALUES (1, 1, 1, CAST(N'2022-01-23T17:31:44.1733333' AS DateTime2))
GO
INSERT [dbo].[VisitedLessons] ([Id], [StudentsId], [LessonId], [CreatedDate]) VALUES (2, 1, 2, CAST(N'2022-01-23T17:31:44.1733333' AS DateTime2))
GO
INSERT [dbo].[VisitedLessons] ([Id], [StudentsId], [LessonId], [CreatedDate]) VALUES (3, 1, 3, CAST(N'2022-01-23T17:31:44.1733333' AS DateTime2))
GO
INSERT [dbo].[VisitedLessons] ([Id], [StudentsId], [LessonId], [CreatedDate]) VALUES (4, 1, 4, CAST(N'2022-01-23T17:31:44.1733333' AS DateTime2))
GO
INSERT [dbo].[VisitedLessons] ([Id], [StudentsId], [LessonId], [CreatedDate]) VALUES (5, 1, 5, CAST(N'2022-01-23T17:31:44.1733333' AS DateTime2))
GO
INSERT [dbo].[VisitedLessons] ([Id], [StudentsId], [LessonId], [CreatedDate]) VALUES (6, 2, 1, CAST(N'2022-01-23T17:31:44.1733333' AS DateTime2))
GO
INSERT [dbo].[VisitedLessons] ([Id], [StudentsId], [LessonId], [CreatedDate]) VALUES (7, 2, 3, CAST(N'2022-01-23T17:31:44.1733333' AS DateTime2))
GO
INSERT [dbo].[VisitedLessons] ([Id], [StudentsId], [LessonId], [CreatedDate]) VALUES (8, 2, 4, CAST(N'2022-01-23T17:31:44.1733333' AS DateTime2))
GO
INSERT [dbo].[VisitedLessons] ([Id], [StudentsId], [LessonId], [CreatedDate]) VALUES (9, 3, 3, CAST(N'2022-01-23T17:31:44.1733333' AS DateTime2))
GO
INSERT [dbo].[VisitedLessons] ([Id], [StudentsId], [LessonId], [CreatedDate]) VALUES (10, 3, 4, CAST(N'2022-01-23T17:31:44.1733333' AS DateTime2))
GO
INSERT [dbo].[VisitedLessons] ([Id], [StudentsId], [LessonId], [CreatedDate]) VALUES (11, 4, 1, CAST(N'2022-01-23T17:31:44.1733333' AS DateTime2))
GO
INSERT [dbo].[VisitedLessons] ([Id], [StudentsId], [LessonId], [CreatedDate]) VALUES (12, 4, 2, CAST(N'2022-01-23T17:31:44.1733333' AS DateTime2))
GO
INSERT [dbo].[VisitedLessons] ([Id], [StudentsId], [LessonId], [CreatedDate]) VALUES (13, 4, 3, CAST(N'2022-01-23T17:31:44.1733333' AS DateTime2))
GO
INSERT [dbo].[VisitedLessons] ([Id], [StudentsId], [LessonId], [CreatedDate]) VALUES (14, 4, 4, CAST(N'2022-01-23T17:31:44.1733333' AS DateTime2))
GO
INSERT [dbo].[VisitedLessons] ([Id], [StudentsId], [LessonId], [CreatedDate]) VALUES (15, 4, 5, CAST(N'2022-01-23T17:31:44.1733333' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[VisitedLessons] OFF
GO
ALTER TABLE [dbo].[Lessons] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Question] ADD  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Students] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Timecode] ADD  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[VisitedLessons] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[LessonsTimecodes]  WITH CHECK ADD  CONSTRAINT [FK_LessondTimecodes_LessonId] FOREIGN KEY([LessonId])
REFERENCES [dbo].[Lessons] ([Id])
GO
ALTER TABLE [dbo].[LessonsTimecodes] CHECK CONSTRAINT [FK_LessondTimecodes_LessonId]
GO
ALTER TABLE [dbo].[LessonsTimecodes]  WITH CHECK ADD  CONSTRAINT [FK_LessondTimecodes_TimecodeId] FOREIGN KEY([TimecodeId])
REFERENCES [dbo].[Timecode] ([Id])
GO
ALTER TABLE [dbo].[LessonsTimecodes] CHECK CONSTRAINT [FK_LessondTimecodes_TimecodeId]
GO
ALTER TABLE [dbo].[StudentsQuestions]  WITH CHECK ADD  CONSTRAINT [FK_StudentsQuestion_QuestionId] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Question] ([Id])
GO
ALTER TABLE [dbo].[StudentsQuestions] CHECK CONSTRAINT [FK_StudentsQuestion_QuestionId]
GO
ALTER TABLE [dbo].[StudentsQuestions]  WITH CHECK ADD  CONSTRAINT [FK_StudentsQuestion_VisitedLessonId] FOREIGN KEY([VisitedLessonId])
REFERENCES [dbo].[VisitedLessons] ([Id])
GO
ALTER TABLE [dbo].[StudentsQuestions] CHECK CONSTRAINT [FK_StudentsQuestion_VisitedLessonId]
GO
ALTER TABLE [dbo].[VisitedLessons]  WITH CHECK ADD  CONSTRAINT [FK_VisitedLessons_Lessons] FOREIGN KEY([LessonId])
REFERENCES [dbo].[Lessons] ([Id])
GO
ALTER TABLE [dbo].[VisitedLessons] CHECK CONSTRAINT [FK_VisitedLessons_Lessons]
GO
ALTER TABLE [dbo].[VisitedLessons]  WITH CHECK ADD  CONSTRAINT [FK_VisitedLessons_Students] FOREIGN KEY([StudentsId])
REFERENCES [dbo].[Students] ([Id])
GO
ALTER TABLE [dbo].[VisitedLessons] CHECK CONSTRAINT [FK_VisitedLessons_Students]
GO
