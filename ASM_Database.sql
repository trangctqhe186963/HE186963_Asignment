
--USE [master]
--CREATE DATABASE CINEMA
USE CINEMA

GO
/****** Object:  Table [dbo].[Category]    Script Date: 2:01:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[description] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Genres] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Directors]    Script Date: 2:01:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Directors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [varchar](40) NOT NULL,
	[Male] [bit] NOT NULL,
	[Dob] [date] NOT NULL,
	[Nationality] [varchar](30) NOT NULL,
	[Description] [ntext] NOT NULL,
 CONSTRAINT [PK_Directors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Favorite]    Script Date: 2:01:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favorite](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[movie_id] [int] NOT NULL,
 CONSTRAINT [PK_Favorite] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LiveTV]    Script Date: 2:01:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LiveTV](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NULL,
	[description] [nvarchar](250) NULL,
	[image] [nvarchar](150) NULL,
	[link] [nvarchar](150) NULL,
 CONSTRAINT [PK_LiveTV] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[movie_genre]    Script Date: 2:01:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movie_genre](
	[id] [int] NOT NULL,
	[movie_id] [int] NOT NULL,
	[genre_id] [int] NOT NULL,
 CONSTRAINT [PK_movie_genre] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movie_Star]    Script Date:2:01:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movie_Star](
	[MovieId] [int] NOT NULL,
	[StarId] [int] NOT NULL,
 CONSTRAINT [PK_Movie_Star] PRIMARY KEY CLUSTERED 
(
	[MovieId] ASC,
	[StarId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movies]    Script Date: 2:01:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](250) NULL,
	[overview] [nvarchar](max) NULL,
	[poster] [nvarchar](250) NULL,
	[backdrop] [nvarchar](250) NULL,
	[vote_average] [float] NULL,
	[vote_count] [int] NULL,
	[views] [int] NULL,
	[runtime] [int] NULL,
	[release_date] [datetime] NULL,
	[create_at] [datetime] NULL,
	[video_link] [nvarchar](max) NULL,
	[quality] [nchar](10) NULL,
	[category] [nvarchar](250) NULL,
	[ProducerId] [int] NULL,
	[DirectorId] [int] NULL,
 CONSTRAINT [PK_Movies] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producers]    Script Date:  2:01:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Productions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stars]    Script Date: 2:01:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stars](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [varchar](100) NOT NULL,
	[Male] [bit] NULL,
	[Dob] [date] NULL,
	[Description] [text] NULL,
	[Nationality] [varchar](30) NULL,
 CONSTRAINT [PK_Stars] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2:01:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](255) NOT NULL,
	[avatar] [nvarchar](255) NULL,
 CONSTRAINT [PK_Users_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[views_count]    Script Date: 2:01:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[views_count](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NOT NULL,
	[visitor] [int] NOT NULL,
	[mid] [int] NULL,
 CONSTRAINT [PK_views_count] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[visitor_count]    Script Date:  2:01:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[visitor_count](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NOT NULL,
	[visitor] [int] NOT NULL,
 CONSTRAINT [PK_visitor_count] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Category] ([id], [name], [description]) VALUES (1, N'Adventure', N'Adventure')
INSERT [dbo].[Category] ([id], [name], [description]) VALUES (2, N'Fantasy', N'Fantasy')
INSERT [dbo].[Category] ([id], [name], [description]) VALUES (3, N'Animation', N'Animation')
INSERT [dbo].[Category] ([id], [name], [description]) VALUES (4, N'Drama', N'Drama')
INSERT [dbo].[Category] ([id], [name], [description]) VALUES (5, N'Horror', N'Horror')
INSERT [dbo].[Category] ([id], [name], [description]) VALUES (6, N'Action', N'Action')
INSERT [dbo].[Category] ([id], [name], [description]) VALUES (7, N'Comedy', N'Comedy')
INSERT [dbo].[Category] ([id], [name], [description]) VALUES (8, N'History', N'History')
INSERT [dbo].[Category] ([id], [name], [description]) VALUES (9, N'Western', N'Western')
INSERT [dbo].[Category] ([id], [name], [description]) VALUES (10, N'Thriller', N'Thriller')
INSERT [dbo].[Category] ([id], [name], [description]) VALUES (11, N'Crime', N'Crime')
INSERT [dbo].[Category] ([id], [name], [description]) VALUES (12, N'Documentary', N'Documentary')
INSERT [dbo].[Category] ([id], [name], [description]) VALUES (13, N'Science Fiction', N'Science Fiction')
INSERT [dbo].[Category] ([id], [name], [description]) VALUES (14, N'Mystery', N'Mystery')
INSERT [dbo].[Category] ([id], [name], [description]) VALUES (15, N'Music', N'Music')
INSERT [dbo].[Category] ([id], [name], [description]) VALUES (16, N'Romance', N'Romance')
INSERT [dbo].[Category] ([id], [name], [description]) VALUES (17, N'Family', N'Family')
INSERT [dbo].[Category] ([id], [name], [description]) VALUES (18, N'War', N'War')
GO
SET IDENTITY_INSERT [dbo].[Directors] ON 

INSERT [dbo].[Directors] ([Id], [FullName], [Male], [Dob], [Nationality], [Description]) VALUES (6, N'Trang', 1, CAST(N'2004-10-07' AS Date), N'JP', N'Longggggggggggggggggggggggggg')
INSERT [dbo].[Directors] ([Id], [FullName], [Male], [Dob], [Nationality], [Description]) VALUES (8, N'Chag', 1, CAST(N'2004-10-07' AS Date), N'VN', N'Noggggggggggggggggggggggg')
INSERT [dbo].[Directors] ([Id], [FullName], [Male], [Dob], [Nationality], [Description]) VALUES (9, N'Chag', 1, CAST(N'2004-10-07' AS Date), N'USA', N'Loggggggggggggggggggggg')
INSERT [dbo].[Directors] ([Id], [FullName], [Male], [Dob], [Nationality], [Description]) VALUES (10, N'mra', 1, CAST(N'2004-10-07' AS Date), N'vn', N'1')
SET IDENTITY_INSERT [dbo].[Directors] OFF
GO
SET IDENTITY_INSERT [dbo].[LiveTV] ON 

INSERT [dbo].[LiveTV] ([id], [title], [description], [image], [link]) VALUES (0, N'Australia Channel', N'Australian News Channel is an Australian privately held subsidiary of News Corp Australia which owns media properties operating in Australia and New Zealand.', N'https://tbivision.com/files/2014/10/Australia-channel.jpg', N'https://austchannel-live.akamaized.net/hls/live/2004729/austchannel-news/master.m3u8')
INSERT [dbo].[LiveTV] ([id], [title], [description], [image], [link]) VALUES (1, N'sfsafa', N'sdfsdfs', N'https://i.imgur.com/bXvnKGN.png', N'http://1223')
SET IDENTITY_INSERT [dbo].[LiveTV] OFF
GO
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (3, 3, 11)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (4, 3, 14)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (5, 3, 10)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (6, 4, 4)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (7, 4, 8)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (8, 5, 4)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (9, 5, 8)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (10, 5, 18)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (11, 6, 1)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (12, 6, 4)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (13, 6, 10)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (14, 7, 7)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (15, 7, 4)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (16, 7, 16)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (17, 8, 3)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (18, 8, 17)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (19, 8, 1)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (20, 8, 16)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (21, 9, 7)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (22, 9, 4)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (23, 10, 4)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (24, 10, 14)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (25, 10, 11)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (26, 11, 4)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (27, 11, 11)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (28, 11, 14)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (29, 12, 4)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (30, 12, 13)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (31, 12, 14)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (32, 13, 6)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (33, 13, 1)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (34, 13, 2)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (35, 14, 6)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (36, 14, 1)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (37, 14, 2)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (38, 14, 13)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (39, 15, 12)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (40, 16, 12)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (41, 17, 10)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (42, 17, 11)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (43, 17, 14)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (44, 18, 1)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (45, 18, 4)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (46, 18, 8)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (47, 19, 7)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (48, 19, 17)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (49, 20, 1)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (50, 20, 6)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (51, 20, 9)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (52, 21, 7)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (53, 21, 4)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (54, 21, 16)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (55, 22, 12)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (56, 23, 7)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (57, 23, 6)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (58, 23, 3)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (59, 23, 17)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (60, 23, 1)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (61, 24, 2)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (62, 24, 1)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (63, 24, 3)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (64, 24, 17)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (65, 25, 4)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (66, 25, 11)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (67, 26, 11)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (68, 26, 6)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (69, 26, 1)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (70, 27, 1)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (71, 27, 2)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (72, 27, 4)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (73, 28, 6)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (74, 28, 7)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (75, 28, 10)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (76, 28, 5)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (77, 29, 3)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (78, 29, 1)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (79, 29, 17)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (80, 29, 7)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (81, 30, 4)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (82, 30, 5)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (83, 30, 14)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (84, 31, 7)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (85, 31, 16)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (86, 32, 4)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (87, 33, 10)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (88, 33, 11)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (89, 33, 4)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (90, 33, 14)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (91, 34, 7)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (92, 34, 11)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (93, 34, 4)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (94, 35, 18)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (95, 35, 4)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (96, 35, 6)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (97, 36, 4)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (98, 36, 16)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (99, 36, 2)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (100, 37, 1)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (101, 37, 2)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (102, 37, 6)
GO
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (103, 38, 7)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (104, 38, 3)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (105, 38, 17)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (106, 38, 2)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (107, 39, 3)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (108, 39, 4)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (109, 39, 17)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (110, 40, 4)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (111, 40, 16)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (112, 41, 7)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (113, 41, 16)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (114, 42, 17)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (115, 42, 2)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (116, 42, 1)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (117, 43, 6)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (118, 43, 13)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (119, 43, 4)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (120, 44, 4)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (121, 45, 4)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (122, 45, 8)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (123, 45, 14)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (124, 46, 16)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (125, 46, 7)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (126, 47, 17)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (127, 47, 3)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (128, 47, 2)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (129, 47, 15)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (130, 47, 7)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (131, 47, 1)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (132, 48, 10)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (133, 48, 11)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (134, 48, 14)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (135, 49, 14)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (136, 49, 10)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (137, 49, 4)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (138, 50, 16)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (139, 50, 4)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (140, 50, 15)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (141, 51, 4)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (142, 51, 16)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (143, 51, 15)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (144, 52, 3)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (145, 52, 17)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (146, 53, 3)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (147, 53, 17)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (148, 53, 16)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (149, 54, 4)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (150, 54, 14)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (151, 54, 10)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (152, 55, 11)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (153, 55, 4)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (154, 56, 13)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (155, 56, 10)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (156, 56, 4)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (157, 57, 6)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (158, 57, 13)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (159, 58, 18)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (160, 58, 6)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (161, 58, 4)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (162, 59, 1)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (163, 59, 4)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (164, 60, 4)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (165, 60, 16)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (166, 60, 2)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (167, 61, 6)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (168, 61, 1)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (169, 61, 13)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (170, 62, 4)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (171, 62, 10)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (172, 62, 14)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (173, 63, 12)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (174, 64, 7)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (175, 65, 4)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (176, 65, 5)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (177, 65, 10)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (178, 66, 5)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (179, 66, 10)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (180, 67, 6)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (181, 67, 8)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (182, 67, 18)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (183, 68, 3)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (184, 68, 17)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (185, 69, 4)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (186, 69, 15)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (187, 69, 16)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (188, 70, 10)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (189, 70, 11)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (190, 70, 4)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (191, 70, 14)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (192, 71, 4)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (193, 71, 10)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (194, 71, 11)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (195, 71, 14)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (196, 72, 4)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (197, 72, 1)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (198, 72, 8)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (199, 73, 13)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (200, 73, 1)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (201, 73, 17)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (202, 73, 2)
GO
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (203, 74, 3)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (204, 74, 17)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (205, 74, 7)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (206, 74, 2)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (207, 74, 1)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (208, 75, 5)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (209, 76, 3)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (210, 76, 17)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (211, 76, 7)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (212, 76, 2)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (213, 75, 4)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (214, 2, 17)
INSERT [dbo].[movie_genre] ([id], [movie_id], [genre_id]) VALUES (215, 2, 18)
GO
INSERT [dbo].[Movie_Star] ([MovieId], [StarId]) VALUES (2, 1)
INSERT [dbo].[Movie_Star] ([MovieId], [StarId]) VALUES (2, 5)
INSERT [dbo].[Movie_Star] ([MovieId], [StarId]) VALUES (2, 6)
GO
SET IDENTITY_INSERT [dbo].[Movies] ON 

INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (2, N'Năm Bước Để Yêu (2019)', N'Năm Bước Để Yêu là câu chuyện tình nơi bệnh viên của Stella và Will. Cả hai mang chứng bệnh u xơ nang và hoại tử phổi. Họ không thể đến gần nhau hơn 6 bước chân (1,8 mét). Tuy thế, với những gì mà căn bệnh quái ác đã cướp đi của họ, cả hai không ngại việc trộm lại một bước chân để được gần nhau hơn.', N'images/poster/5buocdeyeu.png', N'images/backdrop/5buocdeyeu.png', 8.3, 4923, 11233, 145, CAST(N'2019-03-29T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), N'Năm Bước Để Yêu (2019)', NULL, N'Family,War,TV Movie', 3, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (3, N'Se7en', N'Hai viên cảnh sát William Somerset và David Mills phối hợp điều tra một vụ án phức tạp liên quan đến 7 điều cấm trong Kinh thánh. Hung thủ được dự đoán là do trước kia hắn lớn lên trong môi trường đạo nghiêm khắc nên tâm lí bất ổn và rồi lần lượt giết người dựa trên 7 tội lỗi trong Kinh thánh mà hắn gán cho mỗi người. 7 tội lỗi đó là: kiêu hãnh (Pride), ghen tị (Envy), ham ăn (Gluttony), sắc dục (Lust), tức giận (Wrath), tham lam (Greed) và lười biếng (Sloth). Án mạng đầu tiên là một tên béo phì với dòng chữ Gluttony viết bằng máu trên tường. Greed là án mạng xảy ra sau đó ở nơi làm của 1 tên luật sư. Một tên buôn ma túy tên Victor bị giết với tội lười biếng - Sloth. Lust là tội gán cho một cô gái điếm. Cuối cùng, Pride là 1 cô nàng quá mải mê chăm chút bề ngoài của mình.', N'images/poster/7toiloichetnguoi.png', N'images/backdrop/7toiloichetnguoi.png', 8.4, 17743, 53453, 144, CAST(N'1995-09-22T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Crime,Mystery,Thriller', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (4, N'12 Năm Nô Lệ', N'12 Năm Nô Lệ là một bộ phim truyền hình lịch sử Mỹ-Anh của đạo diễn Steve McQueen. Trong những năm trước khi cuộc nội chiến, Solomon Northup (Chiwetel Ejiofor), một người da đen tự do ở New York bị bắt cóc và bán làm nô lệ ở miền Nam. Chịu sự tàn ác của một nô lệ (Michael Fassbender) nhưng anh cũng tìm thấy lòng tốt bất ngờ từ những người khác trong khi cuộc đấu tranh liên tục để tồn tại và bảo vệ nhân phẩm của mình. Sau đó, trong năm thứ 12 của những thử thách đau lòng, một cơ hội gặp gỡ với một chế độ nô lệ từ Canada đã thay đổi cuộc sống của Solomon mãi mãi.', N'images/poster/12namnole.png', N'images/backdrop/12namnole.png', 8, 9932, 23101, 142, CAST(N'2014-05-23T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Drama,History', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (5, N'Thirty Seconds Over Tokyo', N'Sau trận Trân Châu Cảng, một trung úy trẻ rời bỏ người vợ mong đợi của mình để tình nguyện thực hiện một nhiệm vụ ném bom bí mật sẽ đưa cuộc chiến đến quê hương Nhật Bản.', N'images/poster/30giayquatokyo.png', N'images/backdrop/30giayquatokyo.png', 6.6, 39, 123, 142, CAST(N'1944-11-15T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Drama,History,War', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (6, N'127 Giờ Sinh Tử', N'127 Hours đưa người xem cùng trải qua hành trình gay cấn tự giải thoát của chàng trai ưa mạo hiểm Aron Ralston. Khi bị rơi vào một hố sâu và không có sự trợ giúp nào từ bên ngoài, anh đã tự mình cắt đứt phần dưới cánh tay bằng một con dao cùn để tự cứu lấy cuộc sống của mình. Dựa trên câu chuyện có thật, bộ phim thích hợp với khán giả ưa khám phá phiêu lưu, nơi họ sẽ tìm thấy sự can đảm, gan lì và giải quyết tình huống một cách thông minh của con người trước cái chết cận kề. Ngoài ra, 127 Hours do Danny Boyle dàn dựng với diễn xuất ấn tượng của Người đàn ông của năm James Franco, đã đem đến những thành công bất ngờ. Mang về đề cử Oscar Phim hay nhất và Nam diễn viên xuất sắc nhất.', N'images/poster/127gio.png', N'images/backdrop/127gio.png', 7.1004418037781836, 6564, 14217, 124, CAST(N'2011-01-28T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Adventure,Darama,Thriller', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (7, N'500 Ngày yêu', N'Sau khi bị cô gái mà anh tin là tri kỷ của mình đánh đổ, Tom Hansen lãng mạn vô vọng suy nghĩ về mối quan hệ của họ để cố gắng tìm ra nơi mọi thứ đã sai và làm thế nào anh ta có thể giành lại cô ấy.', N'images/poster/500ngayyeu.png', N'images/backdrop/500ngayyeu.png', 7.3, 8642, 12312, 123, CAST(N'2009-10-23T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Comedy,Drama,Romance', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (8, N'Aladdin Và Cây Đèn Thần1', N'Aladdin là bộ phim hoạt hình dựa theo câu chuyện trong Ngàn lẻ một đêm. Bộ phim kể về Aladdin, một thanh niên vô gia cư sống lang thang bên đường phố Agrabah. vô tình có được cây đèn thần kỳ diệu. Nhờ có vị thần đèn vui tính, Aladdin từ một kẻ mồ côi, lang thang đã có tất cả nhưng gì anh mơ ước như của cải và cô công chúa xinh đẹp. Nhưng một tên phù thủy gian ác đang âm mưu phá hoại cuộc sống của Aladdin bằng cách chiếm đoạt lại cây đèn thần này, và bắt công chúa người nah yêu đi. Aladdin sẽ phải làm gì đây?', N'images/poster/aladdinvacaydenthan.png', N'images/backdrop/aladdinvacaydenthan.png', 7.1, 20, 23122, 141, CAST(N'1992-11-25T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), N'Aladdin Và Cây Đèn Thần1', NULL, N'aladdinvacaydenthan.png', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (9, N'Local Hero', N'Một công ty dầu mỏ của Mỹ có kế hoạch cho một nhà máy lọc dầu mới và cử người đến Scotland để mua lại toàn bộ ngôi làng, nhưng mọi thứ không diễn ra như mong đợi.', N'images/poster/anhhungnhaben.png', N'images/backdrop/anhhungnhaben.png', 6.7, 257, 524, 145, CAST(N'1983-03-17T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Comedy,Drama', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (10, N'
Án Mạng Trên Chuyến Tàu Tốc Hành Phương Đông (2017)', N'Một kẻ giết người được phát hiện đã bị sát hại bởi 12 nhát dao khác nhau trên chuyến tàu tốc hành Phương Đông. Ai trong số 12 hành khách đã giết hắn? Và vì lý do gì? Thám tử Poirot ra tay và vụ án sẽ dần được làm sáng tỏ. Kết quả phá án của anh làm cho tất cả mọi người đều bất ngờ', N'images/poster/anmangtrenchuyentautochanhphuongdong.png', N'images/backdrop/anmangtrenchuyentautochanhphuongdong.png', 6.7, 8640, 18235, 143, CAST(N'2017-11-10T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Drama,Mystery,Crime', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (11, N'The Name of the Rose', NULL, N'images/poster/anmangtrongtuvien.png', N'images/backdrop/anmangtrongtuvien.png', 7.5, 2503, 4522, 123, CAST(N'1986-09-24T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Drama,Crime,Mystery', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (12, N'Ảo Thuật Gia Đấu Trí (2006)', N'The Prestige xoay quanh hai ảo thuật gia đại tài là Robert Angier (Hugh Jackman) và Alfred Borden (Christian Bale). Ban đầu họ là những người bạn, thế nhưng bởi giấc mơ tạo ra tiết mục hấp dẫn nhất quá lớn, khiến họ đã bị cuốn vào một cuộc cạnh tranh một mất một còn với kết cục bi thảm. Cũng mang đậm dấu ấn như bao phim khác của Christopher Nolan, The Prestige có kết cấu tương đối phức tạp. Cách kể chuyện không theo trình tự thời gian dẫn đến có đôi chỗ người xem sẽ cảm thấy mơ hồ, khó nắm bắt.', N'images/poster/aothuatgiadautri.png', N'images/backdrop/aothuatgiadautri.png', 8.2, 13412, 31122, 124, CAST(N'2006-11-10T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Drama,Science Fiction,Mystery', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (13, N'
Aquaman: Vương Quốc Bị Lãng Quên ', N'COMING', N'images/poster/aquamanvavuongquocdamat.png', N'images/backdrop/aquamanvavuongquocdamat.png', NULL, NULL, NULL, NULL, CAST(N'2023-12-25T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Action,Adventure,Fantasy', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (14, N'Avatar', N'Avatar là câu chuyện về người anh hùng “bất đắc dĩ” Jake Sully – một cựu sĩ quan thủy quân lục chiến bị liệt nửa thân. Người anh em sinh đôi của anh được chọn để tham gia vào chương trình cấy gien với người ngoài hành tinh Na’vi nhằm tạo ra một giống loài mới có thể hít thở không khí tại hành tinh Pandora. Giống người mới này được gọi là Avatar. Sau khi anh của Jake bị giết, Jake được chọn để thay thế anh mình và đã trở thành một Avatar, Jake có nhiệm vụ đi tìm hiểu và nghiên cứu hành tinh Pandora. Những thông tin mà anh thu thập được rất có giá trị cho chiến dịch xâm chiếm hành tinh xanh thứ hai này của loài người.', N'images/poster/avatar.png', N'images/backdrop/avatar.png', 7.5000949595472326, 26327, 52413, 141, CAST(N'2009-12-18T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Action,Adventure,Fantasy,Science Fiction', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (15, N'Won''t You Be My Neighbor?', N'Khám phá cuộc đời, bài học và di sản của người dẫn chương trình truyền hình trẻ em nổi tiếng Fred Rogers.', N'images/poster/banselamhangxomcuatoichu.png', N'images/backdrop/banselamhangxomcuatoichu.png', 8.1, 440, 1200, 134, CAST(N'2018-06-29T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Documentary', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (16, N'Capturing the Friedmans ', N'Phim tài liệu về Friedmans, một gia đình Do Thái có vẻ điển hình, thuộc tầng lớp trung lưu thượng lưu có thế giới ngay lập tức biến đổi khi người cha và đứa con trai út của ông bị bắt và bị buộc tội với những tội ác kinh hoàng và khủng khiếp.', N'images/poster/batgiunhafriedmans.png', N'images/backdrop/batgiunhafriedmans.png', 7.3, 269, 612, 134, CAST(N'2003-05-30T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Documentary', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (17, N'Người Dơi: Vạch Trần Sự Thật ', N'Tay giết người hàng loạt – The Ridder (Paul Dano) sẽ là kẻ thù nguy hiểm hàng đầu của Batman ở phần phim sắp tới. Tên xấu xa này bị cảnh sát James Gordon và đồng đội bắt giữ đã lâu. Thế nhưng, hóa ra việc nhốt gã sau song sắt chỉ khiến The Ridder phiền phức hơn với Đấng. Penguin (Colin Farrell) thể hiện là kẻ thủ ác thích trực tiếp tạo ra hỗn loạn, muốn đối đầu Batman hơn là chỉ đạo gián tiếp theo cách The Ridder thực hiện.', N'images/poster/batmanvachtransuthat.png', N'images/backdrop/batmanvachtransuthat.png', 7.7, 6507, 13123, 123, CAST(N'2024-03-04T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Thriller,Crime,Mystery', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (18, N'Bá tước Monte Cristo', N'Cuộc sống và kế hoạch kết hôn với chiếc Mercedes xinh đẹp của Edmond Dantés tan vỡ khi người bạn thân nhất của anh, Fernand, lừa dối anh. Sau 13 năm đau khổ trong tù, Dantés vượt ngục với sự giúp đỡ của một người bạn tù và lập mưu trả thù, thông minh ám chỉ mình vào giới quý tộc Pháp.', N'images/poster/batuocmontecristo.png', N'images/backdrop/batuocmontecristo.png', 7.7, 1457, 3112, 142, CAST(N'2004-01-23T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Adventure,Drama,History', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (19, N'Bẫy Phụ Huynh ', N'Cặp song sinh giống hệt nhau Hallie và Annie bị ly thân sau khi cha mẹ họ ly hôn. Nhiều năm sau, họ phát hiện ra nhau tại một trại hè và quyết định đổi chỗ để đoàn tụ cha mẹ.', N'images/poster/bayphuhuynh.png', N'images/backdrop/bayphuhuynh.png', 7.1, 3435, 7353, 142, CAST(N'1998-07-29T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Comedy,Family', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (20, N'Bảy Tay Súng Huyền Thoại ', N'Bartholomew Bogue, một ông trùm tư bản độc ác, ép buộc người dân thị trấn phải bán rẻ đất đai để hắn mở rộng quy mô mỏ khai thác vàng gần đó, dẫn đến những món nợ máu. Emma Cullen, một góa phụ có chồng bị Bogue sát hại, đã thay mặt người dân thị trấn đi tìm những người có khả năng bảo vệ họ khỏi sự đàn áp, khủng bố của Bogue cùng tay chân. Sau khi thuyết phục được Sam Chisolm, cô cùng gã thợ săn tiền thưởng chính quy thuyết phục thêm sáu tay súng khác. Họ cùng nhau hợp lực bảo vệ sự tồn vong của Rose Creek khi Bogue chuẩn bị quay lại.', N'images/poster/baytaysunghuyenthoai.png', N'images/backdrop/baytaysunghuyenthoai.png', 6.4, 5219, 12321, 129, CAST(N'2016-09-23T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Adventure,Action,Western', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (21, N'Bệnh Lạ', N'The Big Sick là bộ phim hài lãng mạn được đạo diễn bởi Micheal Showalter (Hello My Name is Doris). Phim dựa trên câu chuyện cuộc đời của diễn viên chính kiêm biên kịch Kumail Nanjiani và người hiện là vợ anh Emily Gordon. Gia đình Hồi giáo gốc Pakistan của Kumail không hài lòng về mối quan hệ giữa anh và Emily, vốn là một người Mỹ.

Tình cảnh của 2 người trở nên éo le hơn bao giờ hết khi Emily bị hành hạ bởi một căn bệnh bí hiểm trong khi Kumail lãnh trách nhiệm "đối đầu" với phụ huynh của cô', N'images/poster/benhla.png', N'images/backdrop/benhla.png', 7.4, 2095, 4112, 141, CAST(N'2017-03-30T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Comedy,Drama,Romance', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (22, N'Biên Đạo Múa Huyền Thoại ', N'Pina là bộ phim tài liệu của đạo diễn nổi tiếng người Đức Wim Wenders về nữ biên đạo múa huyền thoại Pina Bausch và thể loại múa Tanztheater do bà khai sinh. Một bộ phim vô cùng sống động, quyến rũ và độc đáo.', N'images/poster/biendaomuahuyenthoai.png', N'images/backdrop/biendaomuahuyenthoai.png', 7.5, 205, 512, 143, CAST(N'2011-02-24T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Documentary', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (23, N'Biệt Đội Big Hero 6', N'Câu chuyện diễn ra tại một thành phố hư cấu có tên là San Fransokyo (tên viết tắt của 2 thành phố San Francisco của Mỹ và Tokyo của Nhật Bản). Đó là nơi ở của cậu bé thần đồng Hiro Hamada cùng với một người bạn hết sức đặc biệt là Baymax. Baymax trông giống như một người tuyết màu trắng, đây là phát minh của Tadashi – anh trai Hiro. Baymax được tạo ra nhằm mục đích phục vụ cho sức khỏe của con người. Với sự thông minh của Hiro, cậu nhóc đã chế tạo ra các công cụ chiến đấu cho biệt đội siêu anh hùng với sự đồng hành của 5 thành viên còn lại là Baymax, Wasabi, Go Go, Fred và Honey Lemon. Họ cùng điều tra về kẻ giấu mặt “kabuki” đã đánh cắp phát minh “bọ siêu nhỏ” của Hiro và ngăn chặn 1 thảm họa đối với thành phố.', N'images/poster/bietdoibighero6.png', N'images/backdrop/bietdoibighero6.png', 7.7, 13966, 31231, 154, CAST(N'2014-11-06T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Comedy,Action,Animation,Family,Adventure', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (24, N'Bí Kíp Luyện Rồng ', N'Thiếu niên nhút nhát Hiccup phải chứng minh với bố và làng của mình rằng cậu vẫn có thể là chiến binh Viking – ngay cả khi cậu muốn kết bạn với rồng hơn là giết rồng.', N'images/poster/bikipluyenrong.png', N'images/backdrop/bikipluyenrong.png', 7.8003906596821455, 11263, 22132, 153, CAST(N'2010-04-23T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Fantasy,Adventure,Animation,Family', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (25, N'Bonnie and Clyde', N'Cô hầu bàn chán chường Bonnie Parker phải lòng một tên lừa đảo cũ tên là Clyde Barrow và họ cùng nhau bắt đầu một tội ác bạo lực khắp đất nước, ăn trộm xe hơi và cướp ngân hàng.', N'images/poster/bonnievaclyde.png', N'images/backdrop/bonnievaclyde.png', 7.5, 1281, 3123, 132, CAST(N'1967-08-14T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Drama,Crime', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (26, N'Bulletproof ', N'Phim hành động theo chân Aaron Bishop và Ronnie Pike; hai đặc vụ NCA hạ gục những tên tội phạm cứng rắn ở London.', N'images/poster/bulletproof.png', N'images/backdrop/bulletproof.png', 7.2848484848484851, 33, 123, 134, CAST(N'2018-01-01T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Crime,Action,Adventure', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (27, N'Cá Lớn', N'"Nếu cá vàng chỉ sống trong bát nước, chúng sẽ mãi mãi là cá nhỏ. Nhưng nếu bơi ra biển, kích thước của chúng sẽ tăng gấp hai đến ba lần", bài viết về cá vàng trong cuốn Bách khoa toàn thư chính là thông điệp mà Big Fish muốn nhắn gửi.

Bộ phim Big fish (Cá lớn) của đạo diễn Tim Burton đi sâu vào một tình cảm cha con cụ thể nhưng tiêu biểu cho hàng triệu tình cảm cha con khác. Người cha Edward Bloom được nhiều người yêu mến với những câu chuyện kể về những cuộc phiêu lưu của cuộc đời mình. Từ thị trấn nhỏ Alabama, chàng trai trẻ Edward thích ngao du đã bước chân vào thế giới sôi động và rộng lớn của thành phố… Trong những câu chuyện của người cha luôn có những nhân vật phi thường: người khổng lồ, phù thủy, người sói, những chiến công kỳ ảo…', N'images/poster/calon.png', N'images/backdrop/calon.png', 7.8, 6307, 14333, 143, CAST(N'2004-01-09T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Adventure,Fantasy,Drama', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (28, N'Cặp đôi sát ý', N'là bộ phim thuộc thể loại hành động, hài hước, kịch tính của Na Uy. Tác phẩm do Tommy Wirkola chịu trách nhiệm chỉ đạo, với sự tham gia của các diễn viên Noomi Rapace, Aksel Hennie và André Eriksen.

Trong tác phẩm, anh chàng đạo diễn Lars ( Aksel Hennie ) và nữ diễn viên đầy tham vọng Lisa ( Noomi Rapace ) là một cặp vợ chồng bị rối loạn chức năng, họ tới một căn nhà gỗ hẻo lánh, để giúp hâm nóng lại mối tình lãng mạn đang dần nguội lạnh của mình.', N'images/poster/capdoisaty.png', N'images/backdrop/capdoisaty.png', 6.7, 390, 1201, 134, CAST(N'2021-07-30T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Action,Comedy,Thriller,Horror', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (29, N'Câu Chuyện Đồ Chơi', N'Thế giới đồ chơi của cậu bé Andy bị xáo trộn khi có sự xuất hiện của cảnh sát vũ trụ Buzz Lightyear. Cảm thấy mình bị “thất sủng”, anh chàng cao bồi gỗ Woody xô xát với Buzz và cả hai bị rơi vào một cuộc phiêu lưu đầy mạo hiểm. Câu chuyện nói về thế giới đồ chơi của cậu bé...', N'images/poster/cauchuyendochoi.png', N'images/backdrop/cauchuyendochoi.png', 8, 15920, 52312, 143, CAST(N'1995-11-22T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Animation,Adventure,Family,Comedy', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (30, N'Câu Chuyện Hai Chị Em', N'Trong phim Câu Chuyện Hai Chị Em, sau quá trình điều trị chứng bệnh tâm lý từ khi mẹ mất, hai chị em Su Mi và Su Yeon trở về ngôi nhà nhỏ xinh đẹp của mình. Đón họ là cha đẻ và mẹ kế Iun Joo. Từ đây, những hiện tượng kì quái liên tiếp xảy ra. Tất cả dường như có liên quan tới cái chết đầy khuất tất của người mẹ quá cố, sự thật cuối cùng cũng được phơi bày. Trong một thập kỷ qua, không một bộ phim kinh dị nào của Hàn Quốc có thể vượt mặt ''A Tale of Two Sisters'' (Câu chuyện hai chị em)', N'images/poster/cauchuyenhaichiem.png', N'images/backdrop/cauchuyenhaichiem.png', 7.1, 909, 2001, 143, CAST(N'2003-06-13T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Drama,Horror,Mystery', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (31, N'The Philadelphia Story', N'Khi chồng cũ của một phụ nữ giàu có và một phóng viên báo lá cải xuất hiện ngay trước khi dự định tái hôn, cô ấy bắt đầu biết được sự thật về mình.', N'images/poster/cauchuyenvungphiladelphia.png', N'images/backdrop/cauchuyenvungphiladelphia.png', 7.7, 684, 1321, 141, CAST(N'1941-01-17T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Comedy,Romance', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (32, N'Cháy bỏng dưới ánh nắng mặt trời', NULL, N'images/poster/chaybongduoianhnangmattroi.png', N'images/backdrop/chaybongduoianhnangmattroi.png', 7.1, 128, 431, 121, CAST(N'1994-05-01T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Drama', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (33, N'Chết Hai Lần', N'Một người phụ nữ bị buộc tội giết chồng vì nghi ngờ anh ta vẫn còn sống; vì cô ấy đã bị xét xử về tội này, cô ấy sẽ không thể bị truy tố lại nếu phát hiện và giết anh ta.', N'images/poster/chethailan.png', N'images/backdrop/chethailan.png', 6.5, 1036, 2311, 142, CAST(N'1999-09-24T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Thriller,Crime,Drama,Mystery', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (34, N'Sàn Diễn Danh Vọng ', N'Sau thành công vang dội của "Moulin rouge", vào năm 2001, một năm sau đó, Hollywood đã kịp tung ra một bộ phim nhạc kịch mang tên Chicago. Dường như thể loại nhạc kịch đã hồi sinh sau một thời gian "ngủ yên" đến mấy thập kỉ. Phim có độ dài 113 phút được phát hành vào 2004. Chicago, những năm 20. Ai cũng muốn trở thành nổi tiếng nhưng ở một thành phố bon chen, xô bồ như Chicago thì cơ hội mở ra thật chật hẹp. Nàng Roxie Hart ( Renée Zellweger ) tuy đã cưới anh chàng cục mịch mà chung tình Amos ( John C. Reilly ) nhưng còn léng phéng với tên Fred Casely ( Dominic West ). Phim thuộc thể loại phim Tình Cảm. Cô luôn mơ tưởng một ngày nào đó sẽ trở nên nổi tiếng. Tên Fred luôn liến thoắng hứa giúp đỡ Roxie trên đường công danh nhưng một đêm, sau khi hú hí ...', N'images/poster/chicago.png', N'images/backdrop/chicago.png', 7.1, 2211, 4121, 121, CAST(N'2004-12-26T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Comedy,Crime,Drama', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (35, N'Chiến Mã', N'Sau bao tháng “găm hàng”, những hình ảnh mới nhất trong bộ phim War Horse của đạo diễn Steven Spielberg cuối cùng cũng đã được hé lộ. Đây là một trong những bộ phim được mong đợi nhất trong năm 2011 của đạo diễn từng 3 lần đoạt giải Oscar này. War Horse dựa trên tiểu thuyết best seller cùng tên của tác giả Michael Morpurgo. Lấy bối cảnh miền Tây nước Anh trong giai đoạn Thế chiến thứ nhất, War Horse là câu chuyện về chàng trai Albert cùng với chú ngựa Joey của mình. Cả hai là những người bạn thân thiết với nhau, nhưng rồi một ngày, Joey lại bị bán cho quân đội để phục vụ binh lính trên chiến trường. Không thể bỏ mặc bạn mình nên Albert cũng quyết định tham gia nhập ngũ dù với quyết tâm tìm lại Joey.Hành trình trong cuộc chiến của ...', N'images/poster/chienma.png', N'images/backdrop/chienma.png', 7.3, 2941, 6132, 122, CAST(N'2011-12-25T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'War,Drama,Action', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (36, N'Chồng Ảo', N'Chồng Ảo kể về Henry là chàng thủ thư mang trong mình một gen lạ. Gen này giúp Henry có thể du hành xuyên thời gian còn Clare là một cô gái, một nghệ sỹ có cuộc sống bình thường như bao người bình thường khác.Thế rồi số phận đưa đẩy, họ gặp nhau và yêu nhau say đắm. Mối tình của họ thật lãng mạn vượt qua cả thời gian, không gian, vượt qua cả sự sống và cái chết. Những phút lãng mạn, những phút đam mê và kỷ niệm còn mãi trong tâm trí họ.', N'images/poster/chongao.png', N'images/backdrop/chongao.png', 6.9, 2119, 5123, 153, CAST(N'2009-08-14T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Drama,Romance,Fantasy', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (37, N'Chúa Tể Của Những Chiếc Nhẫn: Hiệp Hội Nhẫn Thần ', N'Chiếc nhẫn chúa mang sức mạnh bá chủ vô tình được số phận đưa vào tay chàng hobbit trẻ tuổi Frodo. Khi thày phù thủy Gandalf phát hiện ra chiếc nhẫn này đã từng thuộc về bạo chúa Sauron, Frodo phải nhận nhiệm vụ mang nhẫn tới khe núi Hủy diệt để tiêu hủy nó. Không đơn độc trong hành trình gian khó, Frodo còn tiếp nhận những người đồng hành thuộc các tộc khác nhau: Legolas tộc Elf; Gimli tộc Dwarf; Aragon, Boromir và ba người bạn Hobbit trung thành...', N'images/poster/chuatenhungchiecnhan.png', N'images/backdrop/chuatenhungchiecnhan.png', 8.4, 21667, 121311, 123, CAST(N'2001-12-19T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Adventure,Fantasy,Action', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (38, N'Chú Chuột Đầu Bếp ', N'Remy là một chú chuột có lòng yêu thích ẩm thực và mong muốn được đến Paris để thực hiện ước mơ trở thành đầu bếp nổi tiếng. Tuy bị gia đình ngăn cản nhưng cuối cùng Remy cũng đặt chân được đến kinh đô ánh sáng và bắt đầu cuộc phiêu lưu của mình. Tại đây, Remy quen Linguini - cậu con trai của thần tượng đồng thời là bếp trưởng nổi tiếng của nhà hàng Gusteau. Remy và Linguini trở thành cặp bài trùng trong việc chế biến các món ăn mới lạ, đồng thời chứng mình quan niệm của Gusteau: "Ai cũng có thể nấu ăn ngon".', N'images/poster/chuchuotdaubep.png', N'images/backdrop/chuchuotdaubep.png', 7.8, 14446, 51201, 123, CAST(N'2007-06-29T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Comedy,Animation,Family,Fantasy', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (39, N'Bambi', NULL, N'images/poster/chunaibambi.png', N'images/backdrop/chunaibambi.png', 7, 5120, 12333, 143, CAST(N'1942-08-21T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Animation,Drama,Family', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (40, N'Chuộc Lại Lỗi Lầm', N'Dựa trên tác phẩm từng đoạt giải Booker Prize của nhà văn Ian McEwan, Atonement kể một câu chuyện xảy ra vào những năm 30 của thế kỷ trước khi một cô bé 13 tuổi vì hiểu lầm nhỏ và tính ghen tị trẻ con đã chia cắt tình yêu của chị gái mình và con trai người quản gia, chàng trai đó đã bị vu oan và bị đày đi quân dịch. Trải qua suốt cuộc chiến tranh thế giới thứ II với bao biến cố thăng trầm, cô bé 13 tuổi ngày nào đã trở thành 1 nữ y tá quân y trẻ tuổi vẫn tự vấn lương tâm vì lỗi lầm xưa. Và rồi, bằng những hành động dũng cảm, cô cũng đã tìm được sự thanh thản cho tâm hồn cũng như hiểu được sức mạnh của một tình yêu vĩnh cửu cho đến cuối đời....', N'images/poster/chuocloi.png', N'images/backdrop/chuocloi.png', 7.7, 3512, 10231, 143, CAST(N'2007-09-07T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Drama,Romance', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (41, N'Gặp Gỡ Thông Gia', N'Một anh chàng muốn xin bố của bạn gái chúc phúc cho hôn lễ của họ, trong khi ông bố là cựu nhân viên CIA chỉ nhăm nhe gắn máy phát hiện nói dối lên anh chàng.', N'images/poster/churetrinhlang.png', N'images/backdrop/churetrinhlang.png', 6.7, 5123, 14120, 123, CAST(N'2000-10-06T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Comedy,Romance', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (42, N'Dumbo: Chú Voi Biết Bay', N'Dumbo: Chú voi con có đôi tai ngoại cỡ và biến nó thành cây hài cho đoàn xiếc. Tuy nhiên khi họ phát hiện ra chú voi Dumbo có thể bay, cả đoàn xiếc đã gây dựng lại danh tiếng và thu hút sự chú ý của V.A. Vandevere – một doanh nhân thành đạt có sở thích sưu tầm động vật lạ cho công viên giải trí Dreamland của hắn. Dumbo vút bay đến một tầm cao mới cùng với nghệ sĩ xiếc Colette Marchant cho đến khi Holt phát hiện ra những bí ẩn đen tối đằng sau vẻ ngoài hào nhoáng của Dreamland.', N'images/poster/chuvoibietbay.png', N'images/backdrop/chuvoibietbay.png', 6.7, 3852, 10233, 124, CAST(N'2019-03-29T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Family,Fantasy,Adventure', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (43, N'Chuyến Tàu Băng Giá', N'Lấy bối cảnh năm 2031, sau thất bại của nỗ lực khắc phục sự nóng lên của toàn cầu, Trái Đất trở về với Kỷ Băng Hà khi hoàn toàn bị bao phủ bởi băng tuyết và thế giới loài người đứng trước nguy cơ bị xóa sổ. Tất cả những người may mắn sống sót đều ở trên con tàu mang tên Snowpiercer. Con tàu đi tới khắp nơi trên Trái Đất và giống như một xã hội thu nhỏ, chứa đựng những mâu thuẫn và phân biệt giàu nghèo, giai cấp giữa những người đang phải cùng nhau đương đầu với cái chết. Quá mệt mỏi trước sự áp bức, bất công, dưới sự lãnh đạo của Curtis (Chris Evans thủ vai), những người nghèo sống ở những toa sau của con tàu đã nổi dậy tiến hành cuộc cách mạng lật đổ tầng lớp thượng lưu ở những toa trước. Tuy nhiên, cuộc nổi dậy của họ đối mặt với rất nhiều nhiều khó khăn, thử thách...', N'images/poster/chuyentaubanggia.png', N'images/backdrop/chuyentaubanggia.png', 6.9, 8343, 51200, 159, CAST(N'2013-08-01T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Action,Science Fiction,Drama', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (44, N'Chuyến Tàu Mang Tên Dục Vọng ', N'Blanche DuBois tới ở nhờ nhà em gái là Stella Kowalski và chồng là Stanley Kowalski. Blanche DuBois, một giáo viên từ các bang miền Nam, vừa bị đổ vỡ gia đình và bán đấu giá tài sản, là một "tiểu thư lãng mạn kiểu Pháp" điển hình. Trước khi Blanche tới, Stanley và Stella sống một cuộc sống bình thường trong khu phố lao động. Sự xuất hiện của Blanche làm đảo lộn cuộc sống của họ. Cô và Stanley là hai con người không thể hòa hợp, và Blanche cũng không thích hợp với cuộc sống ở khu phố này.', N'images/poster/chuyentaumangtenducvong.png', N'images/backdrop/chuyentaumangtenducvong.png', 7.7, 1105, 4444, 123, CAST(N'1951-09-18T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Drama', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (45, N'Amistad', NULL, N'images/poster/chuyentaunole.png', N'images/backdrop/chuyentaunole.png', 7, 1064, 3121, 154, CAST(N'1997-12-25T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Drama,History,Mystery', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (46, N'Câu Chuyện Tình của Mary', N'Ted (Ben Stiller) là một chàng trai rụt rè và buồn tẻ ở trường trung học. Vào ngày cuối cùng của năm học, Ted dự định mời Mary (Cameron Diaz), một trong những cô gái xinh đẹp và nổi tiếng nhất trường đi Prom và anh đã thành công. Song Ted đã không bao giờ có mặt ở kỳ Prom năm đó vì một tai nạn hi hữu và buồn cười Mười ba năm sau, Ted nhận ra rằng mình vẫn còn yêu Mary, thông qua một người bạn Woogie (Chris Elliott), anh tìm đến một thám tử tư (Matt Dillon) để truy tìm dấu vết Mary. Tay thám tử sau cùng phát hiện ra rằng mình cũng yêu Mary nên hắn đưa cho Ted vài thông tin giả để Ted từ bỏ hy vọng.Tuy nhiên sau cùng Ted cũng tìm đuợc con đuờng để đến với Mary trong một kết thúc buồn cười.', N'images/poster/chuyentinhmary.png', N'images/backdrop/chuyentinhmary.png', 6.6, 4283, 10222, 123, CAST(N'1998-07-15T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Romance,Comedy', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (47, N'Coco: Hội Ngộ Diệu Kỳ', N'Coco sẽ kể về hành trình của Miguel, một cậu bé say mê những giai điệu nhưng lại sinh trưởng trong một gia đình cấm đoán sự xuất hiện của âm nhạc. Miguel luôn nung nấu giấc mơ trở thành một nhạc sĩ nổi tiếng giống như thần tượng Ernesto de la Cruz. Tuy nhiên, truyền thống ngang trái của gia đình đã khiến cậu không thể chứng minh tài năng của mình. Rũ bỏ thực tế phũ phàng, Miguel tìm thấy chính mình ở Vùng Đất Linh Hồn (Land of the Dead) tuyệt đẹp và đầy sắc màu sau một chuỗi sự kiện huyền bí. Trong hành trình khám phá vùng đất mới, Miguel gặp gỡ “chuyên gia xảo quyệt” Hector. Cả hai cùng tạo nên chuyến phiêu lưu kỳ diệu để lật mở những bí mật chưa được tiết lộ về lịch sử của gia đình Miguel.', N'images/poster/coco.png', N'images/backdrop/coco.png', 8.2, 16266, 51211, 153, CAST(N'2017-11-22T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Family,Animation,Fantasy,Music,Comedy,Adventure', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (48, N'Cô Gái Có Hình Xăm Rồng', N'Cô Gái Có Hình Xăm Rồng được chuyển thể từ tiểu thuyết nổi tiếng cùng tên từ bộ ba tiểu thuyết trinh thám Thiên Niên Kỷ (Millennium) của nhà văn Thụy Điển Stieg Larsson. Câu chuyện xảy ra tại tòa soạn Millennium - tờ báo viết bài với tiêu chí chống tham nhũng, bất công và chiến đấu bảo vệ cho công bằng xã hội.', N'images/poster/cogaicohinhxamrong.png', N'images/backdrop/cogaicohinhxamrong.png', 7.3004499250124981, 6001, 50100, 123, CAST(N'2011-12-14T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Thriller,Crime,Mystery', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (49, N'Cô Gái Mất Tích', N'Sau sự mất tích kỳ lạ của người vợ trẻ vào dịp kỷ niệm 5 năm ngày cưới của cô, người chồng trở thành tâm điểm của báo giới cùng hàng loạt những nghi ngờ và giả thuyết được tô vẽ xung quanh vụ án. Những bí ẩn dần được hé lộ đằng sau bức tranh gia đình hạnh phúc của cả hai. Cảnh sát sẽ phát hiện ra điều gì? Người vợ còn sống hay đã chết? Hung thủ thật sự có phải là người chồng gắn bó với cô?', N'images/poster/cogaimattich.png', N'images/backdrop/cogaimattich.png', 7.9, 16290, 35012, 142, CAST(N'2014-10-02T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Mystery,Thriller,Drama', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (50, N'Yểu Điệu Thục Nữ', N'Tác phẩm điện ảnh My Fair Lady - Yểu Điệu Thục Nữ được quay dưới sự chỉ đạo của đạo diễn George Cukor. Bộ phim âm nhạc này được công chiếu ra mắt khán giả vào năm 1964. Nội dung của bộ phim kể về cô gái xinh đẹp nhưng hoàn cảnh gia đình lại nghèo khổ, Eliza Doolittle (do Audrey Hepburn thủ vai). Cô làm nghề bán hoa cở Cockney. Một ngày vô tình cô gặp được một giáo sư ngôn ngữ học là Henry Higgins (do Rex Harrison thủ vai). Lần đầu tiên gặp gỡ, nhìn dáng vẻ nhem nhuốc cùng giọng nói vô cùng khó nghe, Henry đã phải thốt lên rằng một cô gái như Eliza không có quyền được sống. Vì vậy mà ông quyết định sẽ dạy dỗ Eliza để biến cô trở thành một vị tiểu thư. Nhưng họ không thể ngờ được rằng sợi dây tình cảm giữa hai người ...', N'images/poster/cogaimongmo.png', N'images/backdrop/cogaimongmo.png', 7.6, 1050, 3000, 123, CAST(N'1964-10-21T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Romance,Drama,Music', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (51, N'Cối Xay Gió Đỏ', N'Nhân vật nữ chính là Satine (Nicole Kidman) - một cô kỹ nữ, và nam chính là Christian (Ewan McGregor) - một nhà văn mới vào nghề. Christian được một hội nhạc kịch nghèo bảo trợ, đưa vào Moulin Rouge - một nhà chứa nổi tiếng để tìm cảm hứng viết văn thơ, kịch bản. Satine là kỹ nữ nổi tiếng xinh đẹp và nhiều người ham muốn nhất Moulin Rouge. Do sự sắp đặt của đám nghệ sĩ nghèo, Christian đã vào phòng của Satine để gặp mặt, lấy cảm hứng. Satine thì nhầm tưởng anh là Công tước nên ra sức gợi tình để thỏa mãn dục vọng cho khách. Nhưng Christian rất sợ và chỉ dám làm thơ.Ngài Công tước đột nhiên xuất hiện, Satine mới biết mình nhầm. Cô đã cố gắng thu hút sự chú ý của Công tước để cho Christian thoát ra. Nhưng cuối cùng không thành. ...', N'images/poster/coixaygiodo.png', N'images/backdrop/coixaygiodo.png', 7.6, 3945, 10020, 142, CAST(N'2001-05-24T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Drama,Romance,Music', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (52, N'Người Đẹp Tóc Mây', N'Rapunzel - nàng công chúa có mái tóc dài thần kì bị nhốt suốt 18 năm trời trên ngọn tháp cao chót vót bởi một mụ phù thủy. Mọi chuyện trở nên kịch tính khi tên trộm tinh quái và quyến rũ nhất vương quốc - Flynn Rider - trong cuộc chạy trốn khỏi binh lính triều đình, tình cờ rơi vào ngọn tháp của Rapunzel. Từ đây cô công chúa thơ dại đã bắt đầu chuyến phiêu lưu trốn chạy khỏi ngọn tháp u tối để tìm lại cuộc sống đích thực của chính mình.', N'images/poster/congchuatocmay.png', N'images/backdrop/congchuatocmay.png', 7.6, 9729, 32122, 132, CAST(N'2010-11-24T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Animation,Family', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (53, N'Công Chúa và Chàng Ếch', N'Tiana là một cô gái chăm chỉ, tự lập, và quyến rũ. Cô không có thời gian dành cho sự mơ mộng lãng mạn, mà thay vào đó là một niềm đam mê nấu nướng và cô mong muốn sẽ trở thành một người quản lý nhà hàng thành đạt, kế thừa từ người cha mình. Nhưng dù cho có cần cù và siêng năng đến mấy thì những trở ngại vẫn khiến cho mong ước đó của Tiana còn khá xa vời.', N'images/poster/congchuavachangech.png', N'images/backdrop/congchuavachangech.png', 7.2, 4596, 12333, 153, CAST(N'2009-12-10T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Animation,Family,Romance', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (54, N'Gosford Park', NULL, N'images/poster/congviengosford.png', N'images/backdrop/congviengosford.png', 6.9, 894, 1232, 123, CAST(N'2004-01-18T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Drama,Mystery,Thriller', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (55, N'Boys Don''t Cry ', NULL, N'images/poster/contraikhongkhoc.png', N'images/backdrop/contraikhongkhoc.png', 7.4, 1098, 2333, 143, CAST(N'1999-09-02T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Crime,Drama', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (56, N'Cuộc Chiến Không Trọng Lực', N'Tiến sĩ Ryan Stone, một kỹ sư y tế xuất sắc trong nhiệm vụ Tàu con thoi đầu tiên của cô, cùng với phi hành gia kỳ cựu Matt Kowalsky chỉ huy chuyến bay cuối cùng trước khi nghỉ hưu. Nhưng trên một chuyến đi bộ ngoài không gian dường như thường lệ, thảm họa đã ập đến. Tàu con thoi bị phá hủy, khiến Stone và Kowalsky hoàn toàn bị trói buộc vào nhau và rơi vào bóng tối của không gian. Sự im lặng chói tai cho họ biết họ đã mất bất kỳ liên kết nào với Trái đất và bất kỳ cơ hội giải cứu nào. Khi nỗi sợ hãi chuyển sang hoảng sợ, mỗi luồng không khí sẽ ăn hết lượng oxy ít ỏi còn lại. Nhưng cách duy nhất về nhà có thể là đi xa hơn vào khoảng không gian rộng lớn đáng sợ.', N'images/poster/cuocchienkhongtrongluc.png', N'images/backdrop/cuocchienkhongtrongluc.png', 7.2, 13680, 40123, 123, CAST(N'2013-10-11T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Science Fiction,Thriller,Drama', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (57, N'Cuộc Chiến Luân Hồi', N'Trung tá Bill Cage (do nam diễn viên gạo cội Tom Cruise thủ vai) vốn là một sĩ quan chưa bao giờ tham gia chiến trận thực sự. Nhưng, anh đã bị buộc thực hiện một nhiệm vụ chẳng khác nào tìm đường chết, khi chủng tộc người ngoài hành tinh xâm lược trái đất bằng những cuộc tàn sát đẫm máu với những vũ khí huỷ diệt và chẳng có một lực lược nào trên trái đất có thể chống lại chúng. Cũng từ đây, vị trung tá trẻ tuổi Bill Cage rơi vào vòng tròn không hồi kết: chiến đấu- chết- sống lại- chiến đấu…Mọi thứ dường như rơi vào bế tắc. Chính vào lúc người trung tá gần với tuyệt vọng thì anh đã phát hiện ra rằng, sau mỗi trận đánh anh có thể hiểu rõ đối thủ hơn và học được những kỹ năng chiến đấu tốt hơn. Đồng hành cùng anh là Rita Vrataski (do diễn viên Emily Blunt thủ vai) chiến binh siêu hạng của lực lượng đặc nhiệm. Họ đồng hành với nhau, cùng khám phá ra những bí mật và kỹ năng mới để chiến đấu với bọn người xâm lược.', N'images/poster/cuocchienluanhoi.png', N'images/backdrop/cuocchienluanhoi.png', 7.6, 12012, 26131, 123, CAST(N'2014-06-06T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Action,Science Fiction', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (58, N'Cuộc Di Tản Dunkirk ', N'Năm 1940, nước Anh và các đồng minh đối diện với một thảm họa quân sự khổng lồ. 400.000 quân của họ sập bẫy trong tuyệt vọng tại Dunkirk, Pháp. Họ đứng trước nguy cơ bị phát xít Đức xóa sổ hoàn toàn… Lúc này, thủ tướng Anh - Winston Churchill đã phát động chiến dịch Dynamo lịch sử kéo dài từ 26/5 đến 4/6/1940. Khi những người lính “Họ không thể về nhà. Quê nhà sẽ đến tìm họ.” Hơn 68.000 quân viễn chinh Anh đã chết hoặc bị bắt làm tù binh nhưng đã có 218.000 lính Anh, 120.000 lính Pháp và Bỉ được giải cứu trong chiến dịch này.', N'images/poster/cuocditandunkirk.png', N'images/backdrop/cuocditandunkirk.png', 7.5, 14471, 41232, 154, CAST(N'2017-07-21T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'War,Action,Drama', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (59, N'Cuộc Đời Của Pi', N'Nói sơ qua về nội dung, Life of Pi kể về cuộc đời của một chàng trai xức Cà ri lên Pi Patel (thực ra tên đầy đủ dài lắm, tên của một hồ bơi) trong một chuyến hải trình đến Canada cùng gia đình không may bị tàu chìm và chỉ mình anh sống sót. Lênh đênh trên biển vượt Thái Bình Dương để sống sót, Pi phải tìm cách cùng làm bạn với một con hổ Bengal có tên Richard Parker (bố của Peter Parker – Người Nhện). Pi và con hổ là mối quan hệ kỳ lạ, sự đấu tranh sinh tồn lênh đênh giữa biển trong 227 ngày - làm sao để sống, làm sao để có thức ăn và nước uống, làm sao không bị con hổ ăn thịt, và làm sao để không chết bởi sự cô đơn. Cuộc đời của Pi còn là câu chuyện về tôn giáo, bởi Pi - cậu bé 16 tuổi này - có một tinh thần mộ ...', N'images/poster/cuocdoicuapi.png', N'images/backdrop/cuocdoicuapi.png', 7.4, 11831, 32221, 123, CAST(N'2012-11-21T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Adventure,Drama', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (60, N'Đã Đến Lúc', N'Vào bữa tiệc trước thềm năm mới, Tim (Domhnall Gleeson) được chính cha mình “giới thiệu” về khả năng “truyền thống” của gia đình: có thể đi xuyên qua thời gian trở về quá khứ. Ngỡ ngàng và thích thú, Tim quyết định phải thay đổi cuộc đời mình khiến nó tốt đẹp hơn bằng việc đi tìm cho bản thân một cô bạn gái… Kết quả là, cậu đã thấy mục tiêu nhưng liệu rằng, những khả năng thiên phú của Tim có thể giúp cậu dễ dàng chinh phục được nàng hay không?', N'images/poster/dadenluc.png', N'images/backdrop/dadenluc.png', 7.9, 7157, 21113, 111, CAST(N'2013-09-27T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Drama,Romance,Fantasy', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (61, N'Captain Marvel: Đại Uý Marvel', N'Từ xa xưa, hai tộc Kree và Skrulls đã xảy ra cuộc chiến tranh kéo dài rất lâu, gọi là Chiến tranh Kree–Skrull. Với trình độ kĩ thuật phát triển, người Kree dần áp đảo trong cuộc chiến và khiến cho số lượng người Skrulls bị giảm đi đáng kể. Năm 1995, Vers thức giấc tại Hala, quê hương của Đế chế Kree. Cô luôn bị ác mộng về một vụ rơi máy bay, và về một người phụ nữ bị sát hại trước mặt mình. Trí nhớ của cô dừng lại tại thời điểm cô đạt được sức mạnh của mình. Cô được Yon-Rogg, thủ lĩnh của Starforce huấn luyện để trở thành thành viên của đội. Mặc dù Yon-Rogg tin rằng cô đã sẵn sàng nhưng Supreme Intelligence, một trí tuệ nhân tạo có vai trò điều hành Đế chế Kree lại không cho cô gia nhập đội, nơi mà có Minn-Erva - một xạ thủ bắn tỉa và các cộng sự Korath, Bron-Char và Att-Lass.', N'images/poster/daiuymarvel.png', N'images/backdrop/daiuymarvel.png', 6.9, 13548, 33122, 133, CAST(N'2019-03-08T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Action,Adventure,Science Fiction', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (62, N'Đảo Kinh Hoàng ', N'Vào năm 1954, hai phó nghị sĩ Teddy Daniels và Chuck Aule được giao trọng trách tìm hiểu vụ mất tích của phụ nữ đã giết chết 3 đứa con, Rachel Solando – bệnh nhân của bệnh viện dành cho tội phạm tâm thần Ashecliffe trên đảo Shutter - Boston.', N'images/poster/daokinhhoang.png', N'images/backdrop/daokinhhoang.png', 8.2, 20606, 67777, 122, CAST(N'2010-02-18T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Drama,Thriller,Mystery', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (63, N'Jagal', NULL, N'images/poster/daoluatgietnguoi.png', N'images/backdrop/daoluatgietnguoi.png', 7.7, 559, 2221, 143, CAST(N'2012-11-08T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Documentary', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (64, N'Đêm Trước Lễ Tốt Nghiệp', N'Phim giới thiệu người xem về đôi bạn thân Molly và Amy. Họ đã dành trọn những năm tháng cấp 3 để học hành thật giỏi, vì mục tiêu lọt vào được những trường đại học danh giá nhất nước Mỹ. Vào ngày cuối cùng của năm học, Molly chợt phát hiện ra các bạn học cùng lớp mình cũng đã được vào các trường đại học danh giá kia, cho dù họ đã dành phần lớn thời gian để ăn chơi và tiệc tùng. Quá tức giận vì đã bỏ lỡ những buổi tiệc vui vẻ đó, Molly đã thuyết phục Amy cùng nhau dành trọn đêm còn lại trước ngày lễ tốt nghiệp, chỉ để tiệc tùng một lần cho biết. Liệu cả hai “mọt sách” này sẽ có thể tiệc tùng một cách trọn vẹn và an toàn nhất?', N'images/poster/demtruocletotnghiep.png', N'images/backdrop/demtruocletotnghiep.png', 7, 2171, 6212, 115, CAST(N'2019-05-24T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Comedy', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (65, N'Tâm Thần Hoảng Loạn', N'Tâm Thần Hoảng Loạn: 1 người đàn bà trẻ, Marion Crane , đánh cắp 1 chiếc valise chứa 40 ngàn dollars mà chủ của cô yêu cầu phải gửi nhà băng. Trong lúc bỏ trốn, đêm đó nàng ta nghỉ chân tại 1 motel ít người lui tới và được tiếp đón bởi Norman Bates (Antony Perkins). Theo lời anh ta kể thì anh đang sống tại 1 ngôi nhà gần bên với bà mẹ già tàn phế có tính cách rất khó chịu. Tối hôm ấy, trong lúc tắm để chuẩn bị lên giường ngủ, Marion bất thình lình bị bà già đó túm lấy và đâm điên loạn vào người cô nàng.Norman xuất hiện, giấu xác Marion cùng với chiếc xe hơi (với cả 40 ngàn dollars trong rương) dưới 1 cái hồ gần motel. Cô em gái Marion, Leila và Sam(tình nhân của Marion), cùng với 1 viên thám tử của 1 hãng bảo hiểm lên đường tìm kiếm cô nàng, hy vọng lấy ...', N'images/poster/diadon.png', N'images/backdrop/diadon.png', 8.4, 8498, 33221, 111, CAST(N'1960-09-08T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Drama,Horror,Thriller', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (66, N'Điện Thoại Đen ', N'Finney Shaw, một cậu bé 13 tuổi nhút nhát nhưng thông minh, bị một kẻ giết người tàn bạo bắt cóc và bị mắc kẹt trong một tầng hầm cách âm, nơi tiếng la hét không được sử dụng nhiều. Khi một chiếc điện thoại bị ngắt kết nối trên tường bắt đầu đổ chuông, Finney phát hiện ra rằng anh có thể nghe thấy giọng nói của những nạn nhân trước đây của kẻ giết người. Và họ đã cố gắng đảm bảo rằng những gì đã xảy ra với họ không xảy ra với Finney', N'images/poster/dienthoaiden.png', N'images/backdrop/dienthoaiden.png', 7.9, 2857, 6778, 144, CAST(N'2024-06-24T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Horror,Thriller', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (67, N'Diều Hâu Gãy Cánh', N'"Black Hawk Down" dựa theo cuốn tiểu thuyết ăn khách nói về cuộc chiến ở Somali vào tháng 10 năm 1993. Do bất đồng trong việc chia sẻ quyền lực, nội chiến đã xảy ra ở đất nước vốn đã nghèo đói và bị hạn hán triền miên. Liên Hiệp quốc và các tổ chức nhân đạo vội vã vào cuộc, nhưng những chuyến hàng cứu trợ đã bị Aidid - thủ lĩnh có nhiều quyền lực nhất, đang chiếm giữ thủ đô Mogadishu - cướp đi để nuôi quân của mình. Trước tình hình đó, 20.000 lính Mỹ đã đổ bộ vào Somali nhằm khôi phục trật tự. Kế hoạch Black Hawk được triển khai với mục tiêu truy bắt thủ lĩnh Aidid.', N'images/poster/dieuhaugaycanh.png', N'images/backdrop/dieuhaugaycanh.png', 7.4, 4754, 11121, 122, CAST(N'2004-01-18T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Action,History,War', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (68, N'Đi Tìm Nemo', N'Nemo, một chú cá hề trẻ thích phiêu lưu, bất ngờ được đưa từ nhà Great Barrier Reef của mình đến một bể cá văn phòng của nha sĩ. Cha Marlin lo lắng và một chú cá thân thiện nhưng hay quên Dory mang Nemo về nhà - gặp gỡ cá mập ăn chay, lướt rùa rùa, sứa thôi miên, hải âu đói, và nhiều thứ khác trên đường đi.', N'images/poster/ditimenemo.png', N'images/backdrop/ditimenemo.png', 7.8, 16919, 45554, 123, CAST(N'2003-05-30T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Animation,Family', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (69, N'Walk the Line', NULL, N'images/poster/docduonggiobui.png', N'images/backdrop/docduonggiobui.png', 7.5, 2421, 5612, 99, CAST(N'2005-11-18T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Drama,Music,Romance', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (70, N'Dòng Sông Kỳ Bí', N'Jimmy, Sean và Dave là ba đứa trẻ trạc tuổi, sống trong cùng khu phố. Chúng cùng viết tên trên một nền xi măng chưa kịp khô với ước muốn những cái tên sẽ tồn tại mãi mãi. Khi Dave chưa kịp viết hết tên mình, một chiếc xe cảnh sát tới bắt cậu bé đi. Buồn thay, bọn chúng không phải là những cảnh sát thật sự. Cậu bé phải trải qua bốn ngày kinh hoàng trong một căn hầm tối tăm cùng hai kẻ mặt người dạ thú. Sau đó, dù được cứu thoát nhưng Dave không bao giờ có thể vui tươi và hồn nhiên như trước được nữa. Tình bạn của ba đứa trẻ kết thúc từ đây. Họ vẫn sống gần nhau nhưng đường đời lại chia ba ngã rẽ tưởng không bao giờ hợp lại. 25 năm sau, một bi kịch lại xảy ra. Cô con gái Katie của Jimmy bị giết. Sự việc khủng khiếp này kéo ba người bạn cũ một lần nữa trở về “bên nhau”. Để rồi, họ nhận ra bóng ma quá khứ vẫn luôn đè nặng trên vai mỗi người...', N'images/poster/dongsongtoiac.png', N'images/backdrop/dongsongtoiac.png', 7.7, 5446, 12221, 89, CAST(N'2003-10-08T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Thriller,Crime,Drama,Mystery', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (71, N'Đừng Nói Với Ai Cả ', N'Bác sĩ Alex Beck vẫn còn suy sụp sau cái chết của vợ mình 8 năm về trước. Một hôm anh nhận được một email nặc danh, trong đó đường dẫn (link) đến một video trực tiếp. Anh nhận ra khuôn mặt quen thuộc giữa đám đông trong đoạn video, đó chính là Margot, vợ của anh. Có phải cô còn sống? Và tại sao cô lại bảo anh đừng nói cho ai biết?', N'images/poster/dungnoivoiai.png', N'images/backdrop/dungnoivoiai.png', 7.3, 1157, 3312, 122, CAST(N'2006-11-01T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Drama,Thriller,Crime,Mystery', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (72, N'Đường Đến Ấn Độ', N'Bối cảnh phim ở Ấn Độ đầu những năm 1920 trong thời kỳ ảnh hưởng ngày càng tăng của phong trào đòi độc lập. Mặc dù Aziz Ahmed (Victor Banerjee) sinh ra và lớn lên ở Ấn Độ nhưng anh được thụ hưởng một nền giáo dục của người Anh, là một bác sĩ, thông thạo tiếng Anh và luôn mặc trang phục của châu Âu. Ahmed gặp một phụ nữ trung niên, bà Moore (Peggy Ashcroft) mới từ nước Anh sang, người đã ngỏ ý muốn anh cùng đi với bà và cô con dâu tương lai Adela Quested (Judy Davis) để ngắm cảnh và khám phá một số hang động. Không ngờ rằng cuộc sống của Ahmed đã đảo lộn khi Adela buộc tội anh đã xâm hại cô trong một hang động. Anh bị bắt và khi ở toà, đã nhận ra rằng chính quyền Anh không quan tâm anh có tội hay không và chỉ muốn xử phạt anh ...', N'images/poster/duongdenando.png', N'images/backdrop/duongdenando.png', 6.9, 228, 1112, 88, CAST(N'1984-12-14T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Drama,Adventure,History', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (73, N'Cậu Bé Người Ngoài Hành Tinh', N'Cuộc sống của một gia đình gồm bốn mẹ con bị xáo trộn bởi sự xuất hiện của một người ngoài hành tinh ngộ nghĩnh đáng yêu. Cậu bé ET hòa nhập vào cuộc sống của hành tinh xanh nhưng vẫn không nguôi nỗi nhớ nhà.', N'images/poster/etsinhvatngoaihanhtinh.png', N'images/backdrop/etsinhvatngoaihanhtinh.png', 7.5, 9761, 23311, 112, CAST(N'1982-06-11T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Science Fiction,Adventure,Family,Fantasy', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (74, N'Gã Chằn Tinh Tốt Bụng 2', N'NULLSau khi đánh bại con rồng lửa và lãnh chúa Farquaad để giành lấy trái tim của công chúa Fiona; gã chằn tinh Shrek giờ sống cuộc sống yên bình. Cả hai trải qua kỳ nghỉ trăng mật đầy lãng mạn. Cơn ác mộng thực sự đến khi quốc vương và hoàng hậu xứ Xa thật xa vời hai con về gặp mặt. Cùng với Lừa lắm mồm, đôi vợ chồng trẻ quay về kinh thành náo nhiệt. Kinh thành thân quen chào đón công chúa Fiona, xong không ai ngờ chàng phò mã là... chằn tinh. Còn cô công chúa yểu điệu ngày nào giờ cũng trong bộ dạng phục phịch xanh lét như chồng. Chàng rể trái ý quốc vương đã khiến Bà tiên đỡ đầu, Hoàng tử quyến rũ và tên sát thủ Mèo đi hia vào cuộc nhằm... thủ tiêu Shrek để lập phò mã mới!', N'images/poster/gachantinhtotbbung.png', N'images/backdrop/gachantinhtotbbung.png', 7.2, 10319, 33222, 112, CAST(N'2004-05-19T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Animation,Family,Comedy,Fantasy,Adventure', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (75, N'Sweeney Todd: The Demon Barber of Fleet Street', NULL, N'images/poster/gathocaomaquytrenphofleet.png', N'images/backdrop/gathocaomaquytrenphofleet.png', 7.2, 5106, 12211, 133, CAST(N'2008-01-25T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Horror,Drama', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (76, N'Gấu Đỏ Biến Hình', N'Với "Gấu Đỏ Biến Hình", Disney và Pixar mang đến cô bé 13 tuổi Mei Lee (Rosalie Chiang lồng tiếng) đầy tự tin, hơi ngố, đang bị giằng xé giữa hình ảnh con ngoan và sự nổi loạn của tuổi mới lớn. Sự bảo vệ và đeo bám hơi thái quá của mẹ Ming (Sandra Oh lồng tiếng) cũng là một rắc rối mà cô bé phải đối mặt. Không chỉ bối rối vì các thay đổi về sở thích, tình cảm và cơ thể, cô bé còn có một vấn đề nan giải khác. Bất cứ khi nào quá phấn khích (một việc THƯỜNG XUYÊN xảy ra), cô bé sẽ "biến hình" thành một con gấu trúc đỏ khổng lồ! Sản phẩm của đạo diễn Domee Shi (đoạt giải Oscar với hoạt hình Pixar ngắn "Bao") và nhà sản xuất Lindsey Collins. Một số phân đoạn có họa tiết hoặc hiệu ứng chớp sáng có thể gây ảnh hưởng lên các khán giả nhạy cảm. Một số phân đoạn có họa tiết hoặc hiệu ứng chớp sáng có thể gây ảnh hưởng lên các khán giả nhạy cảm.', N'images/poster/gaudobienhinh.png', N'images/backdrop/gaudobienhinh.png', 7.5, 3431, 10222, 122, CAST(N'2024-03-11T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), NULL, NULL, N'Animation,Family,Comedy,Fantasy', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (1080, N'Giúp tôi bạn sẽ đẹp trai', N'123', N'images/poster/123', N'images/backdrop/123', 0, 0, 0, 132, CAST(N'2024-01-13T00:00:00.000' AS DateTime), CAST(N'2024-01-30T17:40:42.230' AS DateTime), N'132', N'          ', N'Fantasy', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (1081, N'Giúp tôi bạn sẽ đẹp trai', N'123', N'images/poster/132', N'images/backdrop/132', 0, 0, 0, 123, CAST(N'2024-01-04T00:00:00.000' AS DateTime), CAST(N'2024-01-30T17:43:09.377' AS DateTime), N'123', N'          ', N'Fantasy,Comedy,Crime', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (1082, N'Giúp tôi bạn sẽ đẹp trai', N'123', N'images/poster/132', N'images/backdrop/132', 0, 0, 0, 123, CAST(N'2024-01-04T00:00:00.000' AS DateTime), CAST(N'2024-01-30T17:43:45.620' AS DateTime), N'123', N'          ', N'Fantasy,Comedy,Crime', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (1083, N'Giúp tôi bạn sẽ đẹp trai', N'123', N'images/poster/132', N'images/backdrop/132', 0, 0, 0, 123, CAST(N'2024-01-04T00:00:00.000' AS DateTime), CAST(N'2024-01-30T17:43:58.170' AS DateTime), N'123', N'          ', N'Fantasy,Comedy,Crime', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (1084, N'qew fwrwfwfw fwe fewfwe fwfczshegfe ', N'123', N'images/poster/123', N'images/backdrop/123', 0, 0, 0, 123, CAST(N'2024-01-12T00:00:00.000' AS DateTime), CAST(N'2024-01-30T17:54:59.397' AS DateTime), N'123', N'          ', N'Adventure,Horror,Western,Science Fiction', NULL, NULL)
INSERT [dbo].[Movies] ([id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category], [ProducerId], [DirectorId]) VALUES (1086, N'Giúp tôi bạn sẽ đẹp trai', N'123', N'images/poster/coco.png', N'images/backdrop/coco.png', 0, 0, 0, 123, CAST(N'2024-01-13T00:00:00.000' AS DateTime), CAST(N'2024-01-30T17:56:33.350' AS DateTime), N'123', N'          ', N'Action,Comedy,History', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Movies] OFF
GO
SET IDENTITY_INSERT [dbo].[Producers] ON 

INSERT [dbo].[Producers] ([Id], [Name]) VALUES (1, N'MCU')
INSERT [dbo].[Producers] ([Id], [Name]) VALUES (2, N'Pixax')
INSERT [dbo].[Producers] ([Id], [Name]) VALUES (3, N'DCU')
INSERT [dbo].[Producers] ([Id], [Name]) VALUES (4, N'Disney')
INSERT [dbo].[Producers] ([Id], [Name]) VALUES (8, N'VTVV')
SET IDENTITY_INSERT [dbo].[Producers] OFF
GO
SET IDENTITY_INSERT [dbo].[Stars] ON 

INSERT [dbo].[Stars] ([Id], [FullName], [Male], [Dob], [Description], [Nationality]) VALUES (1, N'StarA', 1, CAST(N'2004-10-16' AS Date), N'AAAAAAAAAAAAAAA', N'VN')
INSERT [dbo].[Stars] ([Id], [FullName], [Male], [Dob], [Description], [Nationality]) VALUES (2, N'StarB', 0, CAST(N'2004-10-16' AS Date), N'BBBBBBBBBBBBBBBBBB', N'USA')
INSERT [dbo].[Stars] ([Id], [FullName], [Male], [Dob], [Description], [Nationality]) VALUES (3, N'StarC', 1, CAST(N'2004-10-16' AS Date), N'CCCCCCCCCCCCCCCC', N'VN')
INSERT [dbo].[Stars] ([Id], [FullName], [Male], [Dob], [Description], [Nationality]) VALUES (4, N'StarD', 0, CAST(N'2004-10-16' AS Date), N'DDDDDDDDDDDDDDDDDDDDD', N'VN')
INSERT [dbo].[Stars] ([Id], [FullName], [Male], [Dob], [Description], [Nationality]) VALUES (5, N'StarE', 1, CAST(N'2004-10-16' AS Date), N'EEEEEEEEEEEEEEEEEEEEEEEE', N'USA')
INSERT [dbo].[Stars] ([Id], [FullName], [Male], [Dob], [Description], [Nationality]) VALUES (6, N'StarFF', 0, CAST(N'2004-10-16' AS Date), N'FFFFFFFFFFFFFFFFFFFFFFF', N'JP')
SET IDENTITY_INSERT [dbo].[Stars] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([id], [role], [name], [email], [username], [password], [avatar]) VALUES (8, N'admin', N'Cao Thi Quynh Trang', N'trangctqhe186963@fpt.edu.vn', N'trangctqhe186963', N'8+ENkvewuCi7U6EG83OgPQ==', N'https://i.imgur.com/zXbhmFD.png')
INSERT [dbo].[Users] ([id], [role], [name], [email], [username], [password], [avatar]) VALUES (9, N'user', N'Test Account 1', N'test1@gmail.com', N'test1', N'8+ENkvewuCi7U6EG83OgPQ==', N'https://i.imgur.com/zXbhmFD.png')
INSERT [dbo].[Users] ([id], [role], [name], [email], [username], [password], [avatar]) VALUES (10, N'user', N'Test Account 2', N'test2@gmail.com', N'test2', N'8+ENkvewuCi7U6EG83OgPQ==', N'https://i.imgur.com/zXbhmFD.png')
INSERT [dbo].[Users] ([id], [role], [name], [email], [username], [password], [avatar]) VALUES (35, N'admin', N'Cao Trang', N'caotrang7141@gmail.com', N'changcao1', N'8+ENkvewuCi7U6EG83OgPQ==', NULL)
INSERT [dbo].[Users] ([id], [role], [name], [email], [username], [password], [avatar]) VALUES (40, N'user', N'Trang Trang', N'trangctq@attlas.io', N'trangcao2', N'8+ENkvewuCi7U6EG83OgPQ==', N'https://i.imgur.com/zXbhmFD.png')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[visitor_count] ON 

INSERT [dbo].[visitor_count] ([id], [date], [visitor]) VALUES (3, CAST(N'2024-09-20' AS Date), 3121)
INSERT [dbo].[visitor_count] ([id], [date], [visitor]) VALUES (1002, CAST(N'2024-09-22' AS Date), 21231)
INSERT [dbo].[visitor_count] ([id], [date], [visitor]) VALUES (2004, CAST(N'2024-09-25' AS Date), 135123)
INSERT [dbo].[visitor_count] ([id], [date], [visitor]) VALUES (2003, CAST(N'2024-01-05' AS Date), 4121)
INSERT [dbo].[visitor_count] ([id], [date], [visitor]) VALUES (2004, CAST(N'2024-01-09' AS Date), 612)
INSERT [dbo].[visitor_count] ([id], [date], [visitor]) VALUES (2005, CAST(N'2024-01-10' AS Date), 312)
INSERT [dbo].[visitor_count] ([id], [date], [visitor]) VALUES (2006, CAST(N'2024-01-13' AS Date), 16022)
INSERT [dbo].[visitor_count] ([id], [date], [visitor]) VALUES (2007, CAST(N'2024-01-15' AS Date), 89)
INSERT [dbo].[visitor_count] ([id], [date], [visitor]) VALUES (2008, CAST(N'2024-01-20' AS Date), 4123)
INSERT [dbo].[visitor_count] ([id], [date], [visitor]) VALUES (2009, CAST(N'2024-01-24' AS Date), 5121)
INSERT [dbo].[visitor_count] ([id], [date], [visitor]) VALUES (2010, CAST(N'2024-01-27' AS Date), 17212)
INSERT [dbo].[visitor_count] ([id], [date], [visitor]) VALUES (2011, CAST(N'2024-01-29' AS Date), 2003)
INSERT [dbo].[visitor_count] ([id], [date], [visitor]) VALUES (2012, CAST(N'2024-11-01' AS Date), 15021)
INSERT [dbo].[visitor_count] ([id], [date], [visitor]) VALUES (2013, CAST(N'2024-11-02' AS Date), 123)
INSERT [dbo].[visitor_count] ([id], [date], [visitor]) VALUES (2014, CAST(N'2024-11-03' AS Date), 412)
INSERT [dbo].[visitor_count] ([id], [date], [visitor]) VALUES (2015, CAST(N'2024-11-07' AS Date), 18)
SET IDENTITY_INSERT [dbo].[visitor_count] OFF
GO
ALTER TABLE [dbo].[Favorite]  WITH CHECK ADD  CONSTRAINT [FK_Favorite_Movies] FOREIGN KEY([movie_id])
REFERENCES [dbo].[Movies] ([id])
GO
ALTER TABLE [dbo].[Favorite] CHECK CONSTRAINT [FK_Favorite_Movies]
GO
ALTER TABLE [dbo].[Favorite]  WITH CHECK ADD  CONSTRAINT [FK_Favorite_Users] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Favorite] CHECK CONSTRAINT [FK_Favorite_Users]
GO
ALTER TABLE [dbo].[movie_genre]  WITH CHECK ADD  CONSTRAINT [FK_movie_genre_Genres] FOREIGN KEY([genre_id])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[movie_genre] CHECK CONSTRAINT [FK_movie_genre_Genres]
GO
ALTER TABLE [dbo].[movie_genre]  WITH CHECK ADD  CONSTRAINT [FK_movie_genre_Movies] FOREIGN KEY([movie_id])
REFERENCES [dbo].[Movies] ([id])
GO
ALTER TABLE [dbo].[movie_genre] CHECK CONSTRAINT [FK_movie_genre_Movies]
GO
ALTER TABLE [dbo].[Movie_Star]  WITH CHECK ADD  CONSTRAINT [FK_Movie_Star_Movies] FOREIGN KEY([MovieId])
REFERENCES [dbo].[Movies] ([id])
GO
ALTER TABLE [dbo].[Movie_Star] CHECK CONSTRAINT [FK_Movie_Star_Movies]
GO
ALTER TABLE [dbo].[Movie_Star]  WITH CHECK ADD  CONSTRAINT [FK_Movie_Star_Stars] FOREIGN KEY([StarId])
REFERENCES [dbo].[Stars] ([Id])
GO
ALTER TABLE [dbo].[Movie_Star] CHECK CONSTRAINT [FK_Movie_Star_Stars]
GO
ALTER TABLE [dbo].[Movies]  WITH CHECK ADD  CONSTRAINT [FK_Movies_Directors] FOREIGN KEY([DirectorId])
REFERENCES [dbo].[Directors] ([Id])
GO
ALTER TABLE [dbo].[Movies] CHECK CONSTRAINT [FK_Movies_Directors]
GO
ALTER TABLE [dbo].[Movies]  WITH CHECK ADD  CONSTRAINT [FK_Movies_Producers] FOREIGN KEY([ProducerId])
REFERENCES [dbo].[Producers] ([Id])
GO
ALTER TABLE [dbo].[Movies] CHECK CONSTRAINT [FK_Movies_Producers]
GO
ALTER TABLE [dbo].[views_count]  WITH CHECK ADD  CONSTRAINT [FK_views_count_Movies] FOREIGN KEY([mid])
REFERENCES [dbo].[Movies] ([id])
GO
ALTER TABLE [dbo].[views_count] CHECK CONSTRAINT [FK_views_count_Movies]
GO
