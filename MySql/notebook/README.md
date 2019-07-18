# Mysql笔记
+ null转为0
```sql
select IFNULL(sum(score),0) from score
```
+ mysql显示时间与实际时间相差8小时
```
将serverTimezone=UTC修改为serverTimezone=GMT%2B8
```
