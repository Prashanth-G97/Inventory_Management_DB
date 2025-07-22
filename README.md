# Inventory and Warehouse Management System (SQL Project)

This project is a SQL-based backend system designed to manage inventory across multiple warehouses. It includes schema design, data entry, reporting queries, and logic through triggers and stored procedures.

## 🚀 Project Objective
To design a SQL backend that tracks stock levels, triggers low-stock alerts, and enables stock transfers between warehouses.

## 🧰 Tools Used
- MySQL / SQL Workbench
- DBeaver (optional)
- Excel (for visualization)
- GitHub (for documentation)

## 🗃️ Database Schema
The project includes the following tables:
- `Products`: Stores product information
- `Warehouses`: Stores warehouse locations
- `Suppliers`: Stores supplier details
- `Stock`: Tracks inventory levels for products per warehouse

## 📥 Sample SQL Features
- `SELECT`, `JOIN`, `GROUP BY` queries to view inventory and alerts
- `TRIGGER` to notify low stock levels
- `STORED PROCEDURE` to transfer stock between warehouses
- Constraints for data integrity (`CHECK`, `FOREIGN KEY`, etc.)

## 📊 Visual Output
Stock levels visualized using Excel bar charts for quick analysis.

## 📄 Report Contents (Attached in Repo)
- Project Introduction
- Abstract and Tools Used
- Steps in Project Development
- SQL Scripts and Sample Data
- Charts (Excel)

## ✅ How to Run the Project
1. Import schema into MySQL Workbench
2. Run the provided INSERT statements for sample data
3. Use SQL scripts to test triggers, procedures, and queries
4. Open Excel file for visualization
