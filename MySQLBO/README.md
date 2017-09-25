# MySQL 常用函数和操作 <h3 id="abstract"></h3>
### 目录
+ [获取当前时间](#getCuttentTime)
+ [year()函数+month()函数+floor()函数](#yearMonthFloor)
+ [replace()函数](#replace)
+ [UNION连接符](#union)

---

### 测试表 <h3 id="testTable"></h3>
+ [测试表1](#testTable1)

----

+ ### <h3 id="getCuttentTime">获取当前时间</h3> [返回目录](#abstract)
```
# 使用now()函数

select now() as '当前时间' from test.mysql_test;
```
### 执行结果
![getCurrentTime](https://github.com/Tanglong9344/SQL/blob/master/MySQLBO/picture/getCurrentTime.png)

----

```
# 使用sysdate()函数

SELECT SYSDATE() as '当前时间' FROM `test`.`mysql_test` t
```
### 执行结果
![getCurrentTime2](https://github.com/Tanglong9344/SQL/blob/master/MySQLBO/picture/getCurrentTime2.png)

----

```
# 使用curdate()函数 获取日期

SELECT curdate() as '当前时间' FROM `test`.`mysql_test` t
```
### 执行结果
![getCurrentTime3](https://github.com/Tanglong9344/SQL/blob/master/MySQLBO/picture/getCurrentTime3.png)

----

```
# 使用curtime()函数

SELECT curtime() as '当前时间' FROM `test`.`mysql_test` t
```
### 执行结果
![getCurrentTime4](https://github.com/Tanglong9344/SQL/blob/master/MySQLBO/picture/getCurrentTime4.png)

----

+ ### <h3 id="yearMonthFloor">year()函数+month()函数+floor()函数</h3> [返回目录](#abstract)
```
# year 获取两个日期间地年数
# month 获取两个日期间地月数
# floor 向下取整

SELECT
  `t`.`name` AS '姓名', 
  (YEAR(NOW()) - YEAR(`t`.`birth_date`)) +
   FLOOR((MONTH(NOW()) -
   MONTH(`t`.`birth_date`)) / 12) AS '年龄'
FROM
  `test`.`mysql_test` t
```
### 执行结果
![yearMonthFloor](https://github.com/Tanglong9344/SQL/blob/master/MySQLBO/picture/yearMonthFloor.png)

----

+ ### <h3 id="replace">replace()函数</h3> [返回目录](#abstract)
```
# 参数1 表示替换的列名
# 参数2 表示需要替换的内容
# 参数3 表示替换的目标内容

SELECT REPLACE(`t`.`name`, ('小'), '*' as '隐藏的姓名' FROM `test`.`mysql_test` t
```
### 执行结果
![replace](https://github.com/Tanglong9344/SQL/blob/master/MySQLBO/picture/replace.png)

---

+ ### <h3 id="union">UNION连接符</h3> [返回目录](#abstract)
```
SELECT `t`.`name` FROM `test`.`mysql_test` t
UNION
(SELECT `t`.`birth_date` FROM `test`.`mysql_test` t);
```
### 执行结果
![union](https://github.com/Tanglong9344/SQL/blob/master/MySQLBO/picture/union.png)

---

+ ### <h3 id="testTable1">测试表1</h3> [返回目录](#testTable)
```
# Host: 127.0.0.1  (Version 5.7.18)
# Date: 2017-09-24 15:03:09
# Generator: MySQL-Front 6.0  (Build 2.20)
#
# Structure for table "mysql_test"
#
CREATE TABLE `mysql_test` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '姓名',
  `birth_date` date NOT NULL DEFAULT '0000-00-00' COMMENT '出生日期',
  `study_date` varchar(255) DEFAULT NULL COMMENT '入学日期',
  PRIMARY KEY (`Id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COMMENT = 'MySQL测试表';
#
# Data for table "mysql_test"
#
INSERT
  INTO `mysql_test`
VALUES
  (1, '小明', '1998-05-06', '2004-09-01'),
  (2, '大明', '1999-11-06', '2004-09-01'),
  (3, '小黑', '1998-08-26', '2003-09-01'),
  (4, '小白', '1998-10-21', '2005-09-01'),
  (5, '曹操', '1668-03-06', '1668-03-06'),
  (6, '刘备', '1663-05-02', '1668-05-06');
```
### 完成后显示结果
![测试表1](https://github.com/Tanglong9344/SQL/blob/master/MySQLBO/picture/testTable1.png)