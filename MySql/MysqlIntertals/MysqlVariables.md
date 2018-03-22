# Mysql 变量
+ 所有变量
```mysql
show variables;
```
---
![allVariables.png](pictures/allVariables.png)
+ 自动提交(默认开启)
```mysql
# show the state of 'autocommit'
show variables like 'autocommit';
# close autocommit
set autocommit = 1;
```
---
![autocommit.png](pictures/autocommit.png)
+ 事务独立型
```mysql
show variables like  '%isolation%' 
# innodb_default_row_format = fixed
# 每行使用定长存储
```
---
![transaction_isolation.png](pictures/transaction_isolation.png)
+ 表状态
```mysql
show table status like 'user' # \G只有在cmd终端下可用
```
---
![tableStatus.png](pictures/tableStatus.png)
+ 计数器
```mysql
show status like 'queries'; # 显示回话级别的计数器
show global status; # 显示服务器级别的计数器
```
+ 行格式
```mysql
show variables like '%format%';
```
---
![rowFormat.png](pictures/rowFormat.png)
+ 表的大小
```mysql
show variables like '%table_size%';
```
---
![tableSize.png](pictures/tableSize.png)