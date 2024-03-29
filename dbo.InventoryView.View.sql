USE [CollectDB]
GO
/****** Object:  View [dbo].[InventoryView]    Script Date: 2/25/2024 3:12:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[InventoryView] AS SELECT 
p.productID,
p.collectibleID,
p.productName,
p.productDescription,
b.brandName AS brand,
c.CategoryName AS category,
sl.seriesLineName AS seriesLine,
p.releaseYear,
co.conditionName AS condition,
r.rarityName AS rarity,
e.exclusiveName AS exclusive,
p.purchaseDate, p.purchasePrice,
p.Quantity, pl.purchaseLocationName AS purchaseLocation,
p.dateAdded, pr.productLocationName AS productLocation,
ce.CertificateName AS Certificate,
p.limitedEditionNum,
t.TagName AS Tags,
p.ResaleValue,
p.Out_of_stock,
p.personalCollection,
p.wishList,
p.notes

FROM dbo.tblProduct p LEFT JOIN dbo.tblBrand b ON p.brandID = b.brandID LEFT JOIN dbo.tblCategory c ON p.categoryID = c.CategoryID LEFT JOIN dbo.tblseriesLine sl ON p.seriesLineID = sl.seriesLineID LEFT JOIN dbo.tblcondition co ON p.conditionID = co.conditionID LEFT JOIN dbo.tblRarity r ON p.rarityID = r.rarityID LEFT JOIN dbo.tblexclusive e ON p.exclusiveID = e.exclusiveID LEFT JOIN dbo.tblpurchaseLocation pl ON p.purchaseLocationID = pl.purchaseLocationID LEFT JOIN dbo.tblproductLocation pr ON p.productLocationID = pr.productLocationID LEFT JOIN dbo.tblCertificate ce ON p.CertificateID = ce.CertificateID LEFT JOIN dbo.tblTags t ON p.Tags = t.TagID; 
GO
