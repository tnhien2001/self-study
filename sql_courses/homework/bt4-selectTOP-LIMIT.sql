use practice_data;

-- SYNTAX: SELECT TOP N [percent] [columns] FROM table_name
-- • TOP N: Trả về kết quả N dòng đầu tiên
-- • TOP N Percent: Trả về kết quả N% dòng đầu tiên
-- ==> Đây là cú pháp của SQL Server.
-- ==> Trong MySQL sẽ dùng LIMIT !!!

-- Bài 1: Viết câu lệnh truy vấn dữ liệu từ bảng Orders
-- Hiển thị bảng kết quả gồm các cột: Order_id, order_date,customer_name, order_priority
-- Yêu cầu: Hiển thị 100 bản ghi đầu tiên
select order_id, order_date, customer_name, order_priority
from orders
limit 100;

select * from orders;