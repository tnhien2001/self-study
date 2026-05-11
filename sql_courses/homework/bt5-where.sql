use practice_data;

-- WHERE
-- 1. Trả về kết quả BẰNG một giá trị xác định trong một cột
-- => Sử dụng dấu "=" cho mệnh đề WHERE
-- VD: SELECT * FROM Orders WHERE order_priority = 'Medium'

-- 2. Trả về kết quả KHÁC một giá trị xác định trong một cột
-- => Sử dụng "!=" hoặc "<>" cho mệnh đề WHERE
-- SELECT * FROM Orders WHERE order_priority <> 'High'

-- 3. Trả về kết quả chứa danh sách nhiều giá trị xác định trong một cột
-- => Sử dụng dấu "IN()" cho mệnh đề WHERE
-- VD: SELECT * FROM Orders WHERE order_priority IN ('Medium','Low','High')

-- 4. Trả về kết quả không bao gồm danh sách nhiều giá trị xác định trong một cột
-- => Sử dụng "NOT IN()" cho mệnh đề WHERE
-- VD: SELECT * FROM Orders WHERE order_priority NOT IN ('Medium', 'Low','High')

-- 5. Trả về kết quả theo điều kiện chưa xác định ( điều kiện là chứa kí tự nào đó) trong một cột
-- => Sử dụng "like" trong mệnh đề WHERE
-- VD: Select * from Orders where product_subcategory like 'Co%'

-- 6. Lọc các kết quả theo điều kiện NULL và NOT NULL
-- VD: SELECT * FROM Returns WHERE status is (NOT) NULL


-- 7.Lọc kết quả trong một khoảng nào đó: 
-- BETWEEN value1 AND value2
-- SELECT * FROM Orders WHERE profit between 100 and 1000

-- *****-----*****

-- BT:
-- Bài 1: Từ bảng Orders. Viết các câu lệnh theo từng điều kiện sau:
-- 1.1 region là “West”
select *
from orders
where region like 'West';

-- 1.2 order_priority không bao gồm “Critical”
select *
from orders
where order_priority not like "Critical";

-- 1.3 order_prioritylà “High” hoặc order_priority là “Low” hoặc order_priority là “Medium” hoặc
-- order_priority là “Not Specified”
select *
from orders
where order_priority in ('High','Low','Medium','Not Specified');

-- 1.4 province chứa từ “New”
select *
from orders
where province like '%New%';

-- 1.5 shipping_mode không chứa từ “Air” và value nhỏ hơn 500
select *
from orders
where shipping_mode like '%Air%' and value < 500;

-- 1.6 product_subcategory bắt đầu với từ “Co”
select *
from orders
where product_subcategory like 'Co%';

-- 1.7 customer_segment kết thúc là “e” và order_quantity lớn hơn 10
select *
from orders
where customer_segment like '%e' and order_quantity > 10;



