# SqlServer 系统表
1. sys.objects
```
系统对象表。
保存当前数据库的对象，如约束、默认值、日志、规则、存储过程等。
type表示对象类型：
C = CHECK 约束

D = 默认值或 DEFAULT 约束

F = FOREIGN KEY 约束

FN = 标量函数

IF = 内嵌表函数

K = PRIMARY KEY 或 UNIQUE 约束

L = 日志

P = 存储过程

R = 规则

RF = 复制筛选存储过程

S = 系统表

TF = 表函数

TR = 触发器

U = 用户表

V = 视图

X = 扩展存储过程
```
2. sys.columns
```
当前数据库所有的字段。
```
3.查询特定对象的所有字段
```sql
select name from sys.columns
	where
	object_id=(
		select object_id from sys.objects
		where name='objectName'
		)
```
