use practice_data;

-- Bài 1: Viết câu lệnh truy vấn trả về danh sách không trùng lặp các mức độ ưu tiên (order_priority) 
-- từ bảng Orders.
select distinct order_priority
from orders;

-- Bài 2: Viết câu lệnh truy vấn dữ liệu từ bảng Orders
-- Hiển thị bảng kết quả gồm các cột: customer_name, order_priority
-- Yêu cầu: Bảng kết quả không bao gồm các bản ghi trùng lặp
select distinct customer_name, order_priority
from orders;