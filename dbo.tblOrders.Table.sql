USE [CollectDB]
GO
/****** Object:  Table [dbo].[tblOrders]    Script Date: 2/25/2024 3:12:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrders](
	[orderID] [int] IDENTITY(1,1) NOT NULL,
	[orderDate] [date] NULL,
	[customerID] [int] NULL,
	[taxAmount] [decimal](10, 2) NULL,
	[promoCode] [varchar](50) NULL,
	[discountAmount] [decimal](10, 2) NULL,
	[totalAmount] [decimal](10, 2) NULL,
	[shippingMethodID] [int] NULL,
	[shippingAddress] [varchar](300) NULL,
	[shippingCost] [decimal](10, 2) NULL,
	[paymentMethodID] [int] NULL,
	[orderStatusID] [int] NULL,
	[trackingNumber] [varchar](300) NULL,
	[refundStatusID] [int] NULL,
	[refundDate] [date] NULL,
	[returnStatusID] [int] NULL,
	[returnDate] [date] NULL,
	[returnAmount] [decimal](10, 2) NULL,
	[paymentStatusID] [int] NULL,
	[paymentDate] [date] NULL,
	[cancellationReason] [varchar](300) NULL,
	[cancellationDate] [date] NULL,
	[notes] [varchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[orderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblOrders]  WITH CHECK ADD FOREIGN KEY([customerID])
REFERENCES [dbo].[tblCustomer] ([customerID])
GO
ALTER TABLE [dbo].[tblOrders]  WITH CHECK ADD FOREIGN KEY([orderStatusID])
REFERENCES [dbo].[tblOrderStatus] ([orderStatusID])
GO
ALTER TABLE [dbo].[tblOrders]  WITH CHECK ADD FOREIGN KEY([paymentMethodID])
REFERENCES [dbo].[tblPaymentMethod] ([paymentMethodID])
GO
ALTER TABLE [dbo].[tblOrders]  WITH CHECK ADD FOREIGN KEY([paymentStatusID])
REFERENCES [dbo].[tblPaymentStatus] ([paymentStatusID])
GO
ALTER TABLE [dbo].[tblOrders]  WITH CHECK ADD FOREIGN KEY([refundStatusID])
REFERENCES [dbo].[tblRefundStatus] ([refundStatusID])
GO
ALTER TABLE [dbo].[tblOrders]  WITH CHECK ADD FOREIGN KEY([returnStatusID])
REFERENCES [dbo].[tblReturnStatus] ([returnStatusID])
GO
ALTER TABLE [dbo].[tblOrders]  WITH CHECK ADD FOREIGN KEY([shippingMethodID])
REFERENCES [dbo].[tblShippingMethod] ([shippingMethodID])
GO
