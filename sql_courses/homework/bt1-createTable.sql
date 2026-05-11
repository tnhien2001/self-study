drop database if exists homework;
create database homework;
use homework;
-- Câu 1: Tạo bảng
create table manager(
manager_id int,
manager_name nvarchar(255),
manager_level int,
region nvarchar(255),
salary float
);


insert into manager(manager_id, manager_name, manager_level, region, salary) values (111,'Chris',2,'Nunavut',370);
insert into manager(manager_id, manager_name, manager_level, region, salary) values (112,'William',3,'West',240);
insert into manager(manager_id, manager_name, manager_level, region, salary) values (113,'Erin',3,'Prarie',377);
insert into manager(manager_id, manager_name, manager_level, region, salary) values (114,'Sam',4,'West',454);
insert into manager(manager_id, manager_name, manager_level, region, salary) values (115,'Pat',3,'West',168);

-- Xuất bảng:
select * from manager;

-- Câu 2: Thêm 2 bản ghi cho bảng manager:
insert into manager(manager_id, manager_name, manager_level, region, salary) values (116,'Parker',1,'Quebec',390);
insert into manager(manager_id, manager_name, manager_level, region, salary) values (117,'Robert',2,'Prarie',407);

-- Xuất bảng:
select * from manager;

-- Câu 3: Xóa tất cả những thông tin trong bảng manager với manager_level = 2
delete from manager where manager_level=2;

-- Xuất bảng:
select * from manager;

-- Câu 4: Cập nhật salary trong bảng manager là 500 với region là West và Quebec:
update manager
set salary=500 where region in ('West','Quebec');

-- Xuất bảng:
select * from manager;