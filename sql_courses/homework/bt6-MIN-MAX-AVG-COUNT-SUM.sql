use practice_data;

-- Hàm MAX(), MIN()
-- VD1: Lấy giá trị nhỏ nhất của cột profit từ bảng Orders
SELECT MIN(profit) FROM Orders;
-- VD2: Lấy giá trị lớn nhất của cột Order_quantity từ bảng Orders
SELECT MAX(Order_quantity) FROM Orders;

-- Hàm COUNT(), AVG(), SUM()
-- VD1: Đếm số dòng cột order_priority từ bảng Orders
SELECT COUNT(Order_priority) FROM Orders;

-- VD2: Tính giá trị trung bình profit từ bảng Orders
SELECT AVG(Profit) FROM Orders;
-- VD3: Tính tổng profit từ bảng Orders
SELECT SUM(Profit) FROM Orders;

