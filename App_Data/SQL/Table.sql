

--��������Ա��
use WK_20
go

if exists (select * from sysobjects where id=object_id(N'AdiminiWK_20')and objectproperty(id,N'IsUserTable')=1)
drop table AdiminiWK_20
go

create table AdiminiWK_20
(
Glnum nchar(20) PRIMARY KEY  not null,		--����Ա�˺�
pwd nchar(12) not null,						--����
Number nchar(12) not null,					--����Ա���
Name nchar(10),								--����
Sex nchar(2),								--�Ա�
Tel nchar(12),								--�绰����
Stock nchar(5)								--����ֿ�
)
go

	exec sp_addextendedproperty N'MS_Description',N'AdiminiWK_20',	N'user',N'dbo',N'table',N'AdiminiWK_20',Null,Null
	exec sp_addextendedproperty N'MS_Description',N'����Ա�˺�',			N'user',N'dbo',N'table',N'AdiminiWK_20',N'column',N'Glnum'
	exec sp_addextendedproperty N'MS_Description',N'����',					N'user',N'dbo',N'table',N'AdiminiWK_20',N'column',N'pwd'
	exec sp_addextendedproperty N'MS_Description',N'����Ա���',			N'user',N'dbo',N'table',N'AdiminiWK_20',N'column',N'Number'
	exec sp_addextendedproperty N'MS_Description',N'����',					N'user',N'dbo',N'table',N'AdiminiWK_20',N'column',N'Name'
	exec sp_addextendedproperty N'MS_Description',N'�Ա�',					N'user',N'dbo',N'table',N'AdiminiWK_20',N'column',N'Sex'
	exec sp_addextendedproperty N'MS_Description',N'�绰����',				N'user',N'dbo',N'table',N'AdiminiWK_20',N'column',N'Tel'
	exec sp_addextendedproperty N'MS_Description',N'����ֿ�',				N'user',N'dbo',N'table',N'AdiminiWK_20',N'column',N'Stock'
go


--����������
use WK_20
go

if exists (select * from sysobjects where id=object_id(N'OutStockWK_20')and objectproperty(id,N'IsUserTable')=1)
drop table OutStockWK_20
go

create table OutStockWK_20
(
Dnum nchar(30)  not null,		--�������
Glnum nchar(20),				--����Ա���
id nchar(20),					--�û�id
Spname nchar(50),				--��Ʒ����
Ctime datetime,					--����ʱ��
Status nchar(6),				--����״̬
Adr nchar(50)					--������ַ

)
go

	exec sp_addextendedproperty N'MS_Description',N'OutStockWK_20',			N'user',N'dbo',N'table',N'OutStockWK_20',Null,Null
	exec sp_addextendedproperty N'MS_Description',N'�������',			N'user',N'dbo',N'table',N'OutStockWK_20',N'column',N'Dnum'
	exec sp_addextendedproperty N'MS_Description',N'����Ա���',		N'user',N'dbo',N'table',N'OutStockWK_20',N'column',N'Glnum'
	exec sp_addextendedproperty N'MS_Description',N'id',				N'user',N'dbo',N'table',N'OutStockWK_20',N'column',N'id'
	exec sp_addextendedproperty N'MS_Description',N'��Ʒ����',			N'user',N'dbo',N'table',N'OutStockWK_20',N'column',N'Spname'
	exec sp_addextendedproperty N'MS_Description',N'����ʱ��',			N'user',N'dbo',N'table',N'OutStockWK_20',N'column',N'Ctime'
	exec sp_addextendedproperty N'MS_Description',N'����״̬',			N'user',N'dbo',N'table',N'OutStockWK_20',N'column',N'Status'
	exec sp_addextendedproperty N'MS_Description',N'������ַ',			N'user',N'dbo',N'table',N'OutStockWK_20',N'column',N'Adr'

go

--��������
use WK_20
go

if exists (select * from sysobjects where id=object_id(N'StockWK_20')and objectproperty(id,N'IsUserTable')=1)
drop table StockWK_20
go

create table StockWK_20
(
Spnum nchar(30)  not null,					--��Ʒ���
Glnum nchar(20),							--����Ա���
Spname nchar(50),							--��Ʒ����
Sptype nchar(10),							--��Ʒ����
Price float,								--����
Snum nchar(5),								--�ֿ���
Rkdate datetime,							--�������
Sdate int									--�����ڣ��£�

)
go

	exec sp_addextendedproperty N'MS_Description',N'StockWK_20',				N'user',N'dbo',N'table',N'StockWK_20',Null,Null
	exec sp_addextendedproperty N'MS_Description',N'��Ʒ���',					N'user',N'dbo',N'table',N'StockWK_20',N'column',N'Spnum'
	exec sp_addextendedproperty N'MS_Description',N'����Ա���',				N'user',N'dbo',N'table',N'StockWK_20',N'column',N'Glnum'
	exec sp_addextendedproperty N'MS_Description',N'��Ʒ����',					N'user',N'dbo',N'table',N'StockWK_20',N'column',N'Spname'
	exec sp_addextendedproperty N'MS_Description',N'��Ʒ����',					N'user',N'dbo',N'table',N'StockWK_20',N'column',N'Sptype'
	exec sp_addextendedproperty N'MS_Description',N'����',						N'user',N'dbo',N'table',N'StockWK_20',N'column',N'Price'
	exec sp_addextendedproperty N'MS_Description',N'�ֿ���',					N'user',N'dbo',N'table',N'StockWK_20',N'column',N'Snum'
	exec sp_addextendedproperty N'MS_Description',N'�������',					N'user',N'dbo',N'table',N'StockWK_20',N'column',N'Rkdate'
	exec sp_addextendedproperty N'MS_Description',N'�����ڣ��£�',				N'user',N'dbo',N'table',N'StockWK_20',N'column',N'Sdate'

go

--�����û���
use WK_20
go

if exists (select * from sysobjects where id=object_id(N'UserWK_20')and objectproperty(id,N'IsUserTable')=1)
drop table UserWK_20
go

create table UserWK_20
(
id nchar(20) PRIMARY KEY  not null,			--�û�id
Name nchar(10),								--����
Sex nchar(2),								--�Ա�
Tel nchar(12),								--�绰����
Brday datetime,								--��������
Lev int,									--�û��ȼ�
Adr nchar(50)								--��ַ

)
go

	exec sp_addextendedproperty N'MS_Description',N'UserWK_20',			N'user',N'dbo',N'table',N'UserWK_20',Null,Null
	exec sp_addextendedproperty N'MS_Description',N'�û�id',			N'user',N'dbo',N'table',N'UserWK_20',N'column',N'id'
	exec sp_addextendedproperty N'MS_Description',N'����',				N'user',N'dbo',N'table',N'UserWK_20',N'column',N'Name'
	exec sp_addextendedproperty N'MS_Description',N'�Ա�',				N'user',N'dbo',N'table',N'UserWK_20',N'column',N'Sex'
	exec sp_addextendedproperty N'MS_Description',N'�绰����',			N'user',N'dbo',N'table',N'UserWK_20',N'column',N'Tel'
	exec sp_addextendedproperty N'MS_Description',N'��������',			N'user',N'dbo',N'table',N'UserWK_20',N'column',N'Brday'
	exec sp_addextendedproperty N'MS_Description',N'�û��ȼ�',			N'user',N'dbo',N'table',N'UserWK_20',N'column',N'Lev'
	exec sp_addextendedproperty N'MS_Description',N'�ջ���ַ',			N'user',N'dbo',N'table',N'UserWK_20',N'column',N'Adr'	
go


