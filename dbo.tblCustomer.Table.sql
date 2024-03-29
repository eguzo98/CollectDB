USE [CollectDB]
GO
/****** Object:  Table [dbo].[tblCustomer]    Script Date: 2/25/2024 3:12:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCustomer](
	[customerID] [int] IDENTITY(1,1) NOT NULL,
	[accountID] [varchar](250) NULL,
	[firstName] [varchar](250) NULL,
	[lastName] [varchar](250) NULL,
	[preferredName] [varchar](250) NULL,
	[businessName] [varchar](250) NULL,
	[email] [varchar](250) NULL,
	[phone] [varchar](10) NULL,
	[DOB] [date] NULL,
	[address] [varchar](300) NULL,
	[city] [varchar](250) NULL,
	[state] [varchar](250) NULL,
	[postalCode] [varchar](5) NULL,
	[country] [varchar](250) NULL,
	[address2] [varchar](300) NULL,
	[city2] [varchar](250) NULL,
	[state2] [varchar](250) NULL,
	[postalCode2] [varchar](5) NULL,
	[country2] [varchar](250) NULL,
	[lastPurchase] [date] NULL,
	[totalPurchase] [int] NULL,
	[totalSpending] [decimal](10, 2) NULL,
	[joinDate] [date] NULL,
	[loyaltyStatusID] [int] NULL,
	[socialHandle] [varchar](250) NULL,
	[customerTagID] [int] NULL,
	[notes] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[customerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblCustomer]  WITH CHECK ADD FOREIGN KEY([customerTagID])
REFERENCES [dbo].[tblCustomerTags] ([customerTagID])
GO
ALTER TABLE [dbo].[tblCustomer]  WITH CHECK ADD FOREIGN KEY([loyaltyStatusID])
REFERENCES [dbo].[tblLoyaltyStatus] ([loyaltyStatusID])
GO
