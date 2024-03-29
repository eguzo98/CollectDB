USE [CollectDB]
GO
/****** Object:  Table [dbo].[tblExclusive]    Script Date: 2/25/2024 3:12:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblExclusive](
	[exclusiveID] [int] IDENTITY(1,1) NOT NULL,
	[exclusiveName] [varchar](300) NULL,
	[exclusiveNotes] [varchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[exclusiveID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
