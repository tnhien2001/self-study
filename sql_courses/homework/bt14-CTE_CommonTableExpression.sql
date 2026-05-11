use practice_data;

-- CTE - Common Table Expression:
-- + CTE là 1 bảng chứa data tạm thời từ câu lệnh đc định nghĩa trong pvi của nó.
-- + Tương tự bảng dẫn xuất (derived table) ở chỗ không đc lưu trữ như 1 đối tượng và
-- chỉ kéo dài trong suốt thời gian của câu truy vấn.
-- + Không giống derived table, CTE có thể tự tham chiếu tới bản thân của nó
-- và có thể tham chiếu nhiều lần trong 1 câu truy vấn.

-- SYNTAX:
-- with engineers (CTE_name) as (
-- 			select *
--         	from employees				-- CTE Body
--         	where dept='Engineering'
-- )
-- select *
-- from engineers -- CTE Usage
-- where ...

-- Mục đích của CTE:
-- + Tạo truy vấn đệ quy (recursive query)
-- + Thay thế View trong 1 số trường hợp
-- + Sử dụng đc nhiều CTE trog 1 truy vấn duy nhất.

-- Ưu điểm của CTE:
-- Khả năng đọc data đc cải thiện và dễ dàng bảo trì các truy vấn phức tạp.
-- Đc phân thành các khối nhỏ, đơn giản.
-- Những khối này đc sử dụng để xây dựng các CTE phức tạp hơn cho đến khi tập hợp kết quả cuối cùng đc tạo ra.

-- VD:
with A as (
select order_priority, sum(profit) as total_profit
from orders
group by order_priority
)
select * from A where total_profit > 1200000;

select * from orders;

-- BT1: Từ bảng dữ liệu Orders
-- Viết câu truy vấn tạo ra bảng kết quả để lấy danh sách các khách hàng có số lượng đơn hàng > 10.
with bt1 as (
select customer_name, count(order_id) as count_orders
from orders
group by customer_name
)
select * from bt1 where count_orders > 10 order by customer_name;


