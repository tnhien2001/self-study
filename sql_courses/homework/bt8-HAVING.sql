use practice_data;

-- SELECT <column_1, function_name(column_2),…>--Trong select chứa hàm tổng hợp
-- FROM <table>
-- WHERE <condition> -- Điều kiện áp dụng với cột có sẵn
-- GROUP BY <column(s)> -- Nhóm các hàng để áp dụng hàm tổng hợp
-- HAVING <condition> -- Hàm tổng hợp trong điều kiện
-- ORDER BY <column(s)>; -- Xác định thứ tự tăng giảm (Tùy chọn)

-- VD1: Trả về bảng tính tổng lợi nhuận (profit) theo các tỉnh (Province). Điều kiện là lấy các tỉnh có 
-- tổng lợi nhuận lớn hơn 10000
-- | SELECT Province AS Tinh, SUM(Profit) as Tong_loi_nhuan FROM Orders GROUP BY Provine HAVING SUM(profit) > 10000

-- ***--SO SÁNH WHERE VÀ HAVING--***
-- BT:
-- 1. Từ bảng Orders, lọc ra các kết quả với điều kiện cột Order_priority là "Low"
select *
from orders
where order_priority like 'Low';

-- 2. Từ bảng Orders, tạo bảng tính tổng số lượng sản phẩm (total_quantity) theo từng product_name. Lọc các kết 
-- quả có tổng số lượng sản phẩm lớn hơn 10
select 	product_name,
		sum(order_quantity) as total_quantity
from orders
group by product_name
having total_quantity > 10
order by product_name;