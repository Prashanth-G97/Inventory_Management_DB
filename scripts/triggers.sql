USE Inventory_Management_DB;

DELIMITER //

CREATE TRIGGER low_stock_alert
AFTER INSERT ON Stock
FOR EACH ROW
BEGIN
    IF NEW.quantity < (SELECT reorder_level FROM Products WHERE product_id = NEW.product_id) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Low stock alert!';
    END IF;
END;
//

DELIMITER ;