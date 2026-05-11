use practice_data;

-- ORDER BY: Sắp xếp kết quả tăng dần / giảm dần.
-- SELECT column_name(s) --Các cột muốn hiển thị
-- FROM table_name
-- GROUP BY column_name(s) --Nhóm các hàng để áp dụng hàm tổng hợp (nếu có)
-- ORDER BY column_name(s) ASC/DESC --Sắp xếp theo tứ thự tăng/giảm tùy chọn

-- ***--BT--***
-- Bài 1: Viết câu lệnh truy vấn dữ liệu từ bảng Orders
-- Hiển thị bảng kết quả gồm tất cả các cột của bảng orders
-- Yêu cầu: Sắp xếp theo thứ tự profit giảm dần
select *
from orders
order by profit DESC;

-- Bài 2: Viết câu lệnh truy vấn dữ liệu từ bảng Orders
-- Tổng hợp tổng giá trị (total_value) theo từng khách hàng (customer_name)
-- Yêu cầu: Sắp xếp theo thứ tự tổng giá trị giảm dần
select 	customer_name,
		sum(value) as total_value
from orders
group by customer_name
order by total_value;