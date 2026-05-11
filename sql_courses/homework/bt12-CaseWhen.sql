use practice_data;

-- Case - When Statement
-- => Tương tự hàm IF trong Excel
-- Cấu trúc Hàm Case-When:
-- 		CASE WHEN (điều kiện 1) THEN value_1
-- 		WHEN (điều kiện 1) THEN value_2
-- 		... ...
-- 		WHEN (điều kiện N) THEN value_N
-- 		ELSE value_0
-- 		END

-- VD:
SELECT product_category, product_subcategory,
CASE WHEN shipping_mode like '%Air%' then 'Air' 
ELSE 'Other' END AS shipping_method
FROM Orders;

-- ***--BT lý thuyết--***
-- 1. Từ bảng Orders: Nếu discount = 0 trả về 'No Discount' nếu
-- không thì trả về 'Discount'
select *,
CASE 
	WHEN discount = 0 then 'No Discount'
	ELSE 'Discount' 
END as DiscountOrNot
from orders;

-- 2. Từ bảng Orders sử dụng mệnh đề Case When theo điều
-- kiện sau:
-- • Value lớn hơn 1000 trả về High
-- • Value từ 200 đến 1000 trả về Medium
-- • Value nhỏ hơn 200 trả về Low
-- Cột mới tạo ra được đặt tên là Range_Value
select ID, order_id, order_date, order_priority, order_quantity, value,
case
	when value > 1000 then 'High'
    when value>200 then 'Medium'
    else 'Low'
end as 'Range_Value'
from orders;

-- ***--BT thực hành--***
-- BT1. Tạo ra một bảng bao gồm các cột:
-- order_id, customer_name, product_category, 
-- product_subcategory, product_name, thickness
-- Thỏa mãn các điều kiện sau:
-- Product_subcategory = 'Pens & Art Supplies'
-- Product_name chứa từ 'Newell'
-- Giả sử rằng nếu product_name là "Newell 345", nó có nghĩa
-- là độ dày của nó là 345 mm
select 	order_id, customer_name, product_category, product_subcategory, product_name,
		case
			when product_name like 'Newell 3%' then concat_ws(' ',right(product_name,3),'mm') 
		end as THICKNESS
from orders
where product_subcategory like 'Pens & Art Supplies';

-- BT2. Tạo ra một bảng bao gồm các cột: 
-- Year, count_orders, total_value, total_profit, 
-- total_quantity và sắp xếp theo thứ tự các năm giảm dần.
select  year(order_date) as year, 
		count(year(order_date)) as count_orders, 
		sum(value) as total_value,
        sum(profit) as total_profit,
        sum(order_quantity) as total_order_quantity
from orders
group by year(order_date);

-- BT3.
-- Từ bảng Managers tạo ra một bảng gồm các cột: 
-- manager_name, manager_level, manager_phone, level
-- Cột level được tạo ra thỏa mãn điều kiện sau:
-- Nếu manager_level =1 trả về là 'Fresher'
-- Nếu manager_level = 2 và 3 trả về là 'Junior'
-- Nếu manager_level = 4 trả về là 'Senior'
select *,
case
	when manager_level = 1 then 'Fresher'
    when manager_level = 2 or manager_level = 3 then 'Junior'
    else 'Senior'
end as level
from managers;



