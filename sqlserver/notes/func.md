# sql 方法
+ 类型转换
```sql
select * from table_name
order by
cast(col_name as int) -- 转为int
```
+ 日期格式化输出(yyyy-MM-dd HH:mm:ss)
```sql
CONVERT(varchar(100),getdate(),20) as dateStr
```
