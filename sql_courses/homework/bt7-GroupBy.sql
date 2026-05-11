use practice_data;

-- • Câu lệnh GROUP BY nhóm các hàng có cùng giá trị thành các hàng tóm tắt, như "tìm số lượng khách hàng ở 
-- mỗi quốc gia".
-- • Câu lệnh GROUP BY thường được sử dụng với các hàm tổng hợp (COUNT (), MAX (), MIN (), SUM (), AVG ()) 
-- để nhóm tập hợp kết quả theo một hoặc nhiều cột.
-- VD1: Trả về bảng tính tổng lợi nhuận (profit) theo các tỉnh (Province)
-- | SELECT Province AS Tinh, SUM(Profit) as Tong_loi_nhuan FROM Orders GROUP BY Provine

-- ***-----***
-- BT:
-- Bài 3: Từ bảng Orders:
-- Viết lệnh truy vấn dữ liệu để tổng hợp kết quả tổng
-- lợi nhuận (total_profit) theo từng tỉnh (province) 
-- và khách hàng (customer_name).
-- Kết quả trả về như bảng bên.
select 	province as Tinh, customer_name,
		sum(profit) as total_profit
from orders
group by province, customer_name
order by customer_name; 