USE [CollectDB]
GO
/****** Object:  Table [dbo].[tblPaymentMethod]    Script Date: 2/25/2024 3:12:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPaymentMethod](
	[paymentMethodID] [int] IDENTITY(1,1) NOT NULL,
	[paymentMethodName] [varchar](300) NULL,
	[paymentMethodNotes] [varchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[paymentMethodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
