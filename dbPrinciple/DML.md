### DML(Data Manipulation Language)
#### 关键字：insert update delete select
+ 插入数据|INSERT INTO
	1. 基本格式:
	```
	INSERT INTO<表名>[(<属性名清单>)]
	VALUES(<常量清单>)[,(<常量清单>)];
	```
	2. 说明:
	```
	可以同时插入多条数据
	```
	3. 示例：向Employee表中插入一条数据
	```
	INSERT
	  INTO `Employee`
	  (`Eno`, `Ename`, `Sex`, `Age`, `Is_Marry`, `Title`, `Dno`)
	VALUES
	  ('001', '唐龙', '男', '66', '0', '工程师', '01');
	```
	---
	![insert.PNG](/picture/insert.PNG)
	---
+ 修改数据|UPDATE
	1. 基本格式:
	```
	UPDATE<表名>
	SET <列名>=<表达式>[,<列名>=<表达式>]
	[WHERE<条件>];
	```
	2. 说明:
	```
	若无WHERE条件则修改全部数据
	```
	3. 示例：
	```
	# 将姓名为'唐龙'的数据的姓名修改为'唐小龙'
	UPDATE `Employee` 
	SET `Ename` = '唐小龙'
	WHERE `Ename` = '唐龙'
	```
	---
	![update.PNG](/picture/update.PNG)
	---
+ 删除数据|DELETE FROM
	1. 基本格式:
	```
	DELETE FROM<表名>
	[WHERE<条件>]
	```
	2. 说明:
	```
	若无WHERE条件则删除全部数据
	```
	3. 示例：
	```
	# 删除职工号为'001'的数据
	DELETE FROM `Employee`
	WHERE `Eno` = '001'
	```
	---
	![delete.PNG](/picture/delete.PNG)
	---
+ 数据的查询|SELECT
	1. 基本格式:
	```
	SELECT[DISTINCT|ALL]<目标列表达式[[AS] 别名]清单> FROM<关系名>
	[WHERE<条件表达式>]
	GROUP BY<列名清单>[HAVING<条件表达式>]
	ORDER BY<列名[ASC|DESC]清单>;
	```
	2. 说明:
	```
	DISTINCT:重复元组只输出一条
	ALL:输出全部数据(默认ALL)
	<条件表达式>:
	1.比较运算符:=,>,>=,<,<=,<>
	2.特殊运算符:
	(IN)|(NOT IN),(BETWEEN...AND...)|(NOT BETWEEN...AND...),
	(IS NULL)|(IS NOT NULL),(LIKE)|(NOT LIKE)，EXISTS
	3.多条件查询:<条件表达式>NOT|AND|OR<条件表达式>
	GROUP BY:将查询结果根据GROUP BY<列名清单>中的值进行分组且只有满足HAVING条件的组才能输出。
	当SELECT的<目标列表达式[[AS] 别名]清单>中有集函数时才使用GROUP BY子句。
	对查询结果分组的目的是为了细化集函数的作用对象。
	ORDER BY:首先按第一列排序，第一列相同按照下一列排序(默认ASC)。
	3,
	```
	3. 示例：
	```
	# 检索职工号为'001'的数据
	SELECT
	  `Ename` AS '姓名',
	  `Sex` AS '性别',
	  `Age` AS '年龄',
	  `Dno` AS '部门',
	  `Title` AS '职位'
	FROM
	  `Employee`
	WHERE
	  `Eno` = '001'
	```
	---
	![select.PNG](/picture/select.PNG)
	---
	+ 集函数
		1. COUNT([DISTINCT|ALL]*):统计结果中元组个数
		2. COUNT([DISTINCT|ALL]<列名>):统计结果中某列值的个数
		3. MAX(<列名>):计算一列中的最大值
		4. <MAIN></MAIN>(<列名>):计算一列中的最小值
		5. SUM([DISTINCT|ALL]<列名>):计算一列中数值的和
		6. AVG([DISTINCT|ALL]<列名>):计算一列中数值的平均值
	+ GROUP BY示例：
	```
	# 获取各部门的平均年龄数据
	SELECT Dno AS '部门',AVG(Age) AS '平均年龄'
	FROM Employee
	GROUP BY Dno;
	```
	---
	![gb1.PNG](/picture/gb1.PNG)
	---
	```
	# 获取各部门的平均年龄<40的数据
	SELECT Dno AS '部门',AVG(Age) AS '平均年龄'
	FROM Employee
	GROUP BY Dno
	HAVING AVG(Age)<40;
	```
	---
	![gb2.PNG](/picture/gb2.PNG)
	---
	+ 多关系连接查询|JOIN
		1. 交叉连接(CROSS JOIN):
		SELECT[DISTINCT|ALL]<目标列表达式[[AS] 别名]清单> FROM<关系名[别名]清单>
		2. 内部连接(INNER JOIN)
		SELECT[DISTINCT|ALL]<目标列表达式[[AS] 别名]清单> FROM<关系名1[别名1]>
		INNER JOIN <关系名2[别名2]>
		ON<连接条件表达式>
		或者
		SELECT[DISTINCT|ALL]<目标列表达式[[AS] 别名]清单> FROM<关系名[别名]清单>
		WHERE<连接条件表达式>
		3. 外部连接(OUTER CROSS):左外连接，右外连接，全外连接。
		4. 自身连接(SELF JOIN):使用别名实现。
+ 多个SELECT语句的集合操作(默认消除重复元组,不同的DBMS实现不同)
	1. <SELECT语句>UNION<SELECT语句> 并操作
	2. <SELECT语句>INTERSECT<SELECT语句> 交操作
	3. <SELECT语句>EXCEPT|MINUS<SELECT语句> 差操作