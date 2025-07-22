USE Inventory_Management_DB;

-- Products
INSERT INTO Products (product_name, category, reorder_level) VALUES
('Mouse', 'Electronics', 20),
('Keyboard', 'Electronics', 15),
('Chair', 'Furniture', 10);

-- Warehouses
INSERT INTO Warehouses (warehouse_name, location) VALUES
('Main Warehouse', 'Chennai'),
('Backup Warehouse', 'Bangalore');

-- Suppliers
INSERT INTO Suppliers (supplier_name, contact_info) VALUES
('Tech Supplies Co.', 'techsupplies@example.com'),
('Furniture Mart', 'furnimart@example.com');

-- Stock
INSERT INTO Stock (product_id, warehouse_id, quantity, last_updated) VALUES
(1, 1, 50, CURDATE()),
(2, 1, 10, CURDATE()),
(3, 2, 5, CURDATE());