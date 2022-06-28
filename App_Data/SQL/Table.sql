

--创建管理员表
use WK_20
go

if exists (select * from sysobjects where id=object_id(N'AdiminiWK_20')and objectproperty(id,N'IsUserTable')=1)
drop table AdiminiWK_20
go

create table AdiminiWK_20
(
Glnum nchar(20) PRIMARY KEY  not null,		--管理员账号
pwd nchar(12) not null,						--密码
Number nchar(12) not null,					--管理员编号
Name nchar(10),								--姓名
Sex nchar(2),								--性别
Tel nchar(12),								--电话号码
Stock nchar(5)								--管理仓库
)
go

	exec sp_addextendedproperty N'MS_Description',N'AdiminiWK_20',	N'user',N'dbo',N'table',N'AdiminiWK_20',Null,Null
	exec sp_addextendedproperty N'MS_Description',N'管理员账号',			N'user',N'dbo',N'table',N'AdiminiWK_20',N'column',N'Glnum'
	exec sp_addextendedproperty N'MS_Description',N'密码',					N'user',N'dbo',N'table',N'AdiminiWK_20',N'column',N'pwd'
	exec sp_addextendedproperty N'MS_Description',N'管理员编号',			N'user',N'dbo',N'table',N'AdiminiWK_20',N'column',N'Number'
	exec sp_addextendedproperty N'MS_Description',N'姓名',					N'user',N'dbo',N'table',N'AdiminiWK_20',N'column',N'Name'
	exec sp_addextendedproperty N'MS_Description',N'性别',					N'user',N'dbo',N'table',N'AdiminiWK_20',N'column',N'Sex'
	exec sp_addextendedproperty N'MS_Description',N'电话号码',				N'user',N'dbo',N'table',N'AdiminiWK_20',N'column',N'Tel'
	exec sp_addextendedproperty N'MS_Description',N'管理仓库',				N'user',N'dbo',N'table',N'AdiminiWK_20',N'column',N'Stock'
go


--创建订单表
use WK_20
go

if exists (select * from sysobjects where id=object_id(N'OutStockWK_20')and objectproperty(id,N'IsUserTable')=1)
drop table OutStockWK_20
go

create table OutStockWK_20
(
Dnum nchar(30)  not null,		--订单编号
Glnum nchar(20),				--管理员编号
id nchar(20),					--用户id
Spname nchar(50),				--商品名称
Ctime datetime,					--创建时间
Status nchar(6),				--发货状态
Adr nchar(50)					--发货地址

)
go

	exec sp_addextendedproperty N'MS_Description',N'OutStockWK_20',			N'user',N'dbo',N'table',N'OutStockWK_20',Null,Null
	exec sp_addextendedproperty N'MS_Description',N'订单编号',			N'user',N'dbo',N'table',N'OutStockWK_20',N'column',N'Dnum'
	exec sp_addextendedproperty N'MS_Description',N'管理员编号',		N'user',N'dbo',N'table',N'OutStockWK_20',N'column',N'Glnum'
	exec sp_addextendedproperty N'MS_Description',N'id',				N'user',N'dbo',N'table',N'OutStockWK_20',N'column',N'id'
	exec sp_addextendedproperty N'MS_Description',N'商品名称',			N'user',N'dbo',N'table',N'OutStockWK_20',N'column',N'Spname'
	exec sp_addextendedproperty N'MS_Description',N'创建时间',			N'user',N'dbo',N'table',N'OutStockWK_20',N'column',N'Ctime'
	exec sp_addextendedproperty N'MS_Description',N'发货状态',			N'user',N'dbo',N'table',N'OutStockWK_20',N'column',N'Status'
	exec sp_addextendedproperty N'MS_Description',N'发货地址',			N'user',N'dbo',N'table',N'OutStockWK_20',N'column',N'Adr'

go

--创建库存表
use WK_20
go

if exists (select * from sysobjects where id=object_id(N'StockWK_20')and objectproperty(id,N'IsUserTable')=1)
drop table StockWK_20
go

create table StockWK_20
(
Spnum nchar(30)  not null,					--商品编号
Glnum nchar(20),							--管理员编号
Spname nchar(50),							--商品名称
Sptype nchar(10),							--商品类型
Price float,								--单价
Snum nchar(5),								--仓库名
Rkdate datetime,							--入库日期
Sdate int									--保质期（月）

)
go

	exec sp_addextendedproperty N'MS_Description',N'StockWK_20',				N'user',N'dbo',N'table',N'StockWK_20',Null,Null
	exec sp_addextendedproperty N'MS_Description',N'商品编号',					N'user',N'dbo',N'table',N'StockWK_20',N'column',N'Spnum'
	exec sp_addextendedproperty N'MS_Description',N'管理员编号',				N'user',N'dbo',N'table',N'StockWK_20',N'column',N'Glnum'
	exec sp_addextendedproperty N'MS_Description',N'商品名称',					N'user',N'dbo',N'table',N'StockWK_20',N'column',N'Spname'
	exec sp_addextendedproperty N'MS_Description',N'商品类型',					N'user',N'dbo',N'table',N'StockWK_20',N'column',N'Sptype'
	exec sp_addextendedproperty N'MS_Description',N'单价',						N'user',N'dbo',N'table',N'StockWK_20',N'column',N'Price'
	exec sp_addextendedproperty N'MS_Description',N'仓库名',					N'user',N'dbo',N'table',N'StockWK_20',N'column',N'Snum'
	exec sp_addextendedproperty N'MS_Description',N'入库日期',					N'user',N'dbo',N'table',N'StockWK_20',N'column',N'Rkdate'
	exec sp_addextendedproperty N'MS_Description',N'保质期（月）',				N'user',N'dbo',N'table',N'StockWK_20',N'column',N'Sdate'

go

--创建用户表
use WK_20
go

if exists (select * from sysobjects where id=object_id(N'UserWK_20')and objectproperty(id,N'IsUserTable')=1)
drop table UserWK_20
go

create table UserWK_20
(
id nchar(20) PRIMARY KEY  not null,			--用户id
Name nchar(10),								--姓名
Sex nchar(2),								--性别
Tel nchar(12),								--电话号码
Brday datetime,								--出生日期
Lev int,									--用户等级
Adr nchar(50)								--地址

)
go

	exec sp_addextendedproperty N'MS_Description',N'UserWK_20',			N'user',N'dbo',N'table',N'UserWK_20',Null,Null
	exec sp_addextendedproperty N'MS_Description',N'用户id',			N'user',N'dbo',N'table',N'UserWK_20',N'column',N'id'
	exec sp_addextendedproperty N'MS_Description',N'姓名',				N'user',N'dbo',N'table',N'UserWK_20',N'column',N'Name'
	exec sp_addextendedproperty N'MS_Description',N'性别',				N'user',N'dbo',N'table',N'UserWK_20',N'column',N'Sex'
	exec sp_addextendedproperty N'MS_Description',N'电话号码',			N'user',N'dbo',N'table',N'UserWK_20',N'column',N'Tel'
	exec sp_addextendedproperty N'MS_Description',N'出生日期',			N'user',N'dbo',N'table',N'UserWK_20',N'column',N'Brday'
	exec sp_addextendedproperty N'MS_Description',N'用户等级',			N'user',N'dbo',N'table',N'UserWK_20',N'column',N'Lev'
	exec sp_addextendedproperty N'MS_Description',N'收货地址',			N'user',N'dbo',N'table',N'UserWK_20',N'column',N'Adr'	
go


