# Mysql笔记
+ null转为0
```sql
select IFNULL(sum(score),0) from score
```
+ mysql显示时间与实际时间相差8小时
```
将serverTimezone=UTC修改为serverTimezone=GMT%2B8或者serve(北京时间=格林威治时间+8小时)
```
+ 数据按天显示
```sql
select DATE_FORMAT(u.create_time,'%Y-%m-%d') as day,IFNULL(sum(u.id),0) as sum_id from user u
where u.deleted=0
group by day;
```
+ 命令行执行sql文件
```
1. use database
2. source test.sql
```
