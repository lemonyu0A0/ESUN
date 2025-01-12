CREATE NONCLUSTERED COLUMNSTORE INDEX [NonClusteredColumnStoreIndex-20250112-224112] ON [eLanduser].[BorrowRecords]
(
	[UserID],
	[InventoryID]
)WITH (DROP_EXISTING = OFF) ON [PRIMARY]