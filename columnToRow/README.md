### 创建表并插入数据
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
### 执行结果
---
  ![createTable](https://github.com/Tanglong9344/SQL/blob/master/columnToRow/picture/createTable.png)

 ### MySQL实现行列转换
 ```
 -- 行列转换使用MAX()函数
SELECT
  `name` AS '姓名', 
  MAX(CASE `subject` WHEN '语文' THEN `score` ELSE 0 END) AS '语文', 
  MAX(CASE `subject` WHEN '英语' THEN `score` ELSE 0 END) AS '英语', 
  MAX(CASE `subject` WHEN '数学' THEN `score` ELSE 0 END) AS '数学'
FROM
  `grades` g
GROUP BY
  `g`.`name`
ORDER BY `g`.`name`
```
---
```
---行列转换使用SUM()函数，（null 和 0 没有影响）
SELECT
 `name` AS '姓名', 
 SUM(CASE `subject` WHEN '语文' THEN `score` ELSE null END) AS '语文', 
 SUM(CASE `subject` WHEN '英语' THEN `score` ELSE null END) AS '英语', 
 SUM(CASE `subject` WHEN '数学' THEN `score` ELSE null END) AS '数学'
FROM
 `grades` g
GROUP BY
 `g`.`name`
ORDER BY `g`.`name`
````
### 执行结果
---
  ![columnToRow1](https://github.com/Tanglong9344/SQL/blob/master/columnToRow/picture/columnToRow1.png)

### Orcal实现行列转换
```
 -- 行列转换
SELECT`name` AS '姓名', 
sum(decode(subject,'语文', score,0)) as '语文',
sum(decode(subject,'数学', score,0)) as '数学',
sum(decode(subject,'英语', score,0)) as '英语'
FROM `grades` g
GROUP BY `g`.`name`
ORDER BY `g`.`name`
```
