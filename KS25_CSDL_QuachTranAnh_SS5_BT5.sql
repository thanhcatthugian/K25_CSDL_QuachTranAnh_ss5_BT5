/*
Để tránh trạng thái null có thể dùng ràng buộc
not null hoặc cài đặt default là 0
*/
create database ss5bai5;
use ss5bai5;
select Tên_Khách_Hàng,
case
when total_orders > 500 then 'Kim Cương'
when total_orders between 100 and 499 then 'Vàng'
else  'Bạc' 
end as  Xep_Hang
from Users;