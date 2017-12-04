# 表的连接
+ WHERE从句尽可能早地执行，尽量缩小其作用范围
	+ employee 表
	---
	![select1.PNG](pictures/select1.PNG)
	---
	+ mysql_test 表
	---
	![select2.PNG](pictures/select2.PNG)
	---
	+ 笛卡尔积
	---
	![join0.PNG](pictures/join0.PNG)
	---
	+ 优化
	```
	# 优化前
	SELECT * FROM `mysql_test` m,`employee` e
	WHERE `e`.`Ename` = '王小' AND `m`.`name` LIKE '小%';

	# 优化后
	SELECT * FROM
	  (SELECT * FROM `employee` e WHERE `e`.`Ename` = '王小') n1
	    JOIN 
		(SELECT * FROM `mysql_test` m WHERE `m`.`name` LIKE '小%') n2;
	```
	---
	![join1.PNG](pictures/join1.PNG)
	---
