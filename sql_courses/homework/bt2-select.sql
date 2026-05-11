use practice_data;

-- Bài 1: Viết truy vấn từ bảng Orders
-- Xuất order_id, order_date, order_quantity, value, profit, revenue, total_cost
select 	order_id, order_date, order_quantity, value, profit, 
		order_quantity * unit_price * (1 - discount) as revenue, 
        product_base_margin * unit_price + shipping_cost as total_cost
from orders;
