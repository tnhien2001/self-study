use practice_data;

-- Hàm JOIN trong SQL
-- Các loại Join: 
-- + INNER JOIN hay JOIN,
-- + LEFT OUTER JOIN hay LEFT JOIN
-- + RIGHT OUTER JOIN hay RIGHT JOIN
-- + FULL OUTER JOIN hay FULL JOIN

-- ***--BT--***

-- BT1:
-- Từ bảng Orders và Returns tính tổng order_quantity, value, 
-- profit của các đơn hàng có trạng thái status = 'Returned' 
-- (kết quả chỉ lấy ra đơn hàng có trạng thái returned)
-- Lưu ý: Làm với 3 loại join ( inner join, left join, right join)

-- inner join:
select 	o.order_id as order_id_return,
		o.order_date,
        sum(o.order_quantity) as total_order_quantity,
        sum(o.value) as total_value,
        sum(o.profit) as total_profit
from orders as o
join practice_data.returns as r 
on o.order_id = r.order_id  
where r.status like 'Returned'
group by order_id_return, o.order_date;

-- left join:
select 	o.order_id as order_id_return,
		o.order_date,
        sum(o.order_quantity) as total_order_quantity,
        sum(o.value) as total_value,
        sum(o.profit) as total_profit
from orders as o
left join practice_data.returns as r 
on o.order_id = r.order_id  
where r.status like 'Returned'
group by order_id_return, o.order_date;

-- right join:
select 	o.order_id as order_id_return,
		o.order_date,
        sum(o.order_quantity) as total_order_quantity,
        sum(o.value) as total_value,
        sum(o.profit) as total_profit
from orders as o
left join practice_data.returns as r 
on o.order_id = r.order_id  
where r.status like 'Returned'
group by order_id_return, o.order_date;


-- BT2: Sử dụng 2 bảng orders và profiles 
-- Tính total_order_quantity, 
-- total_value,total_profit của từng manager
-- Gợi ý: Mối quan hệ giữa 2 bảng là cột province
select * from orders;
select * from profiles;

select p.manager, 
		sum(o.order_quantity) as total_order_quantity,
        sum(o.value) as total_value,
        sum(o.profit) as total_profit
from orders as o
join profiles as p
on o.province = p.province
group by p.manager