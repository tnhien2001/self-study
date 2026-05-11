use practice_data;

-- Bài 19: Bảng Tạm
-- Bảng tạm có cấu trúc và chức năng như 1 bảng cố định, bình thường.
-- Thay vì tạo 1 bảng trong Database, bảng tạm đc tạo ra và lưu trữ trong tempdb

-- SQL có 2 dạng bảng: Local temporary table và Global temporary table
-- + Local temporary table (#Table1): Bảng tạm cục bộ, sử dụng để tạo ra bảng tạm 
-- và tồn tại trong kết của người dùng tạo ra bảng đó và sẽ bị hủy khi ngắt kết nối.

-- + Global temporary table (##Table2): Bảng tạm toàn cục, sử dụng để tạo ra bảng tạm 
-- và tồn tại đến khi nào tất cả các kết nối đến csdl làm việc đóng hết.
-- Có thể sử dụng ở kết nối của người dùng khác.
-- ==> Trong MySQL không có nhưng SQL Server thì có.

-- ***--Local temporary table--***
-- CÁCH 1: Tạo bảng tạm bằng câu lệnh CREATE TABLE thì bảng được tạo sẽ là bảng rỗng. Muốn thêm dữ
-- liệu phải sử dụng câu lệnh INSERT INTO để thêm dữ liệu vào bảng tạm đó.
-- CREATE TEMPORARY TABLE table_name 
-- (
-- ...
-- name_value(type_of_value),...
-- ...
-- )
-- INSERT INTO table_name... values (...)

-- CÁCH 2: Tạo bảng tạm để lưu kết quả của một câu truy vấn
-- CREATE TEMPORARY table_name
-- SELECT COLUMNS
-- FROM original_table
-- ...

create temporary table tempTable
select product_name,
		sum(value) as total_value,
        sum(profit) as total_profit
from orders
group by product_name;

select * from tempTable;