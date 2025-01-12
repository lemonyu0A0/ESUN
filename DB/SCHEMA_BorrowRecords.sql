 CREATE TABLE [BorrowRecords](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[InventoryID] [int] NOT NULL,
	[BorrowingTime] [datetime] NULL,
	[ReturnTime] [datetime] NULL
) ON [PRIMARY]