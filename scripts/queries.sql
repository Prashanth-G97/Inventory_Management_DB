USE Inventory_Management_DB;

SELECT P.product_name, W.warehouse_name, S.quantity
FROM Stock S
JOIN Products P ON S.product_id = P.product_id
JOIN Warehouses W ON S.warehouse_id = W.warehouse_id;

SELECT P.product_name, S.quantity, P.reorder_level
FROM Stock S
JOIN Products P ON S.product_id = P.product_id
WHERE S.quantity < P.reorder_level;
