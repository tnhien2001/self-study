use practice_data;

-- Stored Procedures

-- Cách 1: (đơn giản) tạo thông dụng:
-- create procedure discountOrders()
-- select *
-- from orders
-- where discount > 0;

call discountOrders();

-- Cách 2: Dùng DELIMITER 
-- delimiter $$
-- create procedure managerProfiles()
-- begin
-- 	select * from managers;
--     select province, region from profiles;
-- end $$
-- delimiter ;
call managerProfiles();

-- Tạo Stored Procedures và yêu cầu phải nhập tham số thì mới xuất ra.
-- delimiter $$
-- create procedure productCheck(productCategory varchar(255))
-- begin
-- 	select customer_name, province, region, product_category, product_subcategory, product_name
--     from orders
--     where product_category = productCategory;
-- end $$
-- delimiter ;
select * from orders;
call productCheck('Furniture');







