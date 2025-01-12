CREATE PROCEDURE ReturnBook
    @UserID INT,
    @InventoryID INT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
declare @cnt int
	select @cnt = count(*) from Inventory WHERE InventoryID = @InventoryID AND Status = 'Available'
        if @cnt > 0
	begin        
-- 更新書籍狀態
        UPDATE InventoryID
        SET Status = 'Available'
        WHERE InventoryID = @InventoryID AND Status = 'Borrowed';

-- 更新借閱紀錄的還書時間
        UPDATE BorrowRecords
        SET ReturnTime = GETDATE()
        WHERE UserID = @UserID AND InventoryID = @InventoryID AND ReturnDate IS NULL;
	end
	else
	begin
	Raiserror('發生錯誤',11,-1)
	return
	end
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;
