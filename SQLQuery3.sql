create database supermarketdb;
use supermarketdb;

create table customer(
customer_id int primary key,
customer_name varchar(25) not null,
cus_contact_no char(10) not null,
customer_email varchar(70) not null
);

create table supplier(
supplier_id int primary key,
supplier_name varchar(30),
supplier_contact_no char(10),
supplier_email varchar(65)
);

create table category(
category_id int primary key,
category_name varchar(45) not null
);


create table offer(
offer_id int primary key,
offer_name varchar(45) not null
); 

create table product(
product_id int primary key,
product_des varchar(130) not null,
product_price decimal(5,2) not null,
product_brand varchar(20) not null,
supplier_id int foreign key references supplier(supplier_id),
category_id int foreign key references category(category_id)
);
ALTER TABLE product
ALTER COLUMN product_price decimal(8,2);



create table store(
store_id int primary key,
store_name varchar(25) not null,
store_location varchar(20) not null
);

create table employee(
emp_ID int primary key,
emp_contact_no char(10) not null,
emp_dob date not null,
emp_salary decimal(10,2) not null,
emp_name varchar(30) not null,
store_id int foreign key references store(store_id)
);

create table payment(
payment_id int primary key,
payment_amount decimal(10,2) not null,
payment_desc varchar(100) not null,
payment_date date not null,
customer_id int foreign key references customer(customer_id),
emp_ID int foreign key references employee(emp_ID)
);


insert into customer
values(1,'Senuda Dilmith','0778967973','senuda0@gmail.com'); 
insert into customer
values(2,'Shihara Galappaththi','0774759797','shihara@gmail.com');
insert into customer
values(3,'Yuvindu Wanshanatha','0776783970','ywindu@gmail.com'); 
insert into customer
values(4,'Maleesha Shehari','0773647867','maleesha@gmail.com'); 
insert into customer
values(5,'Madhushika Lakmali','0773678492','madhushika@gmail.com'); 
insert into customer
values(6,'Navoda Ravishani','0779867546','navoda@gmail.com'); 
insert into customer
values(7,'Kasun Piyumal','0773345612','kasun@gmail.com'); 
insert into customer
values(8,'Shihan Sanjula','0773457786','shihan@gmail.com'); 
insert into customer
values(9,'Piyumi Hansamali','0773457786','piyumi@gmail.com'); 
insert into customer
values(10,'Sithara Sewwandi','0773457786','sithara@gmail.com'); 
insert into customer
values(11,'Nuthara Dhananjalee','0773457786','nuthara@gmail.com'); 
insert into customer
values(12,'Newanji De Silva','0773457786','newanji@gmail.com'); 

select * from customer;


insert into supplier
values(101,'Kaveesha Sathsarani','0774567657','kaveesha@gamil.com');
insert into supplier
values(102,'Sachini Umayangana','0773334685','sachini@gamil.com');
insert into supplier
values(103,'Tharushi Devindi','0774567839','tharushi@gamil.com');
insert into supplier
values(104,'Kevin Nilnethu','0773409098','kevin@gamil.com');
insert into supplier
values(105,'Kushan Perera','0773432354','kushan@gamil.com');
insert into supplier
values(106,'Kavindu Hansaka','0773433457','kavindu@gamil.com');
insert into supplier
values(107,'Dasun Himayantha','0773798645','dasun@gamil.com');
insert into supplier
values(108,'Bihan Ranuka','0778899776','bihan@gamil.com');
insert into supplier
values(109,'Dilshan Perera','0771234987','dilshan@gamil.com');
insert into supplier
values(110,'Dumindu Chathuranga','0779911224','dumindu@gamil.com');
insert into supplier
values(111,'Sanuka Nimsara','0778974568','sanuka@gamil.com');
insert into supplier
values(112,'Banuja Perera','0778886665','banuja@gamil.com');

select * from supplier;


insert into category
values(1,'short eats');
insert into category
values(2,'Dairy');
insert into category
values(3,'Beatuty care');
insert into category
values(4,'Bread spreads');
insert into category
values(5,'Vegetable');
insert into category
values(6,'Freezer');
insert into category
values(7,'care products');
insert into category
values(8,'sauces');
insert into category
values(9,'Baking');
insert into category
values(10,'Snacks');
insert into category
values(11,'Canned foods');
insert into category
values(12,'Kitchen');

select * from category;


insert into product
values(1,'submarine','540','JuicySub',101,1);
insert into product
values(2,'yoghurt','100','Newdale',102,2);
insert into product
values(3,'Hair gel','2000','A&D',103,3);
insert into product
values(4,'Peanut butter','3000','JK Products',104,4);
insert into product
values(5,'cucumber','200','keels',105,5);
insert into product
values(6,'smoothies','450','AB Smoothies',106,6);
insert into product
values(7,'toothpaste','200','Signal',107,7);
insert into product
values(8,'Hot sauce','1900','MD',108,8);
insert into product
values(9,'Cake icing','900','MR Cake',109,9);
insert into product
values(10,'cookies','1200','Little Lion',110,10);
insert into product
values(11,'Olives','1350','GreenVego',111,11);
insert into product
values(12,'Aluminium foils','890','KitchenEq',112,12);

select * from product;

insert into store
values(1,'store1','Gampaha');
insert into store
values(2,'store2','Homagama');
insert into store
values(3,'store3','Aluthgama');
insert into store
values(4,'store4','Minuwangoda');
insert into store
values(5,'store5','Galle');
insert into store
values(6,'store6','Matale');
insert into store
values(7,'store7','Yakkala');
insert into store
values(8,'store8','Mudungoda');
insert into store
values(9,'store9','ududgampola');
insert into store
values(10,'store10','Negambo');
insert into store
values(11,'store11','Colombo');
insert into store
values(12,'store12','Miriswatte');

