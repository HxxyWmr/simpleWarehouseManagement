--创建数据库名为WK_20
exec sp_configure N'show advanced options',1
go
reconfigure
go
exec sp_configure N'xp_cmdshell',1
go
reconfigure
go
use master
go

if exists(select * from sys.databases where name=N'WK20')
drop database WK20
go

exec xp_cmdshell N'md D:\190372220wk\App_Data'

go
create database WK20 
on primary
(
name=N'WK_20_data',
filename=N'D:\190372220wk\App_Data\WK20_data.mdf',
size=5MB,
maxsize=10gb,
filegrowth=10%
)
log on
(
name=N'WK_20_log',
filename=N'D:\190372220wk\App_Data\WK20_log.ldf',
size=5MB,
maxsize=10gb,
filegrowth=10%
)
go