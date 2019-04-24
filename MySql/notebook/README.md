# Mysql笔记
+ null转为0
```sql
select IFNULL(sum(score),0) from score
```
