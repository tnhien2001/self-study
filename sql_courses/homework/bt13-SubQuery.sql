use practice_data;

-- Bài 17: SubQuery - Truy vấn con trong SQL

-- 1. Truy vấn con trong SQl (subquery) là gì?
-- + Truy vấn con là 1 truy vấn nằm trong 1 truy vấn khác.
-- + Các truy vấn con nằm trong mệnh đề WHERE, FROM hoặc SELECT.

-- *** LƯU Ý: ***
-- + Truy vấn con còn đc gọi là INNER QUERY hay INNER SELECT.
-- + Truy vấn chính mà chứa truy vấn con được gọi là OUTER QUERY hay OUTER SELECT.

-- VD1: Subquery ở mệnh đề WHERE
SELECT order_id, order_quantity, product_name
FROM Orders
WHERE order_quantity > (SELECT AVG(order_quantity) FROM Orders);

-- *** Có một vài quy tắc mà Sub query phải tuân theo: ***
-- • Sub query phải được đặt trong dấu ngoặc đơn.
-- • Không thể sử dụng lệnh ORDER BY trong sub query, mặc dù truy vấn chính có thể sử dụng ORDER BY.
-- • Lệnh GROUP BY được sử dụng bình thường trong 1 sub query.

-- VD2: Subquery ở mệnh đề SELECT
select 	order_priority, sum(profit) as total_profit,
		(select avg(profit) from orders) as avg_profit -- Subquery
from orders
group by order_priority;

-- VD3: Subquery ở mệnh đề FROM
select * from
	(
    select order_priority, sum(profit) as total_profit
	from orders
    group by order_priority
    ) as A -- Subquery
where total_profit > 1200000;

-- ***--BT--***
-- BT1: Từ bảng dữ liệu Orders
-- Viết câu truy vấn tạo ra bảng kết quả gồm các cột: product_name, total_value, avg_value như bảng sau:
-- Trong đó:
-- + Product_name: là tên sản phẩm
-- + Total_value: là tổng giá trị các đơn hàng của từng sản phẩm
-- + Avg_value: là giá trị đơn hàng

select product_name,
		sum(value) as total_value,
        (
        select avg(value)
        from orders
        ) as avg_value
from orders
group by product_name
order by product_name;

-- BT2: Từ bảng dữ liệu Orders
-- Viết câu truy vấn tạo ra bảng kết quả gồm các sản phẩm có tổng lợi nhuận > giá trị trung bình lợi nhuận 
-- của tất cả các đơn hàng. Bảng kết quả gồm các cột: product_name, total_value như bảng sau:
-- Gợi ý: Sử dụng Subquery để tạo ra bảng tổng lợi nhuận theo từng sản phẩm. Đặt bảng kết quả đó có bí danh là A.
-- Sau đó truy vấn bảng A và lọc điều kiện trong mệnh đề WHERE
select * from
		(
        select product_name, sum(value) as total_value
        from orders
        group by product_name
        ) as A 
where total_value > (select avg(value) from orders);







