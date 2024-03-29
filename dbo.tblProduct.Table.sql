USE [CollectDB]
GO
/****** Object:  Table [dbo].[tblProduct]    Script Date: 2/25/2024 3:12:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProduct](
	[productID] [int] IDENTITY(1,1) NOT NULL,
	[collectibleID] [varchar](100) NULL,
	[productName] [varchar](750) NULL,
	[productDescription] [varchar](300) NULL,
	[brandID] [int] NULL,
	[categoryID] [int] NULL,
	[seriesLineID] [int] NULL,
	[releaseYear] [date] NULL,
	[conditionID] [int] NULL,
	[rarityID] [int] NULL,
	[exclusiveID] [int] NULL,
	[purchaseDate] [date] NULL,
	[purchasePrice] [decimal](10, 2) NULL,
	[Quantity] [int] NULL,
	[purchaseLocationID] [int] NULL,
	[dateAdded] [date] NULL,
	[productLocationID] [int] NULL,
	[CertificateID] [int] NULL,
	[limitedEditionNum] [varchar](100) NULL,
	[Tags] [int] NULL,
	[ResaleValue] [decimal](10, 2) NULL,
	[Out_of_stock] [bit] NULL,
	[personalCollection] [bit] NULL,
	[wishList] [bit] NULL,
	[notes] [varchar](500) NULL,
	[UPC_Code] [varchar](500) NULL,
	[winnersChoice] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblProduct]  WITH CHECK ADD FOREIGN KEY([brandID])
REFERENCES [dbo].[tblBrand] ([brandID])
GO
ALTER TABLE [dbo].[tblProduct]  WITH CHECK ADD FOREIGN KEY([categoryID])
REFERENCES [dbo].[tblCategory] ([CategoryID])
GO
ALTER TABLE [dbo].[tblProduct]  WITH CHECK ADD FOREIGN KEY([CertificateID])
REFERENCES [dbo].[tblCertificate] ([CertificateID])
GO
ALTER TABLE [dbo].[tblProduct]  WITH CHECK ADD FOREIGN KEY([conditionID])
REFERENCES [dbo].[tblCondition] ([conditionID])
GO
ALTER TABLE [dbo].[tblProduct]  WITH CHECK ADD FOREIGN KEY([exclusiveID])
REFERENCES [dbo].[tblExclusive] ([exclusiveID])
GO
ALTER TABLE [dbo].[tblProduct]  WITH CHECK ADD FOREIGN KEY([productLocationID])
REFERENCES [dbo].[tblProductLocation] ([productLocationID])
GO
ALTER TABLE [dbo].[tblProduct]  WITH CHECK ADD FOREIGN KEY([purchaseLocationID])
REFERENCES [dbo].[tblPurchaseLocation] ([purchaseLocationID])
GO
ALTER TABLE [dbo].[tblProduct]  WITH CHECK ADD FOREIGN KEY([rarityID])
REFERENCES [dbo].[tblRarity] ([rarityID])
GO
ALTER TABLE [dbo].[tblProduct]  WITH CHECK ADD FOREIGN KEY([seriesLineID])
REFERENCES [dbo].[tblSeriesLine] ([seriesLineID])
GO
ALTER TABLE [dbo].[tblProduct]  WITH CHECK ADD FOREIGN KEY([Tags])
REFERENCES [dbo].[tblTags] ([TagID])
GO
