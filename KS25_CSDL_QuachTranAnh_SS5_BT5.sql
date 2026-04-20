/*
Để tránh trạng thái null có thể dùng ràng buộc
not null hoặc cài đặt default là 0
*/
create database ss5bai5;
use ss5bai5;
create table Users(
customerName varchar(50) not null,
id int primary key auto_increment,
total_orders int not null
);
INSERT INTO Users (customerName, total_orders) VALUES
('Nguyen Van A', 600),  
('Tran Thi B', 350),     
('Le Van C', 45),       
('Pham Van D', 550),    
('Hoang Thi E', 120), 
('Do Van F', 80),   
('Vu Thi G', 1000),      
('Ngo Van H', 499),   
('Dang Thi I', 10),  
('Bui Van J', 200);      
select customerName,
case
when total_orders > 500 then 'Kim Cương'
when total_orders between 100 and 499 then 'Vàng'
else  'Bạc' 
end as  Xep_Hang
from Users;