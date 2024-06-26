USE [21.102-16-srs6]
GO
/****** Object:  Table [dbo].[AddEmployees]    Script Date: 06.06.2024 11:05:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddEmployees](
	[ID_newEmpl] [int] IDENTITY(1,1) NOT NULL,
	[ID_employees] [int] NOT NULL,
	[Firstname] [varchar](30) NOT NULL,
	[Surname] [varchar](20) NOT NULL,
	[Lastname] [varchar](30) NULL,
	[Post] [varchar](50) NOT NULL,
	[DataBirth] [date] NOT NULL,
	[Email] [varchar](50) NOT NULL,
 CONSTRAINT [PK_AddEmployees] PRIMARY KEY CLUSTERED 
(
	[ID_newEmpl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 06.06.2024 11:05:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[ID_employees] [int] IDENTITY(1,1) NOT NULL,
	[Firstname] [varchar](30) NOT NULL,
	[Surname] [varchar](20) NOT NULL,
	[Lastname] [varchar](30) NULL,
	[Post] [varchar](50) NOT NULL,
	[DataBirth] [date] NOT NULL,
	[Email] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[ID_employees] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 06.06.2024 11:05:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Role] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AddEmployees] ON 

INSERT [dbo].[AddEmployees] ([ID_newEmpl], [ID_employees], [Firstname], [Surname], [Lastname], [Post], [DataBirth], [Email]) VALUES (2, 1, N'Антонов ', N'Егор', N'Кириллович', N'Преподаватель иностранного языка', CAST(N'1993-05-18' AS Date), N'antonov@mail.ru')
INSERT [dbo].[AddEmployees] ([ID_newEmpl], [ID_employees], [Firstname], [Surname], [Lastname], [Post], [DataBirth], [Email]) VALUES (4, 2, N'Сидоров', N'Иван', N'Савельевич', N'Преподаватель физической культуры', CAST(N'1980-09-19' AS Date), N'savelevich@ya.ru')
INSERT [dbo].[AddEmployees] ([ID_newEmpl], [ID_employees], [Firstname], [Surname], [Lastname], [Post], [DataBirth], [Email]) VALUES (9, 3, N'Иванов', N'Иван', N'Антонович', N'Администратор', CAST(N'1977-10-12' AS Date), N'ivanov@mail.ru')
INSERT [dbo].[AddEmployees] ([ID_newEmpl], [ID_employees], [Firstname], [Surname], [Lastname], [Post], [DataBirth], [Email]) VALUES (10, 4, N'Шепелева', N'Юлия', N'Михайловна', N'Преподаватель русского языка', CAST(N'1988-04-29' AS Date), N'julia@gmail.com')
INSERT [dbo].[AddEmployees] ([ID_newEmpl], [ID_employees], [Firstname], [Surname], [Lastname], [Post], [DataBirth], [Email]) VALUES (11, 5, N'Сахарова', N'Алина', N'Андреевна', N'Преподаватель физики', CAST(N'1965-01-10' AS Date), N'andreevna@mail.ru')
INSERT [dbo].[AddEmployees] ([ID_newEmpl], [ID_employees], [Firstname], [Surname], [Lastname], [Post], [DataBirth], [Email]) VALUES (13, 6, N'Шепелева ', N'Юлия', N'Михайловна', N'Преподаватель русской литературы', CAST(N'1988-04-29' AS Date), N'julia@gmail.com')
INSERT [dbo].[AddEmployees] ([ID_newEmpl], [ID_employees], [Firstname], [Surname], [Lastname], [Post], [DataBirth], [Email]) VALUES (15, 7, N'Петров', N'Петр', N'Петрович', N'Администратор', CAST(N'1983-07-22' AS Date), N'petrov@ya.ru')
SET IDENTITY_INSERT [dbo].[AddEmployees] OFF
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([ID_employees], [Firstname], [Surname], [Lastname], [Post], [DataBirth], [Email]) VALUES (2, N'Плаксина', N'Вероника', N'Алексеевна', N'Преподаватель математики', CAST(N'1974-02-28' AS Date), N'veron@gmail.com')
INSERT [dbo].[Employees] ([ID_employees], [Firstname], [Surname], [Lastname], [Post], [DataBirth], [Email]) VALUES (3, N'Рихерт', N'Екатерина', N'Ивановна', N'Преподаватель начальных классов', CAST(N'1977-09-24' AS Date), N'katerin@mail.ru')
INSERT [dbo].[Employees] ([ID_employees], [Firstname], [Surname], [Lastname], [Post], [DataBirth], [Email]) VALUES (5, N'Терехова', N'Александра', N'Анатольевна', N'Преподаватель математики', CAST(N'1954-04-21' AS Date), N'terehova@ya.ru')
INSERT [dbo].[Employees] ([ID_employees], [Firstname], [Surname], [Lastname], [Post], [DataBirth], [Email]) VALUES (7, N'Любовь', N'Анастасия', N'Антоновна', N'Преподаватель технологии', CAST(N'1997-03-16' AS Date), N'nastash@ya.ru')
INSERT [dbo].[Employees] ([ID_employees], [Firstname], [Surname], [Lastname], [Post], [DataBirth], [Email]) VALUES (9, N'Симонова', N'Елена', N'Петровна', N'Преподаватель', CAST(N'1965-08-11' AS Date), N'elena@mail.ru')
INSERT [dbo].[Employees] ([ID_employees], [Firstname], [Surname], [Lastname], [Post], [DataBirth], [Email]) VALUES (11, N'Удовченко', N'Евгений', N'Геннадьевич', N'Администратор', CAST(N'1989-01-30' AS Date), N'evgeni@gmail.com')
INSERT [dbo].[Employees] ([ID_employees], [Firstname], [Surname], [Lastname], [Post], [DataBirth], [Email]) VALUES (12, N'Петрова', N'Мария', N'Михайловна', N'Администратор', CAST(N'1990-10-02' AS Date), N'maria@ya.ru')
INSERT [dbo].[Employees] ([ID_employees], [Firstname], [Surname], [Lastname], [Post], [DataBirth], [Email]) VALUES (13, N'Романова', N'Лилиана', N'Леонидовна', N'Администратор', CAST(N'1992-11-05' AS Date), N'liliya@mail.ru')
INSERT [dbo].[Employees] ([ID_employees], [Firstname], [Surname], [Lastname], [Post], [DataBirth], [Email]) VALUES (14, N'Аюбов', N'Сергей', N'Сергеевич', N'Администратор', CAST(N'1991-07-19' AS Date), N'ayubov@ya.ru')
INSERT [dbo].[Employees] ([ID_employees], [Firstname], [Surname], [Lastname], [Post], [DataBirth], [Email]) VALUES (18, N'Шишкин', N'Владимир', N'Владимирович', N'Администратор', CAST(N'1987-12-31' AS Date), N'vlad@gmail.com')
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [Username], [Password], [Role]) VALUES (1, N'user', N'1120', N'Администратор')
INSERT [dbo].[Users] ([ID], [Username], [Password], [Role]) VALUES (2, N'mobile', N'0000', N'Преподаватель')
INSERT [dbo].[Users] ([ID], [Username], [Password], [Role]) VALUES (3, N'admin', N'1234', N'Администратор')
INSERT [dbo].[Users] ([ID], [Username], [Password], [Role]) VALUES (4, N'petrov', N'passw0rd', N'Администратор')
INSERT [dbo].[Users] ([ID], [Username], [Password], [Role]) VALUES (5, N'julia', N'Moodle', N'Преподаватель')
INSERT [dbo].[Users] ([ID], [Username], [Password], [Role]) VALUES (6, N'Анастасия', N'nasty11', N'Преподаватель')
INSERT [dbo].[Users] ([ID], [Username], [Password], [Role]) VALUES (7, N'Мухина Елена', N'school', N'Преподаватель')
INSERT [dbo].[Users] ([ID], [Username], [Password], [Role]) VALUES (8, N'shishkin', N'1209', N'Администратор')
INSERT [dbo].[Users] ([ID], [Username], [Password], [Role]) VALUES (9, N'evgeni', N'пароль', N'Администратор')
INSERT [dbo].[Users] ([ID], [Username], [Password], [Role]) VALUES (10, N'Вероника', N'Passw0rd', N'Преподаватель')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