select * from store;

insert into employee
values(11,'0778999876','1990-11-13','20000','shehan perera',1); 
insert into employee
values(12,'0773458642','1991-10-14','30000','kasun presanna',2); 
insert into employee
values(13,'0779846859','1992-09-15','28000','kaushan dhammika',3);
insert into employee
values(14,'0773790380','1993-08-16','20000','dedunu gee',4); 
insert into employee
values(15,'0771930987','1994-07-16','30000','yasiru rasanja',5); 
insert into employee
values(16,'0779996378','1996-02-17','28000','shehana krishmathi',6); 
insert into employee
values(17,'0770983679','1997-03-21','30000','thumashi nawanjana',7); 
insert into employee
values(18,'0773459874','1998-01-22','35000','milakshi de silva',8); 
insert into employee
values(19,'0772348765','1999-09-17','28000','sahan dewmina',9);
insert into employee
values(20,'077986789','1999-05-01','30000','ayod perera',10); 
insert into employee
values(21,'077344654','2000-02-17','35000','duleeka thiyangi',11); 
insert into employee
values(22,'077345765','1999-02-19','28000','nimesh dilshan',12);

select * from employee;

insert into offer
values(1,'Dairy 10% off');
insert into offer
values(2,'Kitchen items 5% off');
insert into offer
values(3,'Black friday 14% off');
insert into offer
values(4,'comBank cards 5% off');
insert into offer
values(5,'bills above 5000 5% off');
insert into offer
values(6,'fresh vegetables 25% off');
insert into offer
values(7,'25% fruits discount');
insert into offer
values(8,'Thaipongal day 12% off');
insert into offer
values(9,'Freeezer items 16% off');
insert into offer
values(10,'bills above 10000 15% off');
insert into offer
values(11,'Dialog Finance card 13% off');
insert into offer
values(12,'NDB card holders 20% off');

select * from offer;

insert into payment
values(1,'4790','Bread,peanut butter,olives','2022-01-01',1,11)
insert into payment
values(2,'3790','peanut butter,flour,olives','2022-05-10',2,12)
insert into payment
values(3,'2900','Meat,peanut butter,yoghurt','2022-06-11',3,13)
insert into payment
values(4,'7230','cookies,Aluminium foil,toothpaste','2022-09-17',4,14)
insert into payment
values(5,'4790','cucumber,peanut butter,olives','2022-12-12',5,15)
insert into payment
values(6,'5900','smoothies,peanut butter,olives','2022-04-18',6,16)
insert into payment
values(7,'3560','submarine,olives','2022-04-18',7,17)
insert into payment
values(8,'1190','flour','2022-05-16',2,18)
insert into payment
values(9,'2900','Meat,yoghurt','2022-06-17',3,19)
insert into payment
values(10,'3230','Aluminium foil,toothpaste','2022-09-14',4,20)
insert into payment
values(11,'1790','cucumber,olives','2022-03-19',5,21)
insert into payment
values(12,'3900','smoothies,peanut butter','2022-02-26',6,22)

select * from payment; 

create trigger customer_insert
on customer
after insert
as
select * from customer;

insert into customer
values(13,'deshan pathirana','0778967999','deshan0@gmail.com'); 

create trigger product_price_update
on product
after update
as
begin
update product set product_price = '840' where product_id = 1
end 

update product
set product_price = '80'
where product_id = 2;

select * from product;


create trigger delete_offer
on offer
after delete
as
begin
 select * from offer; 
end

delete from offer where offer_id = 12;


create trigger filter_employee_id
on product
after delete
as
begin
 select * 
 from product
 where product_id >=5;
end

delete from product where product_id = 11;

create function findProductAvg()
returns float(50)
as
begin
declare @avg float(50)
select @avg = avg(product_price)
from product
return @avg
end

SELECT [dbo].findProductAvg() as avergaePrice;

create function findEmployee(@id int)
returns varchar(30)
as
begin
declare @name varchar(30)
select @name = emp_name
from employee
where emp_ID = @id
return @name
end

SELECT [dbo].findEmployee(15) as EmployeeName;

create function findcateName(@id int)
returns varchar(100)
as
begin
declare @name varchar(100)
select @name = category_name
from category
where category_ID = @id
return @name
end

SELECT [dbo].findcateName(5) as CategoryName;

create function findprodName(@id int)
returns varchar(100)
as
begin
declare @name varchar(100)
select @name = product.product_des
from product
inner join category
on product.product_id = @id
return @name
end

SELECT [dbo].findprodName(3) as productName;

create view emp_view
as
select *
from employee where emp_ID>10;


select * from emp_view

create view highest_paid_emp
as
select * 
from employee
where emp_salary>30000


select * from highest_paid_emp;

create view expensive_prod
as
select * 
from product
where product_price>1500


select * from expensive_prod;


create procedure displayEmp
as
select * from employee

exec displayEmp;

create procedure findCus
@id int
as
select customer_id,customer_name
from customer
where customer_id = @id

exec findCus @id = 7;


create procedure prod_categ
as
select product.product_id,product.product_des,category.category_name 
from product
inner join category
on product.product_id = category.category_id


exec prod_categ;

create procedure all_prods
as
select product.product_des,category.category_name 
from product
left join category
on product.product_id = category.category_id


exec all_prods;


