USE [master]
GO
/****** Object:  Database [Dictionary]    Script Date: 9.7.2013 г. 21:18:11 ******/
CREATE DATABASE [Dictionary]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Dictionary', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Dictionary.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Dictionary_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Dictionary_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Dictionary] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Dictionary].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Dictionary] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Dictionary] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Dictionary] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Dictionary] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Dictionary] SET ARITHABORT OFF 
GO
ALTER DATABASE [Dictionary] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Dictionary] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Dictionary] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Dictionary] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Dictionary] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Dictionary] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Dictionary] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Dictionary] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Dictionary] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Dictionary] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Dictionary] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Dictionary] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Dictionary] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Dictionary] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Dictionary] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Dictionary] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Dictionary] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Dictionary] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Dictionary] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Dictionary] SET  MULTI_USER 
GO
ALTER DATABASE [Dictionary] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Dictionary] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Dictionary] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Dictionary] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Dictionary]
GO
/****** Object:  Table [dbo].[Antonyms]    Script Date: 9.7.2013 г. 21:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Antonyms](
	[EntryId] [int] NOT NULL,
	[AntonymId] [int] NOT NULL,
 CONSTRAINT [PK_Antonyms] PRIMARY KEY CLUSTERED 
(
	[EntryId] ASC,
	[AntonymId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Explanations]    Script Date: 9.7.2013 г. 21:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Explanations](
	[EntryId] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Languages]    Script Date: 9.7.2013 г. 21:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Languages](
	[LanguageId] [int] IDENTITY(1,1) NOT NULL,
	[LanguageName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Languages] PRIMARY KEY CLUSTERED 
(
	[LanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PartsOfSpeech]    Script Date: 9.7.2013 г. 21:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartsOfSpeech](
	[PartId] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_PartsOfSpeech] PRIMARY KEY CLUSTERED 
(
	[PartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Synonyms]    Script Date: 9.7.2013 г. 21:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Synonyms](
	[EntryId] [int] NOT NULL,
	[SynonymId] [int] NOT NULL,
 CONSTRAINT [PK_Synonyms] PRIMARY KEY CLUSTERED 
(
	[EntryId] ASC,
	[SynonymId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Translations]    Script Date: 9.7.2013 г. 21:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Translations](
	[EntryId] [int] NOT NULL,
	[TranslationId] [int] NOT NULL,
 CONSTRAINT [PK_Translations] PRIMARY KEY CLUSTERED 
(
	[EntryId] ASC,
	[TranslationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Words]    Script Date: 9.7.2013 г. 21:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Words](
	[WordId] [int] IDENTITY(1,1) NOT NULL,
	[WordValue] [nvarchar](50) NULL,
	[LanguageId] [int] NULL,
	[Explanation] [nvarchar](100) NULL,
	[PartOfSpeechId] [int] NULL,
	[HypernymId] [int] NULL,
 CONSTRAINT [PK_Words] PRIMARY KEY CLUSTERED 
(
	[WordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Antonyms]  WITH CHECK ADD  CONSTRAINT [FK_Antonyms_Words] FOREIGN KEY([EntryId])
REFERENCES [dbo].[Words] ([WordId])
GO
ALTER TABLE [dbo].[Antonyms] CHECK CONSTRAINT [FK_Antonyms_Words]
GO
ALTER TABLE [dbo].[Antonyms]  WITH CHECK ADD  CONSTRAINT [FK_Antonyms_Words1] FOREIGN KEY([AntonymId])
REFERENCES [dbo].[Words] ([WordId])
GO
ALTER TABLE [dbo].[Antonyms] CHECK CONSTRAINT [FK_Antonyms_Words1]
GO
ALTER TABLE [dbo].[Synonyms]  WITH CHECK ADD  CONSTRAINT [FK_Synonyms_Words] FOREIGN KEY([EntryId])
REFERENCES [dbo].[Words] ([WordId])
GO
ALTER TABLE [dbo].[Synonyms] CHECK CONSTRAINT [FK_Synonyms_Words]
GO
ALTER TABLE [dbo].[Synonyms]  WITH CHECK ADD  CONSTRAINT [FK_Synonyms_Words1] FOREIGN KEY([SynonymId])
REFERENCES [dbo].[Words] ([WordId])
GO
ALTER TABLE [dbo].[Synonyms] CHECK CONSTRAINT [FK_Synonyms_Words1]
GO
ALTER TABLE [dbo].[Translations]  WITH CHECK ADD  CONSTRAINT [FK_Translations_Words] FOREIGN KEY([EntryId])
REFERENCES [dbo].[Words] ([WordId])
GO
ALTER TABLE [dbo].[Translations] CHECK CONSTRAINT [FK_Translations_Words]
GO
ALTER TABLE [dbo].[Translations]  WITH CHECK ADD  CONSTRAINT [FK_Translations_Words1] FOREIGN KEY([TranslationId])
REFERENCES [dbo].[Words] ([WordId])
GO
ALTER TABLE [dbo].[Translations] CHECK CONSTRAINT [FK_Translations_Words1]
GO
ALTER TABLE [dbo].[Words]  WITH CHECK ADD  CONSTRAINT [FK_Words_Languages] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Languages] ([LanguageId])
GO
ALTER TABLE [dbo].[Words] CHECK CONSTRAINT [FK_Words_Languages]
GO
ALTER TABLE [dbo].[Words]  WITH CHECK ADD  CONSTRAINT [FK_Words_PartsOfSpeech] FOREIGN KEY([PartOfSpeechId])
REFERENCES [dbo].[PartsOfSpeech] ([PartId])
GO
ALTER TABLE [dbo].[Words] CHECK CONSTRAINT [FK_Words_PartsOfSpeech]
GO
ALTER TABLE [dbo].[Words]  WITH CHECK ADD  CONSTRAINT [FK_Words_Words] FOREIGN KEY([HypernymId])
REFERENCES [dbo].[Words] ([WordId])
GO
ALTER TABLE [dbo].[Words] CHECK CONSTRAINT [FK_Words_Words]
GO
USE [master]
GO
ALTER DATABASE [Dictionary] SET  READ_WRITE 
GO
