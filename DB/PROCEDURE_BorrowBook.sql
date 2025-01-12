CREATE PROCEDURE BorrowBook
    @USERID INT,
    @InventoryID INT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
	declare @cnt int
	select @cnt = count(*) from Inventory WHERE InventoryID = @InventoryID AND Status = 'Available'
        if @cnt > 0
		begin
		UPDATE Inventory
        SET Status = 'Borrowed'
        WHERE InventoryID = @InventoryID AND Status = 'Available';
		
        INSERT INTO BorrowRecords (UserID, InventoryID, BorrowDate)
        VALUES (@UserID, @InventoryID, GETDATE());
		end
	else 
	begin
	Raiserror('無該書籍資料',11,-1)
    Return
	End
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;