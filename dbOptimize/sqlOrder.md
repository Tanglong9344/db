# SQL语句执行顺序
1.  FROM：对FROM子句中的两个表执行笛卡尔积生成虚表t1
2.  ON:对t1表应用ON筛选条件，只有满足<ON连接条件>的数据才被插入t2
3.  OUTER(join)：如果指定了OUTER JOIN将保留表中未找到的行作为外部行添加到t2生成表t3
4.  如果from包含两个以上的表则对上一个连接生成的表和下一个表重复执行步骤1，2,3
5.  WHERE：对t3应用 WHERE 筛选条件，只有满足<WHERE选择条件>的数据才被插入表t4
6.  GROUP BY：按GROUP BY子句中的列列表对t4中的行分组生成t5
8.  HAVING：对t5应用HAVING筛选条件只有满足<HAVING条件>的数据才插入t6
9.  SELECT：处理select列表产生t7
10. DISTINCT：将重复的行从t7中去除产生t8
11. ORDER BY：将t8的行按order by子句中的列列表排序生成一个游标t9
12. TOP：从t9的开始处选择指定数量或比例的行生成t10并返回。