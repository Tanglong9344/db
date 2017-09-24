# MySQL 常用函数 <h3 id="abstract"></h3>
### 目录
+ [获取当前时间](#getCuttentTime)
---
### 测试表 <h3 id="testTable"></h3>
+ [测试表1](#testTable1)

----

+ ### <h3 id="getCurrentTime">获取当前时间</h3> [返回目录](#abstract)
```
select now() as '当前时间' from test.grades;
```
### 执行结果
![getCurrentTime](https://github.com/Tanglong9344/SQL/blob/master/MySQLBO/picture/getCurrentTime.png)
----

+ ### <h3 id="testTable1">测试表1</h3> [返回目录](#testTable)
```
# Host: 127.0.0.1  (Version 5.7.18)
# Date: 2017-09-20 21:38:18
# Generator: MySQL-Front 6.0  (Build 2.20)
#
# Structure for table "grades"
#
CREATE TABLE `grades` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '学生姓名',
  `subject` varchar(255) DEFAULT '' COMMENT '学科类别',
  `score` varchar(255) DEFAULT NULL COMMENT '学生的成绩',
  PRIMARY KEY (`Id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COMMENT = '学生成绩';
#
# Data for table "grades"
#
INSERT
  INTO `grades`
VALUES
  (2, '小明', '数学', '100'),
  (3, '小明', '语文', '98'),
  (4, '小明', '英语', '96'),
  (8, '小黑', '语文', '68'),
  (9, '小黑', '英语', '66'),
  (10, '小黑', '数学', '66'),
  (11, '小宏', '语文', '88'),
  (12, '小宏', '英语', '89'),
  (13, '小宏', '数学', '93'),
  (14, '小绿', '语文', '87'),
  (15, '小绿', '英语', '99'),
  (16, '小绿', '数学', '96');
```
### 完成后显示结果
![测试表1](https://github.com/Tanglong9344/SQL/blob/master/MySQLBO/picture/testTable1.png)