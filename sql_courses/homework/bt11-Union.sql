use practice_data;

-- UNION và UNION ALL
-- 1. Định nghĩa: Là phép nối các bảng có cấu trúc giống nhau

-- 2. Cấu trúc giống nhau là:
-- + Cùng số cột.
-- + Có các loại dữ liệu tương tự.
-- + Mỗi bảng phải theo thứ tự.

-- 3. Cấu trúc lệnh mẫu:
-- VD:	SELECT column1, column2, column3 FROM table1 
-- 		UNION hoặc UNION ALL
-- 		SELECT column1, column2, column3 FROM table2

-- VD:
SELECT t1.province, t1.region FROM Profiles t1
UNION ALL
SELECT t2.province, t2.region FROM Orders t2;

-- ***--BT--***

-- BT1.	Hiển thị bảng tính tổng lợi nhuận (total_profit)mỗimức độ ưu tiên
-- 		(order_priority) sử dụng union all. (BT/90)

-- 1. Trường hợp UNION:
select order_priority, sum(profit) as total_profit
from orders
where order_priority in ('Not Specified', 'Low')
group by order_priority
union
select order_priority, sum(profit) as total_profit
from orders
group by order_priority;

-- 2. Trường hợp UNION ALL
select order_priority, sum(profit) as total_profit
from orders
where order_priority in ('Not Specified', 'Low')
group by order_priority
union all
select order_priority, sum(profit) as total_profit
from orders
group by order_priority;

-- BT2. Hiển thị bảng tính tổng lợi nhuậnmỗi mức độ ưu tiên bao gồm dòng total.
select order_priority, sum(profit) as total_profit
from orders
group by order_priority
union
select 	'Total' as order_priority,
		sum(profit) as total_profit
from orders;
