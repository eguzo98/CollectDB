USE [CollectDB]
GO
/****** Object:  Table [dbo].[tblOrderItems]    Script Date: 2/25/2024 3:12:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrderItems](
	[orderItemID] [int] IDENTITY(1,1) NOT NULL,
	[orderID] [int] NULL,
	[productID] [int] NULL,
	[Quantity] [int] NULL,
	[discountAmount] [decimal](10, 2) NULL,
	[Price] [decimal](10, 2) NULL,
	[subTotal] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[orderItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblOrderItems]  WITH CHECK ADD FOREIGN KEY([orderID])
REFERENCES [dbo].[tblOrders] ([orderID])
GO
ALTER TABLE [dbo].[tblOrderItems]  WITH CHECK ADD FOREIGN KEY([productID])
REFERENCES [dbo].[tblProduct] ([productID])
GO
