use master
IF DB_ID('DATN') IS NOT NULL --KIỂM TRA CSDL CẦN TẠO ĐÃ TỒN TẠI CHƯA
	DROP DATABASE DATN --XÓA CSDL
GO
create database DATN

use DATN
create table Accounts
(
	username	nvarchar(50)	primary key,
	password	nvarchar(50)	not null,
	fullname	nvarchar(50)	not null,
	email		nvarchar(50)	not null,
	activated	bit				not null default 1,
	admin		bit				not null default 0
)
create table Orders
(
	id			bigint			primary key identity(1,1),
	username	nvarchar(50)	foreign key references Accounts(username),
	create_date	datetime		not null,
	address		nvarchar(100)	not null,
	nguoinhan	nvarchar(50)	not null,
	tongtien	float			not null
)
create table Categories 
(
	id			char(4)			primary key,
	name		nvarchar(50)	not null
)
create table Products
(
	id			int				primary key identity(1,1),
	category_id	char(4)			foreign key references Categories(id),
	name		nvarchar(50)	not null,
	image		nvarchar(50)	not null,
	price		float			not null,
	size		int				not null,
	quantity	int				not null,
	available	bit				not null default 1	
)
create table OrderDetails
(
	id			bigint			primary key identity(1,1),
	order_id	bigint			foreign key references Orders(id),
	product_id	int				foreign key references Products(id),
	price		float			not null,
	quantity	int				not null
)

INSERT INTO Accounts(username, password, fullname, email, activated, admin) VALUES
(N'user1', N'123', N'Lê Ngô Hoàng Châu', N'chaulnh@fpt.edu.vn', 1, 1),
(N'user2', N'123', N'Trần Minh Tâm', N'tamtm@fpt.edu.vn', 1, 1),
(N'user3', N'123', N'Nguyễn Huỳnh Quốc Minh', N'minhnhq@fpt.edu.vn', 1, 0),
(N'user4', N'123', N'Nguyễn Hoàng Minh', N'minhnh@fpt.edu.vn', 1, 0)

INSERT INTO Categories(id, name) VALUES
('IC', 'Ice Coffee'),
('MC', 'Milk Coffee'),
('F', 'Fruit Tea')

INSERT INTO Products( category_id, name, image, price, size, quantity, available) VALUES
( 'IC', 'ICED COFFEE MOKA', '001.png', '100', 40, 10, 1),
( 'IC', 'NO. XNUMX ICED COFFEE', '002.png', '90', 40, 10, 1),
( 'MC', 'WHITE COFFEE', '003.png', '90', 40, 10, 1),
( 'MC', 'CHEESE COFFEE', '004.png', '60', 40, 10, 1),
( 'MC', 'COCONUT MILK COFFEE', '005.png', '50', 40, 10, 1),
( 'MC', 'MILK COFFEE', '006.png', '90', 40, 10, 1),
( 'MC', 'MOKA MILK COFFEE', '007.png', '60', 40, 10, 1),
( 'MC', 'MILK CHEESE COFFEE', '008.png', '90', 40, 10, 1),
( 'MC', 'CHOCOLATE MILK COFFEE', '009.png', '100', 40, 10, 1),
( 'MC', 'FRESH MILK COFFEE', '010.png', '80', 40, 10, 1),
( 'IC', 'COFFEE ICE BLENDED', '011.png', '90', 40, 10, 1),
( 'IC', 'CHOCOLATE COFFEE', '012.png', '100', 40, 10, 1),
( 'IC', 'MATCHA COFFEE', '013.png', '80', 40, 10, 1),
( 'IC', 'ROYAL PACKAGING STONE', '014.png', '30', 40, 10, 1),
( 'IC', 'COCONUT SOCOLA', '015.png', '55', 40, 10, 1),
( 'IC', 'SUCCESSFUL ROLLER', '016.png', '35', 40, 10, 1),
( 'IC', 'INCREDIBLE STEEL', '017.png', '90', 40, 10, 1),
( 'IC', 'TROPICAL FABRIC', '018.png', '90', 40, 10, 1),
( 'IC', 'COCONUT CONSTRUCTION', '019.png', '60', 40, 10, 1),
( 'MC', 'MATCHA RED PEAK', '020.png', '40', 40, 10, 1),
( 'MC', 'PEARL MILK TEA', '021.png', '80', 40, 10, 1),
( 'F', 'FRESH LICENSE POTATO', '022.png', '90', 40, 10, 1),
( 'F', 'HONG TEA FRESH LEMON', '023.png', '90', 40, 10, 1),
( 'F', 'FRESH LEMON TEAM', '024.png', '50', 40, 10, 1),
( 'F', 'PEACH TEA', '025.png', '90', 40, 10, 1)

INSERT INTO Orders ( username, create_date, address, nguoinhan, tongtien) VALUES
(N'NV02', '2023-01-01', N'Tăng Nhơn Phú', N'Tâm', 180),
(N'NV01', '2023-02-01', N'Quang Trung', N'Châu', 50),
(N'NV02', '2023-03-01', N'Phạm Văn Đồng', N'Tâm', 60),
(N'NV01', '2023-04-01', N'Quang Trung', N'Châu', 35),
(N'NV03', '2022-07-01', N'Phạm Văn Đồng', N'Minh', 35),
(N'NV01', '2021-12-01',N'Quang Trung', N'Châu', 50)

INSERT INTO OrderDetails ( order_id, product_id, price, quantity) VALUES
	(1, 1, 90, 2),
	(2, 24, 50, 1),
	(3, 7, 60, 1),
	(4, 16, 35, 1),
	(5, 24, 50, 1),
	(6, 16, 35, 1),
	(7, 24, 50, 1)


select * from Accounts
select * from Categories
select * from Products
select * from OrderDetails
select * from Orders




select MONTH(o.create_date), SUM(o.tongtien)
from orders o
where YEAR(o.create_date) = 2023
group by MONTH(create_date)

select year(create_date)
from orders 
group by year(create_date)

select create_date
from orders 
group by create_date

CREATE PROCEDURE DOANH_THU_NAM @year int
AS
BEGIN
    select MONTH(o.create_date), SUM(o.tongtien)
	from orders o
	where YEAR(o.create_date) = @year
	group by MONTH(create_date)
END

EXECUTE DOANH_THU_NAM @year = 2023;