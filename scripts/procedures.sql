USE Inventory_Management_DB;

DELIMITER //

CREATE PROCEDURE TransferStock(
    IN productId INT,
    IN fromWarehouse INT,
    IN toWarehouse INT,
    IN qty INT
)
BEGIN
    START TRANSACTION;

    UPDATE Stock 
    SET quantity = quantity - qty
    WHERE product_id = productId AND warehouse_id = fromWarehouse;

    INSERT INTO Stock (product_id, warehouse_id, quantity, last_updated)
    VALUES (productId, toWarehouse, qty, CURDATE())
    ON DUPLICATE KEY UPDATE quantity = quantity + qty;

    COMMIT;
END;
//

DELIMITER ;

CALL TransferStock(1, 1, 2, 5);