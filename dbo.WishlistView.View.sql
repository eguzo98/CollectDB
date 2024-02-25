USE [CollectDB]
GO
/****** Object:  View [dbo].[WishlistView]    Script Date: 2/25/2024 3:12:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[WishlistView] AS SELECT productID, productName, wishList FROM dbo.tblProduct WHERE wishList = 1;
GO
